namespace InspectV2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class PopulateJobPostTable : DbMigration
    {
        public override void Up()
        {
            Sql("INSERT INTO JobPosts (company, position, deadline, body, link, created_at) VALUES('NewsCreed', 'Inbound Product Manager', '2019-10-25', '<ul>\r\n <li>Work with designers and engineers to conceptualize and document new features and\r\n products.\r\n </li>\r\n <li>\r\n Organize and lead cross-functional agile software development teams.\r\n </li>\r\n <li>Moderate ideation of new products and features.</li>\r\n <li>Contribute to strategic decisions with the product and executive teams.</li>\r\n <li>Provide support to NewsCred sales & marketing teams during new business development,\r\n client support challenges and creation of product marketing collateral.</li>\r\n <li>Measure adoption of capabilities across its lifecycle from concept to launch to maturity\r\n </li>\r\n <li>Give and solicit feedback from other team members with the aim of producing the highest\r\n quality work.</li>\r\n <li>Academic background in Engineering, Computer Science, Electrical/Computer Engineering or\r\n a related field (or substantial relevant experience).</li>\r\n <li>Minimum of 3-5 years in product management.</li>\r\n <li>Proven expertise in Agile software development processes.</li>\r\n </ul>', 'https://www.newscred.com/careers/?gh_jid=1651744', '2019-10-11')");
            Sql("INSERT INTO JobPosts (company, position, deadline, body, link, created_at) VALUES('bKash', 'Quality Assurance, Technology', '2019-10-25', ' <ul>\r\n <li>Responsible for the quality assurance of bKash products and systems, include Android/iOS\r\n APP, web APIs, server side applications.\r\n </li>\r\n <li>\r\n Make project test plan, manage project quality risk.\r\n </li>\r\n <li>Participate in testing tools and platform development and maintenance.</li>\r\n </ul>', 'https://www.linkedin.com/jobs/view/1506008542/', '2019-10-10')");
        }
        
        public override void Down()
        {
        }
    }
}
