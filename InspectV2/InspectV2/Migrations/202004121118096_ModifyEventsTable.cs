namespace InspectV2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class ModifyEventsTable : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Events", "Company", c => c.String(nullable: false));
            AddColumn("dbo.Events", "Location", c => c.String(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Events", "Location");
            DropColumn("dbo.Events", "Company");
        }
    }
}
