namespace InspectV2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddTimeToEvent : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Events", "EventTime", c => c.String(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Events", "EventTime");
        }
    }
}
