﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
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
    // 状态  枚举值 的下拉列表 跟   取值 出处
    //  单据的 编码规则不能为空  最后时间值 必须在某个范围。时间为空值 处理
    public partial class FormProcess : Office2007Form
    {
        private SpareEntities _db = EntitiesFactory.CreateSpareInstance();
        public FormProcess()
        {
            InitializeComponent();
            bs.DataSource = _db.TA_PROCESS.ToList();
            grid.PrimaryGrid.DataSource = bs;
            bn.BindingSource = bs;
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            gcWorkshop.EditorType = typeof (WorkshopComboBoxList);
            gcProcess.EditorType = typeof (ProcessComboBoxList);
            foreach (GridColumn column in grid.PrimaryGrid.Columns)
            {
                column.MinimumWidth = 100;
            }
//            grid.PrimaryGrid.ColumnAutoSizeMode = ColumnAutoSizeMode.Fill;
        }
        private  void btnSave_Click(object sender, EventArgs e)
        {
            bs.EndEdit();
            var detailList = (List<TA_PROCESS>) bs.DataSource;
            TL_BASEDATA log=null;
            
            foreach (TA_PROCESS storeWhse in _db.TA_PROCESS)
            {

                if (detailList.All(p => p.OwendProcessCode != storeWhse.OwendProcessCode))
                    _db.TA_PROCESS.Remove(storeWhse);
                
                OperateType logType;
                string oldValue, newValue;
                DbEntityEntry<TA_PROCESS> entry;

                try
                {
                    entry = _db.Entry(storeWhse);
                 
                }
                catch (Exception ex)
                {
                    
                    MessageHelper.ShowInfo(ex.ToString());
                    _db = EntitiesFactory.CreateSpareInstance();
                    bs.DataSource = _db.TA_PROCESS.ToList();
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
//                        _db.TA_DEPT.Remove(storeWhse);
                        break;
                    case EntityState.Modified:
                        logType = OperateType.Update;
                        oldValue = GetValues(entry.OriginalValues);
                        newValue = GetValues(entry.CurrentValues);
//                        _db.TA_DEPT.Attach(storeWhse);
                        break;
                    default:
                        throw new ArgumentOutOfRangeException();
                }
               log= BaseDataLogController.Add(_db,dataType,oldValue,newValue,"",logType);
            }
            foreach (var detail in detailList.Where(detail => !_db.TA_PROCESS.Any(p => p.OwendProcessCode == detail.OwendProcessCode)))
            {
                _db.TA_PROCESS.Add(detail);
                var entry = _db.Entry(detail);
                var dataType = entry.Entity.GetType().Name;
                var logType = OperateType.Add;
                var oldValue = "";
                var newValue = GetValues(entry.CurrentValues);
               log= BaseDataLogController.Add(_db, dataType, oldValue, newValue, GlobalVar.Oper.OperName, logType);
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



        private void grid_DataError(object sender, DevComponents.DotNetBar.SuperGrid.GridDataErrorEventArgs e)
        {
            grid.PrimaryGrid.ActiveCell.CancelEdit();
        }

        

        private void grid_CellValueChanged(object sender, GridCellValueChangedEventArgs e)
        {
            GridCell cell = e.GridCell;
            var row = (GridRow)e.GridPanel.Rows[cell.RowIndex];
            if (cell.GridColumn == gcWorkshop)
            {
                if (Convert.ToString(row.Cells[gcWorkshop].Value) != "" )
                {
                    row[gcProcess].EditorType = typeof(ProcessComboBoxSelect);
                    string n = row.Cells[gcWorkshop].Value.ToString();
                    var db = EntitiesFactory.CreateSpareInstance();
                    var list =
                        new  List<TA_PROCESS>(db.TA_PROCESS.Where(p => p.OwnedWorkshopCode == n).ToList());
                    row[gcProcess].EditorParams = new object[] { list };
                    if (row.Cells[gcProcess].Value!=null)
                    {
                        string pro = row.Cells[gcProcess].Value.ToString();
                        if (list.All(p => p.OwendProcessCode != pro))
                        {
                            row.Cells[gcProcess].Value = "";
                        }
                    }
                   
                }
            }
        }
    }

    public class WorkshopComboBoxList : GridComboBoxExEditControl
    {
        public WorkshopComboBoxList()
        {
            var db = EntitiesFactory.CreateSpareInstance();

            DataSource = new BindingList<TA_WORKSHOP>(db.TA_WORKSHOP.ToList());
            DisplayMember = "WorkshopName";
            ValueMember = "OwnedWorkshopCode";
        }
    }

    public class ProcessComboBoxList : GridComboBoxExEditControl
    {
        public ProcessComboBoxList()
        {
            var db = EntitiesFactory.CreateSpareInstance();
            // db.TA_PROCESS.ToList()
            DataSource = new BindingList<TA_PROCESS>(db.TA_PROCESS.ToList());
            DisplayMember = "ProcessName";
            ValueMember = "OwendProcessCode"; 
        }
    }
//
//    public class ProcessComboBoxSelect : GridComboBoxExEditControl
//    {
//        //        private int num; BindingList
//        public ProcessComboBoxSelect(List<TA_PROCESS> list)
//        {
//            
//            DataSource = list;
//            DisplayMember = "ProcessName";
//            ValueMember = "OwendProcessCode";
//        }
//    }
}
