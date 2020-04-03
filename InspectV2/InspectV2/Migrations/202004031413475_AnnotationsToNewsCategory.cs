namespace InspectV2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AnnotationsToNewsCategory : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.NewsCategories", "CategoryName", c => c.String(nullable: false));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.NewsCategories", "CategoryName", c => c.String());
        }
    }
}
