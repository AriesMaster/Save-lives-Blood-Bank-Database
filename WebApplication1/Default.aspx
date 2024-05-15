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
    <p class="lead" style="text-decoration: underline">Regional blood bank that supplies Midrand hospitals in Gauteng with blood bags</p>
    <p>&nbsp;</p>
</div>



    <div class="row">
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
            margin: 5px; /* Adjust as needed */
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
    </style>

    <div class="jumbotron">
        <p>
            
            <a class="btn btn-primary query-button" href="#" role="button">Based on company 10</a>
            <a class="btn btn-primary query-button" href="#" role="button">Limitation of rows/columns</a>
            <a class="btn btn-primary query-button" href="#" role="button">Sorting</a>
            <a class="btn btn-primary query-button" href="#" role="button">LIKE, AND, OR</a>
            <a class="btn btn-primary query-button" href="#" role="button">Variables and functions</a>
            <a class="btn btn-primary query-button" href="#" role="button">Round or trunc</a>
            <a class="btn btn-primary query-button" href="#" role="button">Date functions</a>
            <a class="btn btn-primary query-button" href="#" role="button">Aggregate functions</a>
            <a class="btn btn-primary query-button" href="#" role="button">Group by and having</a>
            <a class="btn btn-primary query-button" href="#" role="button">Joins</a>
            <a class="btn btn-primary query-button" href="#" role="button">Sub-queries</a>
        </p>
        <div class="output-console"></div>
    </div>

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            var buttons = document.querySelectorAll('.query-button');
            var outputConsole = document.querySelector('.output-console');

            buttons.forEach(function (button) {
                button.addEventListener('click', function () {
                    outputConsole.textContent = "Button clicked: " + button.textContent;
                });
            });
        });
    </script>
</div>




</asp:Content>
