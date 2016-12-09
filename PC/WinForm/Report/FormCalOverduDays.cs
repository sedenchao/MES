﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Windows.Forms;
using ChangKeTec.Wms.Common;
using ChangKeTec.Wms.Controllers;
using ChangKeTec.Wms.Models;
using ChangKeTec.Wms.Utils;
using DevComponents.DotNetBar;

namespace ChangKeTec.Wms.WinForm.Report
{
    public partial class FormCalOverduDays : Office2007Form
    {
        private List<VIEW_CalOverdue_DAYS> _billList;
        private VIEW_CalOverdue_DAYS _selectedBill;
        public FormCalOverduDays()
        {
            InitializeComponent();
            _billList = new List<VIEW_CalOverdue_DAYS>();
            dgvBill.AutoGenerateColumns = false;
        }



        private void FormLog_Load(object sender, EventArgs e)
        {
            _billList = new List<VIEW_CalOverdue_DAYS>();
            _selectedBill = new VIEW_CalOverdue_DAYS();
            GetBillList();
        }

        private void GetBillList()
        {
            using (SpareEntities db = EntitiesFactory.CreateWmsInstance())
            {
                _billList = ReportViewController.GetOverdueDaysList(db);
                dgvBill.DataSource = ListHelper.ListToDataTable(_billList);
            }
        }

        private void ItemBtnExport_Click(object sender, EventArgs e)
        {
            DataTable dt = DataGridViewHelper.DgvToTable(dgvBill, "VIEW_CalOverdue_DAYS");
            ExcelWriter.Write(dt);
        }

        private void dgvBill_CellEnter(object sender, DataGridViewCellEventArgs e)
        {
//            if (e.ColumnIndex < 0 || e.RowIndex < 0) return;
//            var row = dgvBill.Rows[e.RowIndex];
//            var reportId = row.Cells["PartCode"].Value;
//            if (reportId == null)
//            {
//                return;
//            }
//            _selectedBill = _billList.SingleOrDefault(p => p.零件号 == reportId.ToString());
        }
    }
}