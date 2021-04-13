using Fag_el_Gamous.Models.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.AspNetCore.Mvc.Routing;
using Microsoft.AspNetCore.Mvc.ViewFeatures;
using Microsoft.AspNetCore.Razor.TagHelpers;
using System.Collections.Generic;

namespace Fag_el_Gamous.Infrastructure
{
    [HtmlTargetElement("ul", Attributes = "page-info, filters")]
    public class PaginationTagHelper : TagHelper
    {
        private IUrlHelperFactory urlInfo;
        public PaginationTagHelper(IUrlHelperFactory urlinfo)
        {
            urlInfo = urlinfo;
        }

        public PageNumberingInfo PageInfo { get; set; }

        public Filters Filters { get; set; }

        //Dictionary of key value pairs
        [HtmlAttributeName(DictionaryAttributePrefix = "page-url-")]
        public Dictionary<string, object> KeyValuePairs { get; set; } = new Dictionary<string, object>();

        [HtmlAttributeNotBound]
        [ViewContext]
        public ViewContext ViewContext { get; set; }

        public override void Process(TagHelperContext context, TagHelperOutput output)
        {
            IUrlHelper urlHelp = urlInfo.GetUrlHelper(ViewContext);

            TagBuilder finishedTag = new TagBuilder("ul");

            //Tag builder for previous
            TagBuilder previouslistTag = new TagBuilder("li");
            TagBuilder previousindividualTag = new TagBuilder("a");

            if (PageInfo.CurrentPage == 1)
            {
                previouslistTag.Attributes["class"] = "page-item disabled";
            }
            else
            {
                previouslistTag.Attributes["class"] = "page-item text-dark";
            };

            KeyValuePairs["pageNum"] = PageInfo.CurrentPage - 1;
            KeyValuePairs["hairColor"] = Filters.hairColor;
            KeyValuePairs["gender"] = Filters.gender;
            KeyValuePairs["yearFound"] = Filters.yearFound;
            KeyValuePairs["preservationIndex"] = Filters.preservationIndex;
            KeyValuePairs["burialLocationEW"] = Filters.burialLocationEW;
            KeyValuePairs["burialLocationNS"] = Filters.burialLocationNS;
            KeyValuePairs["lengthHigh"] = Filters.lengthHigh;
            KeyValuePairs["lengthLow"] = Filters.lengthLow;
            KeyValuePairs["ageHigh"] = Filters.ageHigh;
            KeyValuePairs["ageLow"] = Filters.ageLow;
            KeyValuePairs["searchString"] = Filters.searchString;
            previousindividualTag.Attributes["href"] = urlHelp.Action("BurialRecords", KeyValuePairs);
            previousindividualTag.Attributes["class"] = "page-link";
            previousindividualTag.InnerHtml.Append("«");

            previouslistTag.InnerHtml.AppendHtml(previousindividualTag);
            finishedTag.InnerHtml.AppendHtml(previouslistTag);

            for (int i = PageInfo.CurrentPage - 2; i < PageInfo.CurrentPage + 3; i++)
            {
                if (i > 0 && i < (PageInfo.NumPages + 1))
                {
                    TagBuilder listTag = new TagBuilder("li");
                    TagBuilder individualTag = new TagBuilder("a");

                    if (i == (PageInfo.CurrentPage))
                    {
                        listTag.Attributes["class"] = "page-item active";
                        individualTag.Attributes["class"] = "page-link text-light";
                    }
                    else
                    {
                        listTag.Attributes["class"] = "page-item";
                        individualTag.Attributes["class"] = "page-link text-dark";
                    };
                    KeyValuePairs["pageNum"] = i;
                    individualTag.Attributes["href"] = urlHelp.Action("BurialRecords", KeyValuePairs);
                    individualTag.InnerHtml.Append(i.ToString());

                    listTag.InnerHtml.AppendHtml(individualTag);
                    finishedTag.InnerHtml.AppendHtml(listTag);
                };
            }

            //Tag builder for next
            TagBuilder nextlistTag = new TagBuilder("li");
            TagBuilder nextindividualTag = new TagBuilder("a");

            if (PageInfo.CurrentPage == (PageInfo.NumPages))
            {
                nextlistTag.Attributes["class"] = "page-item disabled";
            }
            else
            {
                nextlistTag.Attributes["class"] = "page-item text-dark";
            };

            KeyValuePairs["pageNum"] = PageInfo.CurrentPage + 1;
            nextindividualTag.Attributes["href"] = urlHelp.Action("BurialRecords", KeyValuePairs);
            nextindividualTag.Attributes["class"] = "page-link";
            nextindividualTag.InnerHtml.Append("»");

            nextlistTag.InnerHtml.AppendHtml(nextindividualTag);
            finishedTag.InnerHtml.AppendHtml(nextlistTag);

            output.Content.AppendHtml(finishedTag.InnerHtml);

            base.Process(context, output);
        }
    }
}
