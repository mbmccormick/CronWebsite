<%@ Page Title="Edit Job" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Edit.aspx.cs" Inherits="CronWebsite.Edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
        <div class="field">
            <label>
                Next Occurrence</label><br />
            <asp:TextBox ID="txtNextOccurrence" runat="server" ReadOnly="true"></asp:TextBox><br />
            <span class="hint">The next date and time that this job will be executed, in UTC time.</span>
        </div>
    </div>
    <div id="aside">
        <b>Details</b>
        <p>
            This job was last executed on
            <asp:Label ID="lblLastOccurrence" runat="server"></asp:Label>
            and
            <asp:Label ID="lblLastStatus" runat="server"></asp:Label>. Click
            <asp:HyperLink ID="lnkInformation" runat="server" Text="here"></asp:HyperLink>
            to view more information.</p>
    </div>
    <br />
    <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update Job" />
    <asp:LinkButton ID="btnDelete" runat="server" OnClick="btnDelete_Click" CssClass="delete"
        OnClientClick="return confirm('Are you sure you want to delete this job?');">Delete</asp:LinkButton>
</asp:Content>
