namespace InspectV2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class NewsTablePopulate : DbMigration
    {
        public override void Up()
        {
            Sql("INSERT INTO [dbo].[News] ([Title], [Excerpt], [Body], [Image], [Created_at], [NewsCategory_Id], [Sponsor_Id]) VALUES ('DOJ announces largest international opioid bust targeting drug traffickers, gun runners','Lorem ipsum dolor, sit amet consectetur adipisicing elit. Natus magni odio, esse dolores ea assumenda placeat atque illo nisi quasi in corporis vel odit molestias, porro quae.','Lorem ipsum dolor, sit amet consectetur adipisicing elit. Natus magni odio, esse dolores ea assumenda placeat atque illo nisi quasi in corporis vel odit molestias, porro quae. Dignissimosrepellat ad fugit enim neque repudiandae.<br><br>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aperiam officia culpa omnis tempore est non aliquam obcaecati deleniti perferendis fugiat fugit deserunt voluptatibus error facilis amet aspernatur assumenda, asperiores mollitia similique, eum, esse laborum totam suscipit. Quidem optio porro, omnis numquam libero, obcaecati a quis voluptatum velit natus exercitationem, deleniti ullam dolorem voluptates! Velit tempora id perferendis exercitationem aspernatur, voluptatem ad voluptate facere vel sint quae minima sequi, debitis praesentium repellat beatae necessitatibus autem laudantium. Ipsum nemo iusto adipisci alias laboriosam quo nulla, totam minima reiciendis illum expedita in labore tempore inventore dolores hic enim sed! Nisi error nesciunt quisquam quos expedita quo vero deserunt dignissimos? Iure, perspiciatis vel commodi doloremque veritatis sequi ipsum, incidunt quos ab eius magni dignissimos! Velit, veniam. <br><br>','news-1.jpg',GETDATE(),3,2)");
        }

        public override void Down()
        {
        }
    }
}
