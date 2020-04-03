namespace InspectV2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddNewsTable : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.News",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Title = c.String(nullable: false, maxLength: 255),
                        Excerpt = c.String(nullable: false, maxLength: 255),
                        Body = c.String(nullable: false, maxLength: 1000),
                        Image = c.String(),
                        Created_at = c.DateTime(nullable: false),
                        NewsCategory_Id = c.Int(),
                        Sponsor_Id = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.NewsCategories", t => t.NewsCategory_Id)
                .ForeignKey("dbo.Sponsors", t => t.Sponsor_Id)
                .Index(t => t.NewsCategory_Id)
                .Index(t => t.Sponsor_Id);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.News", "Sponsor_Id", "dbo.Sponsors");
            DropForeignKey("dbo.News", "NewsCategory_Id", "dbo.NewsCategories");
            DropIndex("dbo.News", new[] { "Sponsor_Id" });
            DropIndex("dbo.News", new[] { "NewsCategory_Id" });
            DropTable("dbo.News");
        }
    }
}
