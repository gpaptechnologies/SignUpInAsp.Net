using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignUp
{
    public partial class UserRegistration : System.Web.UI.Page
    {
        BLL_UserRegistration objBLL_UserRegistration = new BLL_UserRegistration();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ClearForm();
            }
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            try
            {
                string result = string.Empty;
                result = objBLL_UserRegistration.SaveUserDetails(txtFirstName.Text.Trim(), txtLastName.Text.Trim(), txtMobileNumber.Text.Trim(), ddlGender.SelectedValue, txtAddress.Text.Trim(), txtUserName.Text.Trim(), txtPassword.Text.Trim());

                if (result.ToLower().Contains("user created successfully"))
                {
                    ClearForm();
                    lblMessage.Text = result;
                }
                else
                {
                    lblMessage.Text = result;
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            ClearForm();
        }

        void ClearForm()
        {
            txtFirstName.Text = string.Empty;
            txtLastName.Text = string.Empty;
            txtMobileNumber.Text = string.Empty;
            ddlGender.SelectedIndex = -1;
            txtAddress.Text = string.Empty;
            txtUserName.Text = string.Empty;
            txtPassword.Text = string.Empty;
            txtConfirmPassword.Text = string.Empty;
            lblMessage.Text = string.Empty;
        }
    }
}