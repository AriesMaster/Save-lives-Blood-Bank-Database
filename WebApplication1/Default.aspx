<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   <style>
    .jumbotron {
        background: linear-gradient(135deg, #0a0a0a, #333333);
        color: white;
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.5);
    }

    .jumbotron h1 {
        font-size: 48px;
    }

    .jumbotron p {
        font-size: 18px;
    }
</style>

<div class="jumbotron">
    <h1>Save Lives Blood Bank Database</h1>
    <p class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Regional blood bank that supplies Midrand hospitals in Gauteng with blood bags</p>
    <p>&nbsp;</p>
</div>



    <div class="row">
        <h1>Queries</h1>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
        <div> 
            <table class="auto-style8" style="border: medium ridge #000000; background-color: #333333;">
                <tr>
                    <td class="auto-style12">
                        <span style="color: rgb(236, 236, 236); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap; background-color: rgb(51, 51, 51); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Display Donor Information</span></td>
                    <td class="auto-style15" style="background-color: #333333">
                        <span class="auto-style11"><span style="font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap; background-color: rgb(51, 51, 51); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Show Limited Donor Data</span><br />
                    </td>
                    <td class="auto-style14" style="background-color: #333333">
                        <span style="color: rgb(236, 236, 236); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap; background-color: rgb(51, 51, 51); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Sort Donors by Last Name</span><br />
                    </td>
                    <td class="auto-style13" style="background-color: #333333">
                        </span><span style="color: rgb(236, 236, 236); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap; background-color: rgb(51, 51, 51); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Apply Blood Type Filters</span></td>
                </tr>
                <tr class="auto-style7">
                    <td class="auto-style22"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style21" Text="Donor Information" OnClick="Button1_Click" />
                        </strong></td>
                    <td class="auto-style3"><strong>
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style21" Text="Limited Donor View" OnClick="Button3_Click" />
                        </strong></td>
                    <td class="auto-style4"><strong>
                        <asp:Button ID="Button5" runat="server" CssClass="auto-style21" Text="Sort Donors by Last Name" OnClick="Button5_Click" />
                        </strong></td>
                    <td class="auto-style5"><strong>
                        <asp:Button ID="Button7" runat="server" CssClass="auto-style21" Text="Blood Type Filters" OnClick="Button7_Click" />
                        </strong></td>
                </tr>
                <tr class="auto-style7">
                    <td class="auto-style22"></td>
                    <td class="auto-style25">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                </tr>
                <tr class="auto-style7">
                    <td class="auto-style22"></td>
                    <td class="auto-style25">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                </tr>
                <tr class="auto-style7">
                    <td class="auto-style22"><strong>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style21" Text="Data Transformation" Width="162px" OnClick="Button2_Click" />
                        </strong></td>
                    <td class="auto-style3"><strong>
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style21" Text="Weight Adjustment" OnClick="Button4_Click" />
                        </strong></td>
                    <td class="auto-style4"><strong>
                        <asp:Button ID="Button6" runat="server" CssClass="auto-style21" Text="Date Calculations" OnClick="Button6_Click" />
                        </strong></td>
                    <td class="auto-style5"><strong>
                        <asp:Button ID="Button8" runat="server" CssClass="auto-style21" Text="Aggregate Donor Data" OnClick="Button8_Click" />
                        </strong></td>
                </tr>
                <tr class="auto-style16">
                    <td class="auto-style22">
                    </td>
                    <td class="auto-style25">
                        &nbsp;</td>
                    <td class="auto-style24">
                        &nbsp;</td>
                    <td class="auto-style23">
                        &nbsp;</td>
                </tr>
                <tr class="auto-style16">
                    <td class="auto-style22">
                    </td>
                    <td class="auto-style25">
                        &nbsp;</td>
                    <td class="auto-style24">
                        &nbsp;</td>
                    <td class="auto-style23">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        <strong>
                        <asp:Button ID="Button9" runat="server" CssClass="auto-style21" Text="Grouped Donors View:" OnClick="Button9_Click" />
                        </strong>
                    </td>
                    <td class="auto-style3">
                        <strong>
                        <asp:Button ID="Button11" runat="server" CssClass="auto-style9" Text="Grouped Donors View" />
                        </strong>
                    </td>
                    <td class="auto-style4">
                        <strong>
                        <asp:Button ID="Button10" runat="server" CssClass="auto-style21" Text="Donor Relations" OnClick="Button10_Click" />
                        </strong>
                    </td>
                    <td class="auto-style5">
                        <strong>
                        <asp:Button ID="Button12" runat="server" CssClass="auto-style21" Text="Donor Insights" />
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    <style>
        .jumbotron {
            background: linear-gradient(135deg, #0a0a0a, #333333);
            color: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.5);
        }

        .jumbotron h1 {
            font-size: 48px;
        }

        .jumbotron p {
            font-size: 18px;
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            margin: 0 -5px; /* Negative margin to compensate for padding */
        }

        .query-button {
            margin-left: 5px;
            margin-right: 5px;
            margin-bottom: 5px;
        }

        .output-console {
            background-color: #333;
            color: white;
            padding: 10px;
            border-radius: 5px;
            margin-top: 20px;
            height: 150px; /* Adjust the height as needed */
            overflow-y: auto; /* Add vertical scrollbar if content exceeds height */
        }
        .auto-style1 {
            font-size: 21px;
            font-weight: 300;
            line-height: 1.4;
            text-align: justify;
            color: #993366;
            margin-bottom: 20px;
        }
        .auto-style2 {
            width: 204px;
            text-align: center;
        }
        .auto-style3 {
            width: 193px;
            text-align: center;
        }
        .auto-style4 {
            width: 281px;
            text-align: center;
        }
        .auto-style5 {
            width: 239px;
            text-align: center;
        }
        .auto-style7 {
            color: #0066CC;
        }
        .auto-style8 {
            width: 100%;
            float: inherit;
            height: 148px;
        }
        .auto-style9 {
            color: #CC0066;
            text-decoration: underline;
            margin-top: 184;
        }
        .auto-style11 {
            color: #FFFFFF;
        }
        .auto-style12 {
            width: 204px;
            text-align: center;
            color: #FFFFFF;
            background-color: #333333;
        }
        .auto-style13 {
            width: 239px;
            text-align: center;
            background-color: #333333;
        }
        .auto-style14 {
            width: 281px;
            text-align: center;
            background-color: #333333;
        }
        .auto-style15 {
            width: 193px;
            text-align: center;
            background-color: #333333;
        }
        .auto-style16 {
            color: #FF6666;
        }
        .auto-style21 {
            color: #CC0066;
            text-decoration: underline;
        }
        .auto-style22 {
            width: 204px;
            text-align: center;
            text-decoration: underline;
            color: #CC0066;
        }
        .auto-style23 {
            width: 239px;
            text-align: center;
            color: #CC0066;
        }
        .auto-style24 {
            width: 281px;
            text-align: center;
            color: #CC0066;
        }
        .auto-style25 {
            width: 193px;
            text-align: center;
            color: #CC0066;
        }
    </style>

   

        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <h1>Output of query made.</h1>
        <p>&nbsp;</p>
       

   <div class="output-console" id="outputConsole" runat="server"></div>

    <div>  

        <img alt="" src="images/SANBS_Donor_Signage_Illustration.png" /></div>

    <script>

      
        document.addEventListener("DOMContentLoaded", function () {
            var buttons = document.querySelectorAll('.query-button');

            buttons.forEach(function (button) {
                button.addEventListener('click', function () {
                    outputConsole.textContent = "Button clicked: " + button.textContent;
                });
            });
        });
    </script>





</asp:Content>
