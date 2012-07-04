<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="CronWebsite.Edit" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Azure Cron - Edit Job</title>
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
                    Edit Job</h1>
            </div>
        </div>
        <div id="content">
            <div id="form">
                <asp:Panel ID="pnlErrors" runat="server" Visible="false">
                    <div id="errors">
                        <asp:Literal ID="litErrors" runat="server"></asp:Literal>
                    </div>
                </asp:Panel>
                <div class="field">
                    <label>
                        Name</label><br />
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </div>
                <div class="field">
                    <label>
                        Schedule</label><br />
                    <asp:TextBox ID="txtOccurrence" runat="server"></asp:TextBox>
                </div>
                <div class="field">
                    <label>
                        Endpoint</label><br />
                    <asp:TextBox ID="txtEndpoint" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />
            <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update Job" />
            <asp:LinkButton ID="btnDelete" runat="server" OnClick="btnDelete_Click" CssClass="delete" OnClientClick="return confirm('Are you sure you want to delete this job?');">Delete</asp:LinkButton>
            <a class="cancel" href="default.aspx">Cancel</a>
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
