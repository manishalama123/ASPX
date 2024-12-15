<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication4.WebForm2" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Simple Interest Calculator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin-top: 50px;
            text-align: center;
        }

        .calculator {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            display: inline-block;
            width: 350px;
        }

        .calculator input {
            margin: 10px 0;
            padding: 8px;
            width: 80%;
        }

        .calculator button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            font-size: 16px;
        }

        .calculator button:hover {
            background-color: #45a049;
        }

        .result {
            font-size: 20px;
            color: #333;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div class="calculator">
            <h2>Simple Interest Calculator</h2>

            <asp:Label runat="server" Text="Principal Amount:" AssociatedControlID="txtPrincipal" /><br />
            <asp:TextBox runat="server" ID="txtPrincipal" type="text" /><br />

            <asp:Label runat="server" Text="Rate of Interest (%):" AssociatedControlID="txtRate" /><br />
            <asp:TextBox runat="server" ID="txtRate" type="text" /><br />

            <asp:Label runat="server" Text="Time Period (years):" AssociatedControlID="txtTime" /><br />
            <asp:TextBox runat="server" ID="txtTime" type="text" /><br />

            <asp:Button runat="server" ID="btnCalculate" Text="Calculate" OnClick="btnCalculate_Click" /><br />

            <div class="result">
                <asp:Label runat="server" ID="lblResult" />
            </div>
        </div>
    </form>
</body>
</html>