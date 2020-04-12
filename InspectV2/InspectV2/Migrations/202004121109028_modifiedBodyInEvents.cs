namespace InspectV2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class modifiedBodyInEvents : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.Events", "Body", c => c.String(nullable: false, maxLength: 1500));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.Events", "Body", c => c.String(nullable: false, maxLength: 300));
        }
    }
}
