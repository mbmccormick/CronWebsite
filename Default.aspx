<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CronWebsite.Default" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Azure Cron - Dashboard</title>
    <link rel="Stylesheet" href="StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="page">
        <div id="header">
            <div id="toolbar">
                <h1 onclick="location.href = 'default.aspx';">
                    Azure Cron</h1>
            </div>
            <div id="title">
                <h1>
                    Dashboard</h1>
            </div>
        </div>
        <div id="content">
            <div id="results">
                <asp:DataGrid ID="grdResults" runat="server" AutoGenerateColumns="false">
                    <Columns>
                        <asp:HyperLinkColumn DataTextField="Name" DataNavigateUrlField="ID" DataNavigateUrlFormatString="~/edit.aspx?id={0}"
                            HeaderText="Name" HeaderStyle-Width="180"></asp:HyperLinkColumn>
                        <asp:BoundColumn DataField="Occurrence" HeaderText="Schedule" HeaderStyle-Width="180">
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="Endpoint" HeaderText="Endpoint"></asp:BoundColumn>
                    </Columns>
                </asp:DataGrid>
            </div>
            <br />
            <asp:Button ID="btnCreate" runat="server" OnClick="btnCreate_Click" Text="Create Job" />
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
