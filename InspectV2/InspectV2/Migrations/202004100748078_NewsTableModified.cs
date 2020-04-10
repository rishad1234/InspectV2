namespace InspectV2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class NewsTableModified : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.News", "Title", c => c.String(nullable: false, maxLength: 1000));
            AlterColumn("dbo.News", "Excerpt", c => c.String(nullable: false, maxLength: 1000));
            AlterColumn("dbo.News", "Body", c => c.String(nullable: false, maxLength: 2000));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.News", "Body", c => c.String(nullable: false, maxLength: 1000));
            AlterColumn("dbo.News", "Excerpt", c => c.String(nullable: false, maxLength: 255));
            AlterColumn("dbo.News", "Title", c => c.String(nullable: false, maxLength: 255));
        }
    }
}
