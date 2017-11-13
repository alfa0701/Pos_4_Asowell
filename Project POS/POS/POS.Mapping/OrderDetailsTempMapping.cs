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

    // OrderDetailsTemp
    [System.CodeDom.Compiler.GeneratedCode("EF.Reverse.POCO.Generator", "2.33.0.0")]
    public partial class OrderDetailsTempMapping : System.Data.Entity.ModelConfiguration.EntityTypeConfiguration<OrderDetailsTemp>
    {
        public OrderDetailsTempMapping()
            : this("dbo")
        {
        }

        public OrderDetailsTempMapping(string schema)
        {
            ToTable("OrderDetailsTemp", schema);
            HasKey(x => new { x.OrdertempId, x.ProductId });

            Property(x => x.OrdertempId).HasColumnName(@"ordertemp_id").HasColumnType("varchar").IsRequired().IsUnicode(false).HasMaxLength(10).HasDatabaseGeneratedOption(System.ComponentModel.DataAnnotations.Schema.DatabaseGeneratedOption.None);
            Property(x => x.ProductId).HasColumnName(@"product_id").HasColumnType("varchar").IsRequired().IsUnicode(false).HasMaxLength(10).HasDatabaseGeneratedOption(System.ComponentModel.DataAnnotations.Schema.DatabaseGeneratedOption.None);
            Property(x => x.ChairId).HasColumnName(@"chair_id").HasColumnType("varchar").IsOptional().IsUnicode(false).HasMaxLength(10);
            Property(x => x.SelectedStats).HasColumnName(@"SelectedStats").HasColumnType("nvarchar(max)").IsOptional();
            Property(x => x.Quan).HasColumnName(@"quan").HasColumnType("int").IsRequired();
            Property(x => x.Note).HasColumnName(@"note").HasColumnType("varchar").IsOptional().IsUnicode(false).HasMaxLength(500);

            // Foreign keys
            HasOptional(a => a.Chair).WithMany(b => b.OrderDetailsTemps).HasForeignKey(c => c.ChairId).WillCascadeOnDelete(false); // fk_chair_id_orderdetailtemp
            HasRequired(a => a.OrderTemp).WithMany(b => b.OrderDetailsTemps).HasForeignKey(c => c.OrdertempId).WillCascadeOnDelete(false); // fk_ordertemp_id_orderdetailtemp
            HasRequired(a => a.Product).WithMany(b => b.OrderDetailsTemps).HasForeignKey(c => c.ProductId).WillCascadeOnDelete(false); // fk_product_id_orderdetailtemp
            InitializePartial();
        }
        partial void InitializePartial();
    }

}
// </auto-generated>
