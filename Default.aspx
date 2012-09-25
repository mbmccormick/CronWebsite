<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CronWebsite.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Azure Cron / Cron jobs made easy with Windows Azure.</title>
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
                </div>
                <div id="content">
                    <div id="hero">
                        Cron jobs made easy with Windows Azure.
                    </div>
                    <br />
                    <br />
                    <asp:Button ID="btnLearnMore" runat="server" OnClick="btnLearnMore_Click" Text="Learn More" />
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
