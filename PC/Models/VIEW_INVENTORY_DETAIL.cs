//------------------------------------------------------------------------------
// <auto-generated>
//     此代码已从模板生成。
//
//     手动更改此文件可能导致应用程序出现意外的行为。
//     如果重新生成代码，将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace ChangKeTec.Wms.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class VIEW_INVENTORY_DETAIL
    {
        public int UID { get; set; }
        public string 单据号 { get; set; }
        public string 盘点库位 { get; set; }
        public string 零件号 { get; set; }
        public string 批次 { get; set; }
        public decimal 账面数 { get; set; }
        public decimal 盘点数 { get; set; }
        public Nullable<decimal> 差异数 { get; set; }
        public string 盘点时间 { get; set; }
        public string 操作员 { get; set; }
    }
}
