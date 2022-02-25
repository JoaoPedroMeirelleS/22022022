<%@ Page Title="" Language="C#" MasterPageFile="~/paginamestra.Master" AutoEventWireup="true" CodeBehind="contacts.aspx.cs" Inherits="projetoalternativo.contacts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">  
</asp:Content>  
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">  
    <form id="form1" runat="server">
    <h1>Contatos</h1>  
    
    <div>
        <asp:Label ID="Label1" runat="server" Text="Nome:"></asp:Label><asp:TextBox ID="TextBox1" runat="server" style="margin-left: 29px"></asp:TextBox>
    </div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label><asp:TextBox ID="TextBox2" runat="server" style="margin-left: 37px"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label3" runat="server" Text="Assunto:"></asp:Label><asp:TextBox ID="TextBox3" runat="server" style="margin-left: 18px"></asp:TextBox>
        </div>
    <div>
        <asp:Label ID="Label4" runat="server" Text="Mensagem:"></asp:Label><asp:TextBox ID="TextBox4" runat="server" Height="61px" Width="204px" Columns="5" Rows="50" TextMode="MultiLine"></asp:TextBox>
    </div>
    
    </form>
</asp:Content>  
