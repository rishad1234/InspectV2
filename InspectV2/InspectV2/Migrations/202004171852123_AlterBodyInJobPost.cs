namespace InspectV2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AlterBodyInJobPost : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.JobPosts", "Body", c => c.String(nullable: false));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.JobPosts", "Body", c => c.String(nullable: false, maxLength: 400));
        }
    }
}
