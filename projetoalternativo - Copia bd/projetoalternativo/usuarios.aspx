<%@ Page Title="" Language="C#" MasterPageFile="~/paginamestra.Master" AutoEventWireup="true" CodeBehind="usuarios.aspx.cs" Inherits="projetoalternativo.usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">  
</asp:Content>  
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">  
    <h1>usuarios<asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSourceUsuarios" DataKeyNames="email" InsertItemPosition="LastItem">
<AlternatingItemTemplate>
    <li style="background-color: #FFF8DC;">senha:
        <asp:Label ID="senhaLabel" runat="server" Text='<%# Eval("senha") %>' />
        <br />
        email:
        <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
        <br />
        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Excluir" />
    </li>
</AlternatingItemTemplate>
<EditItemTemplate>
    <li style="background-color: #008A8C; color: #FFFFFF;">senha:
        <asp:TextBox ID="senhaTextBox" runat="server" Text='<%# Bind("senha") %>' />
        <br />
        email:
        <asp:Label ID="emailLabel1" runat="server" Text='<%# Eval("email") %>' />
        <br />
        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Atualizar" />
        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
    </li>
</EditItemTemplate>
<EmptyDataTemplate>
    Nenhum dado foi retornado.
</EmptyDataTemplate>
<InsertItemTemplate>
    <li style="">senha:
        <asp:TextBox ID="senhaTextBox" runat="server" Text='<%# Bind("senha") %>' />
        <br />email:
        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
        <br />
        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserir" />
        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Limpar" />
    </li>
</InsertItemTemplate>
<ItemSeparatorTemplate>
<br />
</ItemSeparatorTemplate>
<ItemTemplate>
    <li style="background-color: #DCDCDC; color: #000000;">senha:
        <asp:Label ID="senhaLabel" runat="server" Text='<%# Eval("senha") %>' />
        <br />
        email:
        <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
        <br />
        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Excluir" />
    </li>
</ItemTemplate>
<LayoutTemplate>
    <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
        <li runat="server" id="itemPlaceholder" />
    </ul>
    <div style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;">
        <asp:DataPager ID="DataPager1" runat="server">
            <Fields>
                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
            </Fields>
        </asp:DataPager>
    </div>
</LayoutTemplate>
<SelectedItemTemplate>
    <li style="background-color: #008A8C; font-weight: bold; color: #FFFFFF;">senha:
        <asp:Label ID="senhaLabel" runat="server" Text='<%# Eval("senha") %>' />
        <br />
        email:
        <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
        <br />
        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Excluir" />
    </li>
</SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSourceUsuarios" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [usuarios] WHERE [email] = @email" InsertCommand="INSERT INTO [usuarios] ([senha], [email]) VALUES (@senha, @email)" SelectCommand="SELECT [senha], [email] FROM [usuarios]" UpdateCommand="UPDATE [usuarios] SET [senha] = @senha WHERE [email] = @email">
        <DeleteParameters>
            <asp:Parameter Name="email" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="senha" Type="String" />
            <asp:Parameter Name="email" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="senha" Type="String" />
            <asp:Parameter Name="email" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</h1>  
</asp:Content>  
