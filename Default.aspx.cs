using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Lab1WebApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Session["Theme"] == null)
            {
                // Тема не выбрана
                Page.Theme = "";
            }
            else
            {
                Page.Theme = (string)Session["Theme"];
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                // Заполнить список доступными темами, прочитав папки внутри App_Themes
                DirectoryInfo themeDir = new DirectoryInfo(Server.MapPath("App_Themes"));
                RadioButtonList1.DataTextField = "Name";
                RadioButtonList1.DataSource = themeDir.GetDirectories();
                RadioButtonList1.DataBind();
            }
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            bool result = true;

            if (Login.Text != "admin") { ValidLogin.Text = "Неверный логин"; result = false; }
            else { ValidLogin.Text = ""; }
            if (Password.Text != "123") { ValidPassword.Text = "Неверный пароль"; result = false; }
            else { ValidPassword.Text = ""; }

            if (result) { ValidLogin.Text = "Вы"; ValidPassword.Text = "авторизованы"; }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Установить выбранную тему
            Session["Theme"] = RadioButtonList1.SelectedValue;

            // Обновить страницу
            Server.Transfer(Request.FilePath);
        }
    }
}