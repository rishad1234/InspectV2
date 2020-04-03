namespace InspectV2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddJobPostTable : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.JobPosts",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Company = c.String(nullable: false),
                        Position = c.String(nullable: false),
                        Deadline = c.DateTime(nullable: false),
                        Body = c.String(nullable: false, maxLength: 400),
                        Link = c.String(nullable: false),
                        Created_at = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.Id);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.JobPosts");
        }
    }
}
