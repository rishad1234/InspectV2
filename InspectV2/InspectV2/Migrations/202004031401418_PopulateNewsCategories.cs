namespace InspectV2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class PopulateNewsCategories : DbMigration
    {
        public override void Up()
        {
            Sql("Insert into NewsCategories (CategoryName) values ('Os Talk')");
            Sql("Insert into NewsCategories (CategoryName) values ('Hardware')");
            Sql("Insert into NewsCategories (CategoryName) values ('Software')");
            Sql("Insert into NewsCategories (CategoryName) values ('Cloud')");
            Sql("Insert into NewsCategories (CategoryName) values ('Skills')");
            Sql("Insert into NewsCategories (CategoryName) values ('Big 5')");
        }
        
        public override void Down()
        {
        }
    }
}
