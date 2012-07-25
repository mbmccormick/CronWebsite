<%@ Page Title="Create Job" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Create.aspx.cs" Inherits="CronWebsite.Create" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="form">
        <asp:Panel ID="pnlErrors" runat="server" Visible="false">
            <div id="errors">
                <asp:Literal ID="litErrors" runat="server"></asp:Literal>
            </div>
        </asp:Panel>
        <div class="field">
            <label>
                Name</label><br />
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox><br />
            <span class="hint">The name for this job, that will be displayed throughout the website.</span>
        </div>
        <div class="field">
            <label>
                Schedule</label><br />
            <asp:TextBox ID="txtOccurrence" runat="server"></asp:TextBox><br />
            <span class="hint">The recurrence pattern for this job in <a href="http://en.wikipedia.org/wiki/Cron#CRON_expression"
                target="_blank">crontab expression</a> format.</span>
        </div>
        <div class="field">
            <label>
                Endpoint</label><br />
            <asp:TextBox ID="txtEndpoint" runat="server"></asp:TextBox><br />
            <span class="hint">The HTTP endpoint that will be retrieved when this job is executed.</span>
        </div>
    </div>
    <br />
    <asp:Button ID="btnCreate" runat="server" OnClick="btnCreate_Click" Text="Create Job" />
    <a class="cancel" href="default.aspx">Cancel</a>
</asp:Content>
