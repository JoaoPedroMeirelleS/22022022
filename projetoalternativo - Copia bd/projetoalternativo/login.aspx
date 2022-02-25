<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="projetoalternativo.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
</head>
<body style="height: 428px">
    <form id="form1" runat="server">
        <div style="height: 127px">
            <asp:Label ID="Label1" runat="server" Text="e-mail"></asp:Label>
            <br />
            <asp:TextBox ID="txbEmail" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="senha"></asp:Label>
            <br />
            <asp:TextBox ID="txbSenha" runat="server" TextMode="Password"></asp:TextBox>
            <asp:Button ID="bt_logar" runat="server" OnClick="bt_logar_Click" Text="Logar" />
            <br />
    <asp:Label ID="lMsg" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:Label>
        </div>
        <p>
            <asp:Label ID="Label3" runat="server" Text="AINDA NÃO POSSUI UMA CONTA?????"></asp:Label>
            <asp:Button ID="Buttoncadastro" runat="server" Height="77px" Text="Cadastre-se" Width="157px" OnClick="Buttoncadastro_Click" />
        </p>
    </form>ipt>
</body>
</html>
