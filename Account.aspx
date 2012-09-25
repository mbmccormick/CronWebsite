<%@ Page Title="Account" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="CronWebsite.Account" %>

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
                Email Address</label><br />
            <asp:TextBox ID="txtEmailAddress" runat="server"></asp:TextBox><br />
            <span class="hint">The email address for your account.</span>
        </div>
        <div class="field">
            <label>
                Password</label><br />
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <span class="hint">The new password for your account, will not change if empty.</span>
        </div>
        <div class="field">
            <label>
                Confirm Password</label><br />
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
            <span class="hint">Confirm your password change.</span>
        </div>
    </div>
    <br />
    <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update Account" />
    <asp:LinkButton ID="btnDelete" runat="server" OnClick="btnDelete_Click" CssClass="delete"
        OnClientClick="return confirm('Are you sure you want to delete your account?');">Delete</asp:LinkButton>
</asp:Content>
