//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SpecLab.Business.Database
{
    using System;
    using System.Collections.Generic;
    
    public partial class TubeSample
    {
        public TubeSample()
        {
            this.ExportDetails = new HashSet<ExportDetail>();
            this.ImportDetails = new HashSet<ImportDetail>();
            this.RemovalDetails = new HashSet<RemovalDetail>();
            this.SampleHistories = new HashSet<SampleHistory>();
        }
    
        public string TubeId { get; set; }
        public string SampleSpecId { get; set; }
        public int TubeOrder { get; set; }
        public int SampleType { get; set; }
        public int Status { get; set; }
        public double Volume { get; set; }
        public string StorageId { get; set; }
        public int LocationNum { get; set; }
        public int NumberExport { get; set; }
        public System.DateTime CreateDate { get; set; }
        public System.DateTime UpdateDate { get; set; }
        public int TubeType { get; set; }
    
        public virtual SampleSpec SampleSpec { get; set; }
        public virtual Storage Storage { get; set; }
        public virtual ICollection<ExportDetail> ExportDetails { get; set; }
        public virtual ICollection<ImportDetail> ImportDetails { get; set; }
        public virtual ICollection<RemovalDetail> RemovalDetails { get; set; }
        public virtual ICollection<SampleHistory> SampleHistories { get; set; }
    }
}
