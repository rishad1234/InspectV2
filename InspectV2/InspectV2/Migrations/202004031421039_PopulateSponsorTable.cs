namespace InspectV2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class PopulateSponsorTable : DbMigration
    {
        public override void Up()
        {
            Sql("Insert into Sponsors (Sponsorship) values ('True')");
            Sql("Insert into Sponsors (Sponsorship) values ('False')");
        }
        
        public override void Down()
        {
        }
    }
}
