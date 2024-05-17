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

    .query-button {
        background-color: #007bff;
        color: white;
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        margin: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .query-button:hover {
        background-color: #0056b3;
    }

    .output-console {
        background-color: #333;
        color: white;
        padding: 10px;
        border-radius: 5px;
        margin-top: 20px;
        max-height: 300px;
        overflow-y: auto;
        font-family: Arial, sans-serif;
    }
</style>

<div class="jumbotron">
    <h1>Save Lives Blood Bank Database</h1>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Regional blood bank that supplies Midrand hospitals in Gauteng with blood bags</p>
    <p>&nbsp;</p>
</div>

<div class="row">
    <h1>Queries</h1>
    <p>&nbsp;</p>
    <div>
        <table align="center">
            <tr>
                <td><asp:Button ID="Button1" runat="server" CssClass="query-button" Text="Donor Information" OnClick="Button1_Click" /></td>
                <td><asp:Button ID="Button3" runat="server" CssClass="query-button" Text="Limited Donor View" OnClick="Button3_Click" /></td>
                <td><asp:Button ID="Button5" runat="server" CssClass="query-button" Text="Sort Donors by Last Name" OnClick="Button5_Click" /></td>
                <td><asp:Button ID="Button7" runat="server" CssClass="query-button" Text="Blood Type Filters" OnClick="Button7_Click" /></td>
            </tr>
            <tr>
                <td><asp:Button ID="Button2" runat="server" CssClass="query-button" Text="Data Transformation" OnClick="Button2_Click" /></td>
                <td><asp:Button ID="Button4" runat="server" CssClass="query-button" Text="Weight Adjustment" OnClick="Button4_Click" /></td>
                <td><asp:Button ID="Button6" runat="server" CssClass="query-button" Text="Date Calculations" OnClick="Button6_Click" /></td>
                <td><asp:Button ID="Button8" runat="server" CssClass="query-button" Text="Aggregate Donor Data" OnClick="Button8_Click" /></td>
            </tr>
            <tr>
                <td><asp:Button ID="Button9" runat="server" CssClass="query-button" Text="Grouped Donors View" OnClick="Button9_Click" /></td>
                <td><asp:Button ID="Button11" runat="server" CssClass="query-button" Text="Grouped Donors View" /></td>
                <td><asp:Button ID="Button10" runat="server" CssClass="query-button" Text="Donor Relations" OnClick="Button10_Click" /></td>
                <td><asp:Button ID="Button12" runat="server" CssClass="query-button" Text="Donor Insights" /></td>
            </tr>
        </table>
    </div>
</div>

<p>&nbsp;</p>
<p>&nbsp;</p>
<h1>Output of query made.</h1>
<p>&nbsp;</p>

<div class="output-console" id="outputConsole" runat="server"></div>

<div class="text-center">  
    &nbsp;</div>

</asp:Content>
