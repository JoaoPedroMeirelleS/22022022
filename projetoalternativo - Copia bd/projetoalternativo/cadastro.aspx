<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastro.aspx.cs" Inherits="projetoalternativo.cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>cadastro</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            
        </div>

  <h1>
      Cadastro
  </h1>
   <table>
<tr>
   <td>&nbsp;</td>
   <td>&nbsp;</td>
</tr>
<tr>
    <td style="font-weight: 700; text-align: right">Nome :</td>
    <td><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
</tr>
<tr>
     <td style="font-weight: 700; text-align: right">Senha :</td>
     <td><asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox></td>
</tr>
<tr>
     <td style="font-weight: 700; text-align: right">Confirme - Senha :</td>

     <td><asp:TextBox ID="txtconfipass" runat="server" TextMode="Password" OnTextChanged="txtconfipass_TextChanged"> </asp:TextBox>
          <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtconfipass"  ErrorMessage="Senha Incorreta !!"></asp:CompareValidator>
  
     </td>
      </tr>
<tr>
     <td style="font-weight: 700; text-align:right">Email :</td>
                <td>
                    <asp:TextBox ID="txtemail" runat="server" OnTextChanged="txtemail_TextChanged"></asp:TextBox>
                                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Isso não é um email!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>

    </tr>
<tr>
     <td style="font-weight: 700; text-align: right">Confirme - E-mail :</td>

     <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

 <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtemail" ControlToValidate="TextBox3"  ErrorMessage="Email Incorreto !!"></asp:CompareValidator>
                </td>
</tr>
<tr>
    <td style="font-weight: 700; text-align:right">Telefone :</td>
                <td>
                    <asp:TextBox ID="txtmobile" runat="server"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server"
ControlToValidate="txtmobile" ErrorMessage="Telefone Inválido !!" MaximumValue="999999999"
MinimumValue="111111111" Type="Double"></asp:RangeValidator>
                </td>

                
    </tr>  
          

<tr>

     <td>&nbsp;</td>
    <td><asp:Button ID="Button1" runat="server" Font-Bold="True" Text="SAVE" OnClick="Button1_Click" /></td>
</tr>

</table>
    </form>
</body>
</html>
