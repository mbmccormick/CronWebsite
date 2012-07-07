<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Information.aspx.cs" Inherits="CronWebsite.Information" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Azure Cron - Information</title>
    <link rel="Stylesheet" href="StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="page">
        <div id="body">
            <div id="header">
                <div id="toolbar">
                    <h1 onclick="location.href = 'default.aspx';">
                        Azure Cron</h1>
                </div>
                <div id="title">
                    <h1>
                        Information</h1>
                </div>
            </div>
            <div id="content">
                <div id="results">
                    <asp:DataGrid ID="grdResults" runat="server" AutoGenerateColumns="false">
                        <Columns>
                            <asp:BoundColumn DataField="CreatedDate" HeaderText="Execution" HeaderStyle-Width="200">
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="Result" HeaderText="Result" HeaderStyle-Width="100">
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="Message" HeaderText="Details"></asp:BoundColumn>
                        </Columns>
                    </asp:DataGrid>
                </div>
            </div>
        </div>
        <div id="footer">
            <div id="links">
                <a href="#">About</a> <a href="#">Contact</a> <a href="#">Terms</a> <a href="#">Privacy</a>
            </div>
            <div id="copyright">
                <p>
                    &copy; 2012 Matt McCormick</p>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
