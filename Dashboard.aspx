<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Dashboard.aspx.cs" Inherits="CronWebsite.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="results">
        <asp:Panel ID="pnlSuccess" runat="server" Visible="false">
            <div id="success">
                <asp:Literal ID="litSuccess" runat="server"></asp:Literal>
            </div>
        </asp:Panel>
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
</asp:Content>
