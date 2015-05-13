using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP2007_Lesson02_Lab01
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) // This checks if the form is posting, and if its not (ie. First time the form is loaded), it confirms that everything is cleared properly
            {
                lblMessage.Text = "";
                txtMessage.Text = "";
                btnCopyText.Enabled = true;
            }
        }

        protected void btnCopyText_Click(object sender, EventArgs e)
        {
            // Copy the textbox text to the label
            lblMessage.Text = txtMessage.Text;
            btnCopyText.Enabled = false;
        }

        protected void btnShowSelections_Click(object sender, EventArgs e)
        {
            // Clear out previously selected label text
            lblToppings.Text = "";
            // Loop through the list of checkboxes
            foreach (ListItem topping in cblToppings.Items)
            {
                // Check if the current topping is checked or not
                if (topping.Selected)
                {
                    lblToppings.Text += topping.Text + " ";
                }
            }

            lblSize.Text = ddlSize.SelectedItem.Text;
        }
    }
}