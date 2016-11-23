﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Linq.Expressions;
using System.Windows.Forms;
using ChangKeTec.Wms.Common;
using ChangKeTec.Wms.Common.UC;
using ChangKeTec.Wms.Models;
using ChangKeTec.Wms.Utils;
using ChangKeTec.Wms.WinForm.PopUp;
using ChangKeTec.Wms.WinForm.Util;
using DevComponents.DotNetBar;

namespace ChangKeTec.Wms.WinForm.Logs
{
    public partial class FormBillLog : Office2007Form
    {
        private SpareEntities _db = EntitiesFactory.CreateWmsInstance();
        public FormBillLog()
        {
            InitializeComponent();
        }




        private void FormLog_Load(object sender, EventArgs e)
        {
            GetLogList();
        }

        private void GetLogList()
        {
            SetInterfaceHisMasterDataSource(grid.PageSize);
        }

   
        private void SetInterfaceHisMasterDataSource(int pageSize)
        {
            Expression<Func<TL_BILL, dynamic>> select =
                c =>
                    new
                    {
                        c.UID,
                        操作员=c.OperName,
                        日志时间=c.LogTime,
                        日志类型=c.LogType,
                        单据编号=c.BillNum,
                        单据类型=c.BillType,
                        日志信息 = c.Message,
                    };
            Expression<Func<TL_BILL, bool>> where = c => true;
            Expression<Func<TL_BILL, long>> order = c => c.UID;

            int total;
            grid.MasterDataSource = EniitiesHelper.GetPagedDataAsc(_db,
                select,
                where,
                order,
                grid.PageIndex, grid.PageSize, out total);
            if (grid.Total != total) grid.Total = total;
            if (grid.PageSize != pageSize)
                grid.PageSize = pageSize;
        }


        private void ItemBtnExport_Click(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            DataTable dt = DataGridViewHelper.DgvToTable(grid.MasterPrimaryGrid, "OperLog");
            ds.Tables.Add(dt);
            ExcelWriter.Write(ds);
        }

        private void gridInterfaceHis_DataRefreshed(object sender, CktMasterDetailGrid.QtyEventArgs e)
        {
            SetInterfaceHisMasterDataSource(e.PageSize);
        }

        private void gridInterfaceHis_PageSelectedIndexChanged(object sender, EventArgs e)
        {
            SetInterfaceHisMasterDataSource(grid.PageSize);
        }
    }
}
