using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using HtmlAgilityPack;
namespace TechCompare19
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                String txt = Session["search"].ToString();
                String satxt = txt.Replace(" ", "+");

                WebClient web = new WebClient();

                String ahtml = web.DownloadString("https://www.amazon.in/s/ref=nb_sb_noss_2?url=search-alias%3Daps&field-keywords=" + satxt);

                var htmldocument = new HtmlDocument();
                htmldocument.LoadHtml(ahtml);
                var aimage = htmldocument.GetElementbyId("result_0").SelectSingleNode("//*[@class='a-link-normal a-text-normal']").InnerHtml;

                var aprice = htmldocument.GetElementbyId("result_0").SelectSingleNode("//*[@class='a-size-base a-color-price s-price a-text-bold']").InnerText;
                var aname = htmldocument.GetElementbyId("result_0").SelectSingleNode("//*[@class ='a-row a-spacing-none']").InnerText;
                Label2.Text = aimage;
                //Table1.ID.Equals(apname).Equals(aname);
                apname.Text = aname;
                apprice.Text = aprice;

                //WebClient web = new WebClient();
                String ftxt = txt.Replace(" ", "%20");
                String fhtml = web.DownloadString("https://www.flipkart.com/search?q=" + ftxt);

                // var htmldocument = new HtmlDocument();
                //.SelectSingleNode("//*[@class='_3O0U0u']")
                htmldocument.LoadHtml(fhtml);
                var fprice = htmldocument.GetElementbyId("container").SelectSingleNode("//*[@class='_1uv9Cb']").InnerText.Remove(0, 3);
                var fname = htmldocument.GetElementbyId("container").SelectSingleNode("//*[@class ='_3O0U0u']").SelectSingleNode("//a").InnerText;
                fpprice.Text = fprice;
                flname.Text = fname;

                String stxt = txt.Replace(" ", "%20");
                String shtml = web.DownloadString("https://www.shopclues.com/search?q=" + stxt);
                htmldocument.LoadHtml(shtml);
                var sprice = htmldocument.GetElementbyId("product_list").SelectSingleNode("//*[@class='p_price']").InnerText;
                spprice.Text = sprice;
                var sname = htmldocument.GetElementbyId("product_list").SelectSingleNode("//h2").InnerText;
                spname.Text = sname;

                String sdtxt = txt.Replace(" ", "%20");
                String sdhtml = web.DownloadString("https://www.snapdeal.com/search?keyword=" + sdtxt);
                htmldocument.LoadHtml(sdhtml);
                var sdprice = htmldocument.GetElementbyId("products").SelectSingleNode("//*[@class='lfloat product-price']").InnerText;
                SDprice.Text = sdprice;
                var sdname = htmldocument.GetElementbyId("products").SelectSingleNode("//*[@class='product-title ']").InnerText;
                SDname.Text = sdname;

                String CMtxt = txt.Replace(" ", "+");
                String CMhtml = web.DownloadString("https://www.croma.com/search/?text=" + CMtxt);
                htmldocument.LoadHtml(CMhtml);
                htmldocument.GetElementbyId("content").SelectSingleNode("//*[@class='addToCompareTitle']").Remove();
                var CMprice = htmldocument.GetElementbyId("content").SelectSingleNode("//*[@class='thumb']").SelectSingleNode("//h3").InnerHtml;
                cmprice.Text = CMprice;
                var CMname = htmldocument.GetElementbyId("content").SelectSingleNode("//h2").InnerText;
                cmname.Text = CMname;

                String ibtxt = txt.Replace(" ", "+");
                String ibhtml = web.DownloadString("https://www.infibeam.com/search?q=" + ibtxt);
                htmldocument.LoadHtml(ibhtml);
                var ibprice = htmldocument.GetElementbyId("resultPane").SelectSingleNode("//*[@class='final-price']").InnerText;
                IBprice.Text = ibprice;
                var ibname = htmldocument.GetElementbyId("resultPane").SelectSingleNode("//*[@class='title']").InnerText;
                IBname.Text = ibname;

                String gntxt = txt.Replace(" ", "+");
                String gnhtml = web.DownloadString("https://shop.gadgetsnow.com/mtkeywordsearch?SEARCH_STRING=" + ibtxt);
                htmldocument.LoadHtml(gnhtml);
                var gnname = htmldocument.GetElementbyId("contentbody").SelectSingleNode("//*[@class='product-name']").InnerText;
                GNname.Text = gnname;
                var gnprice = htmldocument.GetElementbyId("contentbody").SelectSingleNode("//*[@class='offerprice']").InnerText;
                GNprice.Text = gnprice;


            }
            catch (Exception z)
            {
                Response.Write("Exception=" + z);
            }


        }

        protected void Amazon_Click(object sender, EventArgs e)
        {
            try
            {
                String txt = Session["search"].ToString();
                String satxt = txt.Replace(" ", "+");

                WebClient web = new WebClient();

                String ahtml = web.DownloadString("https://www.amazon.in/s/ref=nb_sb_noss_2?url=search-alias%3Daps&field-keywords=" + satxt);

                var htmldocument = new HtmlDocument();
                htmldocument.LoadHtml(ahtml);
                String link = htmldocument.GetElementbyId("result_0").SelectSingleNode("//*[@class='a-fixed-left-grid-col a-col-right']").Descendants("a").FirstOrDefault().GetAttributeValue("href", "");
                System.Diagnostics.Process.Start(link);
            }
            catch (Exception z)
            {
                Response.Write("Exception=" + z.ToString());
            }
        }

        protected void Flipkart_Click(object sender, EventArgs e)
        {
            String txt = Session["search"].ToString();
            String ftxt = txt.Replace(" ", "%20");
            WebClient web = new WebClient();
            String fhtml = web.DownloadString("https://www.flipkart.com/search?q=" + ftxt);
            var htmldocument = new HtmlDocument();
            htmldocument.LoadHtml(fhtml);
            String link = htmldocument.GetElementbyId("container").SelectSingleNode("//*[@class='_3liAhj _1R0K0g']").Descendants("a").FirstOrDefault().GetAttributeValue("href", "");
            System.Diagnostics.Process.Start(link);
        }
        protected void Shopclues_Click(object sender, EventArgs e)
        {
            String txt = Session["search"].ToString();
            String stxt = txt.Replace(" ", "%20");
            WebClient web = new WebClient();
            String shtml = web.DownloadString("https://www.shopclues.com/search?q=" + stxt);
            var htmldocument = new HtmlDocument();
            htmldocument.LoadHtml(shtml);
            String link = htmldocument.GetElementbyId("product_list").SelectSingleNode("//*[@class='column col3 search_blocks']").Descendants("a").FirstOrDefault().GetAttributeValue("href", "");
            System.Diagnostics.Process.Start(link);
        }

        protected void Snapdeal_Click(object sender, EventArgs e)
        {
            String txt = Session["search"].ToString();
            String sdtxt = txt.Replace(" ", "%20");
            WebClient web = new WebClient();
            String sdhtml = web.DownloadString("https://www.snapdeal.com/search?keyword=" + sdtxt);
            var htmldocument = new HtmlDocument();
            htmldocument.LoadHtml(sdhtml);
            var link = htmldocument.GetElementbyId("products").SelectSingleNode("//*[@class='product-tuple-image ']").Descendants("a").FirstOrDefault().GetAttributeValue("href", "");
            System.Diagnostics.Process.Start(link);
        }
        protected void Croma_Click(object sender, EventArgs e)
        {
            String txt = Session["search"].ToString();
            var htmldocument = new HtmlDocument();
            WebClient web = new WebClient();
            String CMtxt = txt.Replace(" ", "+");
            String CMhtml = web.DownloadString("https://www.croma.com/search/?text=" + CMtxt);
            htmldocument.LoadHtml(CMhtml);
            var link = htmldocument.GetElementbyId("content").SelectSingleNode("//*[@class=' ']").Descendants("a").FirstOrDefault().GetAttributeValue("href", "");
            System.Diagnostics.Process.Start(link);
        }

        protected void infibeam_Click(object sender, EventArgs e)
        {
            String txt = Session["search"].ToString();
            var htmldocument = new HtmlDocument();
            WebClient web = new WebClient();
            String ibtxt = txt.Replace(" ", "+");
            String ibhtml = web.DownloadString("https://www.infibeam.com/search?q=" + ibtxt);
            htmldocument.LoadHtml(ibhtml);
            var link = htmldocument.GetElementbyId("resultPane").SelectSingleNode("//*[@class='resultsrow row flex-container']").SelectSingleNode("//*[@class=' col-md-3 col-sm-6 col-xs-12 search-icon flex-item']").SelectSingleNode("//*[@class='row thumbnail']").SelectSingleNode("//*[@class='product-img col-md-12 col-sm-12 col-xs-4']").Descendants("a").FirstOrDefault().GetAttributeValue("href", "");
            System.Diagnostics.Process.Start(link);
        }
        
    }
}