<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CronWebsite.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Azure Cron / Sign In</title>
    <link rel="Stylesheet" href="StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="page">
            <div id="body">
                <div id="header">
                    <div id="toolbar">
                        <h1 onclick="location.href = 'default.aspx';">Azure Cron</h1>
                        <ul id="nav">
                            <li><a href="login.aspx">Sign In</a></li>
                            <li><a href="register.aspx">Register</a></li>
                        </ul>
                    </div>
                    <div id="title">
                        <h1>Sign In</h1>
                    </div>
                </div>
                <div id="content">
                    <div id="form">
                        <asp:Panel ID="pnlSuccess" runat="server" Visible="false">
                            <div id="success">
                                <asp:Literal ID="litSuccess" runat="server"></asp:Literal>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="pnlErrors" runat="server" Visible="false">
                            <div id="errors">
                                <asp:Literal ID="litErrors" runat="server"></asp:Literal>
                            </div>
                        </asp:Panel>
                        <div class="field">
                            <label>
                                Email Address</label><br />
                            <asp:TextBox ID="txtEmailAddress" runat="server"></asp:TextBox>
                        </div>
                        <div class="field">
                            <label>
                                Password</label><br />
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Sign In" />
                    <asp:LinkButton ID="btnForgotPassword" runat="server" OnClick="btnForgotPassword_Click"
                        CssClass="delete">Forgot Password?</asp:LinkButton>
                </div>
            </div>
            <div id="footer">
                <div id="links">
                    <a href="#">About</a> <a href="#">Contact</a> <a href="#">Terms</a> <a href="#">Privacy</a>
                </div>
                <div id="copyright">
                    <p>
                        &copy; 2012 Matt McCormick
                    </p>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
