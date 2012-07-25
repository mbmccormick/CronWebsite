<%@ Page Title="Information" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Information.aspx.cs" Inherits="CronWebsite.Information" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
</asp:Content>
