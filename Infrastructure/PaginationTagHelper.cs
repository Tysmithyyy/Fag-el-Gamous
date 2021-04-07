using Fag_el_Gamous.Models.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.AspNetCore.Mvc.Routing;
using Microsoft.AspNetCore.Mvc.ViewFeatures;
using Microsoft.AspNetCore.Razor.TagHelpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Fag_el_Gamous.Infrastructure
{
    [HtmlTargetElement("div", Attributes = "page-info")]
    public class PaginationTagHelper : TagHelper
    {
        private IUrlHelperFactory urlInfo;
        public PaginationTagHelper(IUrlHelperFactory urlinfo)
        {
            urlInfo = urlinfo;
        }

        public PageNumberingInfo PageInfo { get; set; }

        //Dictionary of key value pairs
        [HtmlAttributeName(DictionaryAttributePrefix = "page-url-")]
        public Dictionary<string, object> KeyValuePairs { get; set; } = new Dictionary<string, object>();

        [HtmlAttributeNotBound]
        [ViewContext]
        public ViewContext ViewContext { get; set; }

        public override void Process(TagHelperContext context, TagHelperOutput output)
        {
            IUrlHelper urlHelp = urlInfo.GetUrlHelper(ViewContext);

            TagBuilder finishedTag = new TagBuilder("div");

            for (int i = 1; i < PageInfo.NumPages; i++)
            {
                TagBuilder listTag = new TagBuilder("div");
                TagBuilder individualTag = new TagBuilder("a");

                listTag.Attributes["class"] = "page-item";

                KeyValuePairs["pageNum"] = i;
                individualTag.Attributes["href"] = urlHelp.Action("Index", KeyValuePairs);
                individualTag.Attributes["class"] = "page-link text-dark";
                individualTag.InnerHtml.Append(i.ToString());

                listTag.InnerHtml.AppendHtml(individualTag);
                finishedTag.InnerHtml.AppendHtml(listTag);
            }

            output.Content.AppendHtml(finishedTag.InnerHtml);

            base.Process(context, output);
        }
    }
}
