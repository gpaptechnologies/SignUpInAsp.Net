<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="SignUp.UserRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Registration</title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Table ID="tblUserRegistration" runat="server" BorderColor="Black" BorderWidth="1" BorderStyle="Solid" HorizontalAlign="Center">
        <asp:TableHeaderRow>
            <asp:TableHeaderCell ColumnSpan="2">
                <asp:Label ID="tblHeader" runat="server" Text="User Registration" Font-Bold="true"></asp:Label>
                <hr />
            </asp:TableHeaderCell>
        </asp:TableHeaderRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblFirstName" runat="server" Text="First Name" Font-Bold="true"></asp:Label><span style="color:red">*</span>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtFirstName" runat="server" CssClass="txtBox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName" Display="Dynamic" ForeColor="Red"
                    ErrorMessage="Enter First Name." SetFocusOnError="true" ValidationGroup="Submit"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblLastName" runat="server" Text="Last Name" Font-Bold="true"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtLastName" runat="server" CssClass="txtBox"></asp:TextBox>                
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblMobileNumber" runat="server" Text="Mobile Number" Font-Bold="true"></asp:Label><span style="color:red">*</span>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtMobileNumber" runat="server" CssClass="txtBox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvMobileNumber" runat="server" ControlToValidate="txtMobileNumber" Display="Dynamic" ForeColor="Red"
                    ErrorMessage="Enter Mobile Number." SetFocusOnError="true" ValidationGroup="Submit"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblGender" runat="server" Text="Gender" Font-Bold="true"></asp:Label><span style="color:red">*</span>
            </asp:TableCell>
            <asp:TableCell>
                <asp:DropDownList ID="ddlGender" runat="server">
                    <asp:ListItem Text="Select Gender" Value="Select Gender" Selected="True"></asp:ListItem>
                    <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                    <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvddlGender" runat="server" ControlToValidate="ddlGender" Display="Dynamic" ForeColor="Red"
                    ErrorMessage="Select Gender." InitialValue="Select Gender" SetFocusOnError="true" ValidationGroup="Submit"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblAddress" runat="server" Text="Addres" Font-Bold="true"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtAddress" runat="server" CssClass="txtBox" TextMode="MultiLine" Height="50px"></asp:TextBox>                
            </asp:TableCell>
        </asp:TableRow>        
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblUserName" runat="server" Text="User Name" Font-Bold="true"></asp:Label><span style="color:red">*</span>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtUserName" runat="server" CssClass="txtBox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtUserName" Display="Dynamic" ForeColor="Red"
                    ErrorMessage="Enter User Name." SetFocusOnError="true" ValidationGroup="Submit"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblPassword" runat="server" Text="Password" Font-Bold="true"></asp:Label><span style="color:red">*</span>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="txtBox" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ForeColor="Red"
                    ErrorMessage="Enter Password." SetFocusOnError="true" ValidationGroup="Submit"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
         <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password" Font-Bold="true"></asp:Label><span style="color:red">*</span>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="txtBox" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" Display="Dynamic" ForeColor="Red"
                    ErrorMessage="Enter Confirm Password." SetFocusOnError="true" ValidationGroup="Submit"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" Display="Dynamic" ForeColor="Red"
                    ControlToCompare="txtPassword"
                    ErrorMessage="Password and Confirm password's are not matching." SetFocusOnError="true" ValidationGroup="Submit"></asp:CompareValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                <hr />
                <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" Font-Bold="true" BackColor="YellowGreen" ValidationGroup="Submit" OnClick="btnSignUp_Click" />&nbsp;&nbsp;
                <asp:Button ID="btnReset" runat="server" Text="Reset" Font-Bold="true" BackColor="YellowGreen" OnClick="btnReset_Click" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell ColumnSpan="2">
                <asp:Label ID="lblMessage" runat="server" Font-Bold="true" ForeColor="Green"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    </div>
    </form>
</body>
</html>
