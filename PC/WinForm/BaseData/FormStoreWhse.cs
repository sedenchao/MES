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
using DevComponents.DotNetBar;
using DevComponents.DotNetBar.SuperGrid;

namespace ChangKeTec.Wms.WinForm.BaseData
{
    public partial class FormStoreWhse : Office2007Form
    {
        private SpareEntities _db = EntitiesFactory.CreateWmsInstance();
        public FormStoreWhse()
        {
            InitializeComponent();
            bs.DataSource = _db.TA_STORE_WHSE.ToList();
            grid.PrimaryGrid.DataSource = bs;
            bn.BindingSource = bs;
        }
        private  void btnSave_Click(object sender, EventArgs e)
        {
            bs.EndEdit();
            var detailList = (List<TA_STORE_WHSE>) bs.DataSource;
            TL_BASEDATA log=null;
            
            foreach (TA_STORE_WHSE storeWhse in _db.TA_STORE_WHSE)
            {

                if (detailList.All(p => p.WhseCode != storeWhse.WhseCode))
                    _db.TA_STORE_WHSE.Remove(storeWhse);
                //if (detailList.All(p => p.WhseCode != storeWhse.WhseCode))


                    OperateType logType;
                string oldValue, newValue;
                DbEntityEntry<TA_STORE_WHSE> entry;

                try
                {
                    entry = _db.Entry(storeWhse);
                }
                catch (Exception ex)
                {
                    
                    MessageHelper.ShowInfo(ex.ToString());
                    _db = EntitiesFactory.CreateWmsInstance();
                    bs.DataSource = _db.TA_STORE_WHSE.ToList();
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
//                        _db.TA_STORE_WHSE.Remove(storeWhse);
                        break;
                    case EntityState.Modified:
                        logType = OperateType.Update;
                        oldValue = GetValues(entry.OriginalValues);
                        newValue = GetValues(entry.CurrentValues);
//                        _db.TA_STORE_WHSE.Attach(storeWhse);
                        break;
                    default:
                        throw new ArgumentOutOfRangeException();
                }
               log= BaseDataLogController.Add(_db,dataType,oldValue,newValue,"",logType);
            }
            foreach (var detail in detailList.Where(detail => !_db.TA_STORE_WHSE.Any(p => p.WhseCode == detail.WhseCode)))
            {
                _db.TA_STORE_WHSE.Add(detail);
                var entry = _db.Entry(detail);
                var dataType = entry.Entity.GetType().Name;
                var logType = OperateType.Add;
                var oldValue = "";
                var newValue = GetValues(entry.CurrentValues);
               log= BaseDataLogController.Add(_db, dataType, oldValue, newValue, "", logType);
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
                sb.Append( propertyName+":"+values[propertyName]+",");
            }
            return sb.ToString();
        }

        private void grid_MasterGridCellActivated(object sender, DevComponents.DotNetBar.SuperGrid.GridCellActivatedEventArgs e)
        {
            prop.SelectedObject = e.NewActiveCell.GridRow.DataItem;
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            grid.PrimaryGrid.Columns[4].EditorType = typeof(WhseTypeComboBox);
            foreach (GridColumn column in grid.PrimaryGrid.Columns)
            {
                column.MinimumWidth = 100;
            }
            grid.PrimaryGrid.ColumnAutoSizeMode = ColumnAutoSizeMode.Fill;
        }

      
    }
}
