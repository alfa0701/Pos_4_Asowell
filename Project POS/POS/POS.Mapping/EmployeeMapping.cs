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

    // Employee
    [System.CodeDom.Compiler.GeneratedCode("EF.Reverse.POCO.Generator", "2.33.0.0")]
    public partial class EmployeeMapping : System.Data.Entity.ModelConfiguration.EntityTypeConfiguration<Employee>
    {
        public EmployeeMapping()
            : this("dbo")
        {
        }

        public EmployeeMapping(string schema)
        {
            ToTable("Employee", schema);
            HasKey(x => x.EmpId);

            Property(x => x.EmpId).HasColumnName(@"emp_id").HasColumnType("varchar").IsRequired().IsUnicode(false).HasMaxLength(10).HasDatabaseGeneratedOption(System.ComponentModel.DataAnnotations.Schema.DatabaseGeneratedOption.None);
            Property(x => x.Manager).HasColumnName(@"manager").HasColumnType("varchar").IsRequired().IsUnicode(false).HasMaxLength(10);
            Property(x => x.Username).HasColumnName(@"username").HasColumnType("varchar").IsRequired().IsUnicode(false).HasMaxLength(50);
            Property(x => x.Pass).HasColumnName(@"pass").HasColumnType("varchar(max)").IsRequired().IsUnicode(false);
            Property(x => x.Name).HasColumnName(@"name").HasColumnType("nvarchar").IsRequired().HasMaxLength(50);
            Property(x => x.Birth).HasColumnName(@"birth").HasColumnType("date").IsRequired();
            Property(x => x.Startday).HasColumnName(@"startday").HasColumnType("date").IsRequired();
            Property(x => x.HourWage).HasColumnName(@"hour_wage").HasColumnType("int").IsRequired();
            Property(x => x.Addr).HasColumnName(@"addr").HasColumnType("nvarchar").IsOptional().HasMaxLength(200);
            Property(x => x.Email).HasColumnName(@"email").HasColumnType("varchar").IsOptional().IsUnicode(false).HasMaxLength(100);
            Property(x => x.Phone).HasColumnName(@"phone").HasColumnType("varchar").IsOptional().IsUnicode(false).HasMaxLength(20);
            Property(x => x.EmpRole).HasColumnName(@"emp_role").HasColumnType("int").IsRequired();
            Property(x => x.Deleted).HasColumnName(@"deleted").HasColumnType("int").IsRequired();
            Property(x => x.EmpCode).HasColumnName(@"emp_code").HasColumnType("varchar(max)").IsOptional();
            Ignore(x => x.DecryptedPass);
            Ignore(x => x.DecryptedCode);

            // Foreign keys
            HasRequired(a => a.AdminRe).WithMany(b => b.Employees).HasForeignKey(c => c.Manager).WillCascadeOnDelete(false); // FK_dbo.Employee_dbo.AdminRes_manager
            InitializePartial();
        }
        partial void InitializePartial();
    }

}
// </auto-generated>
