namespace InspectV2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class EditNewsBody : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.News", "Body", c => c.String(nullable: false));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.News", "Body", c => c.String(nullable: false, maxLength: 2000));
        }
    }
}
