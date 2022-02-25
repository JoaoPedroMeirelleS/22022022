using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projetoalternativo
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bt_logar_Click(object sender, EventArgs e)
        {
            String email = txbEmail.Text;
            String senha = txbSenha.Text;
            //
            //capturar a string de conexão
            System.Configuration.Configuration rootWebConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/MyWebSiteRoot");
            System.Configuration.ConnectionStringSettings connString;
            connString = rootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];

            //cria um objeto de conexão
            SqlConnection con = new SqlConnection();
            con.ConnectionString = connString.ToString();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            // Esxecuta a query com o banco de dados
            cmd.CommandText = "select * from usuarios where email = @email and senha = @senha";
            cmd.Parameters.AddWithValue("email", email);
            cmd.Parameters.AddWithValue("senha", senha);
            //string perfil = cmd.Parameters.AddWithValue("perfil", perfil);
            con.Open();
            SqlDataReader registro = cmd.ExecuteReader();



            //string perfil;

            // Se o usuário foi localizado no banco
            if (registro.HasRows)
            {
                // Conexão para verificar se é usuário ou Administrador
                SqlConnection con2 = new SqlConnection();
                con2.ConnectionString = connString.ToString();
                SqlCommand cmd2 = new SqlCommand();
                cmd2.Connection = con2;

                cmd2.CommandText = "select * from usuarios where email = @email and perfil = 1";
                cmd2.Parameters.AddWithValue("email", email);
                con2.Open();
                SqlDataReader registro2 = cmd2.ExecuteReader();

                if (registro2.HasRows)
                {
                    HttpCookie admin = new HttpCookie("admin", "admin");
                    Response.Cookies.Add(admin);
                }


                //cookie Login
                HttpCookie login = new HttpCookie("login", txbEmail.Text);
                Response.Cookies.Add(login);

                // Redireciona para página usuários
                Response.Redirect("~/usuarios.aspx");

            }
            else
            {
                // Label com mensagem de erro
                //lMsg.Text = "email ou senha incorretos!!!";

                // Alert Javascript
                Response.Write("<script> alert('Email ou Senha Incorretos!');</script>");

            }

        }

        protected void Buttoncadastro_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/cadastro.aspx");
        }
    }
}