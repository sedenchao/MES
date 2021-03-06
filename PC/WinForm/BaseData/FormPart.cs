﻿using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Text;
using ChangKeTec.Wms.Common.ComboBox;
using ChangKeTec.Wms.Controllers.Log;
using ChangKeTec.Wms.Models;
using ChangKeTec.Wms.Models.Enums;
using ChangKeTec.Wms.Utils;
using ChangKeTec.Wms.WinForm.PopUp;
using DevComponents.DotNetBar;
using DevComponents.DotNetBar.SuperGrid;

namespace ChangKeTec.Wms.WinForm.BaseData
{
    // 状态  枚举值 的下拉列表 跟   取值 出处
    //  单据的 编码规则不能为空  最后时间值 必须在某个范围。时间为空值 处理
    public partial class FormPart : Office2007Form
    {
        private SpareEntities _db = EntitiesFactory.CreateSpareInstance();
        private GridRow _selectrow;

        public FormPart()
        {
            InitializeComponent();
            bs.DataSource = _db.TA_PART.ToList();
            grid.PrimaryGrid.DataSource = bs;
            bn.BindingSource = bs;
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            gcUnit.EditorType = typeof(UnitComboBox);
            gcBM.EditorType = typeof(BmComboBox);
            gcPartType.EditorType = typeof(PartTypeComboBox);

            foreach (GridColumn column in grid.PrimaryGrid.Columns)
            {
                column.MinimumWidth = 100;
            }
            grid.PrimaryGrid.ColumnAutoSizeMode = ColumnAutoSizeMode.Fill;
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            bs.EndEdit();
            var detailList = (List<TA_PART>) bs.DataSource;
            TL_BASEDATA log = null;
            
            foreach (TA_PART storeWhse in _db.TA_PART)
            {

                if (detailList.All(p => p.UID != storeWhse.UID))
                    _db.TA_PART.Remove(storeWhse);

                OperateType logType;
                string oldValue, newValue;
                DbEntityEntry<TA_PART> entry;

                try
                {
                    entry = _db.Entry(storeWhse);

                }
                catch (Exception ex)
                {
                 
                    MessageHelper.ShowInfo(ex.ToString());
                    _db = EntitiesFactory.CreateSpareInstance();
                    bs.DataSource = _db.TA_PART.ToList();
                    return;
                }
                var dataType = entry.Entity.GetType().Name;
                switch (entry.State)
                {
                    case EntityState.Detached:
                    case EntityState.Unchanged:
                    case EntityState.Added:
                        continue;
                    case EntityState.Deleted:
                        logType = OperateType.Delete;
                        oldValue = GetValues(entry.OriginalValues);
                        newValue = "";
//                        _db.TA_PART.Remove(storeWhse);
                        break;
                    case EntityState.Modified:
                        logType = OperateType.Update;
                        oldValue = GetValues(entry.OriginalValues);
                        newValue = GetValues(entry.CurrentValues);
//                        _db.TA_PART.Attach(storeWhse);
                        break;
                    default:
                        throw new ArgumentOutOfRangeException();
                }
                log = BaseDataLogController.Add(_db, dataType, oldValue, newValue, "", logType);
            }
            foreach (var detail in detailList.Where(detail => !_db.TA_PART.Any(p => p.UID == detail.UID)))
            {
                _db.TA_PART.Add(detail);
                var entry = _db.Entry(detail);
                var dataType = entry.Entity.GetType().Name;
                var logType = OperateType.Add;
                var oldValue = "";
                var newValue = GetValues(entry.CurrentValues);
                log = BaseDataLogController.Add(_db, dataType, oldValue, newValue, "", logType);
            }
            try
            {
                EntitiesFactory.SaveDb(_db);
                grid.PrimaryGrid.PurgeDeletedRows();
                grid.PrimaryGrid.ClearDirtyRowMarkers();
                MessageHelper.ShowInfo("保存成功！");
            }
            catch (Exception ex)
            {
                MessageHelper.ShowInfo(ex.ToString());
                if (log != null)
                    BaseDataLogController.RemoveLocal(_db, log);
            }

        }

        private static string GetValues(DbPropertyValues values)
        {
            var sb = new StringBuilder();
            foreach (var propertyName in values.PropertyNames)
            {
                sb.Append(propertyName + ":" + values[propertyName] + ",");
            }
            return sb.ToString();
        }

        private void grid_MasterGridCellActivated(object sender,
            DevComponents.DotNetBar.SuperGrid.GridCellActivatedEventArgs e)
        {
            prop.SelectedObject = e.NewActiveCell.GridRow.DataItem;
        }


        private void grid_DataError(object sender, DevComponents.DotNetBar.SuperGrid.GridDataErrorEventArgs e)
        {
            grid.PrimaryGrid.ActiveCell.CancelEdit();
        }

        private void grid_CellActivated(object sender, GridCellActivatedEventArgs e)
        {
            prop.SelectedObject = e.NewActiveCell.GridRow.DataItem;
            _selectrow = e.NewActiveCell.GridRow;
        }

        private void btnAttach_Click(object sender, EventArgs e)
        {
            if (_selectrow == null)
            {
                MessageHelper.ShowError("请选择具体的备件信息！");
                return;
            }
            PopupAttach frm = new PopupAttach();
            frm.TableName = "TA_PART";
            frm.TablePKID = Convert.ToInt32(_selectrow[gcUID].Value);
            frm.ShowDialog();
        }

      
    }
}
