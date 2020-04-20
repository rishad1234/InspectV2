namespace InspectV2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AlterBodyEvents : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.Events", "Body", c => c.String(nullable: false));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.Events", "Body", c => c.String(nullable: false, maxLength: 1500));
        }
    }
}
