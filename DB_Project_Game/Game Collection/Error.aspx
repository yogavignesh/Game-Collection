<%@ Page Title="" Language="C#" MasterPageFile="~/Game Collection/MasterPage.master" AutoEventWireup="true" Inherits="Game_Collection_Default" Codebehind="Error.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main1" Runat="Server">
      <div class="bio" id="errMessage" runat="server" >
            <img src="../images/error.jpg" class="icon"/><asp:Label ID="error_info" runat="server" ></asp:Label>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Main2" Runat="Server">
</asp:Content>

