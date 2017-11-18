// <auto-generated>
// ReSharper disable ConvertPropertyToExpressionBody
// ReSharper disable DoNotCallOverridableMethodsInConstructor
// ReSharper disable EmptyNamespace
// ReSharper disable InconsistentNaming
// ReSharper disable PartialMethodWithSinglePart
// ReSharper disable PartialTypeWithSinglePart
// ReSharper disable RedundantNameQualifier
// ReSharper disable RedundantOverridenMember
// ReSharper disable UseNameofExpression
// TargetFrameworkVersion = 4.6
#pragma warning disable 1591    //  Ignore "Missing XML Comment" warning


namespace POS.Mapping
{
    using POS.Entities;

    // OrderNote
    [System.CodeDom.Compiler.GeneratedCode("EF.Reverse.POCO.Generator", "2.33.0.0")]
    public partial class OrderNoteMapping : System.Data.Entity.ModelConfiguration.EntityTypeConfiguration<OrderNote>
    {
        public OrderNoteMapping()
            : this("dbo")
        {
        }

        public OrderNoteMapping(string schema)
        {
            ToTable("OrderNote", schema);
            HasKey(x => x.OrdernoteId);

            Property(x => x.OrdernoteId).HasColumnName(@"ordernote_id").HasColumnType("varchar").IsRequired().IsUnicode(false).HasMaxLength(10).HasDatabaseGeneratedOption(System.ComponentModel.DataAnnotations.Schema.DatabaseGeneratedOption.None);
            Property(x => x.CusId).HasColumnName(@"cus_id").HasColumnType("varchar").IsOptional().IsUnicode(false).HasMaxLength(10);
            Property(x => x.EmpId).HasColumnName(@"emp_id").HasColumnType("varchar").IsOptional().IsUnicode(false).HasMaxLength(10);
            Property(x => x.Ordertable).HasColumnName(@"ordertable").HasColumnType("int").IsRequired();
            Property(x => x.Ordertime).HasColumnName(@"ordertime").HasColumnType("datetime").IsRequired();
            Property(x => x.TotalPrice).HasColumnName(@"total_price").HasColumnType("money").IsRequired().HasPrecision(19,4);
            Property(x => x.CustomerPay).HasColumnName(@"customer_pay").HasColumnType("money").IsRequired().HasPrecision(19,4);
            Property(x => x.PayBack).HasColumnName(@"pay_back").HasColumnType("money").IsRequired().HasPrecision(19,4);
            Property(x => x.paymentMethod).HasColumnName(@"pay_method").HasColumnType("int").IsOptional();

            // Foreign keys
            HasOptional(a => a.Customer).WithMany(b => b.OrderNotes).HasForeignKey(c => c.CusId).WillCascadeOnDelete(false); // FK_dbo.OrderNote_dbo.Customer_cus_id
            HasOptional(a => a.Employee).WithMany(b => b.OrderNotes).HasForeignKey(c => c.EmpId).WillCascadeOnDelete(false); // FK_dbo.OrderNote_dbo.Employee_emp_id
            InitializePartial();
        }
        partial void InitializePartial();
    }

}
// </auto-generated>
