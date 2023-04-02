<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegistrationPage.aspx.cs" Inherits="Forma_RegistrationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <link href="../Stil/mojStil.css" rel="stylesheet" type="text/css" />

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
</head>
<body>
    <div class="glavniDiv">
            <div class="centarNaslov">
                <h1>Registration</h1>
            </div>
            <hr />
            
            <div class="glavniSadrzaj">
                <form method="post" runat="server">
                    <div class="text_Field">
                        
                        <input type="text" required="required" id="mailID" runat="server" />
                        <span><i class="fa-solid fa-envelope"></i></span>
                        <asp:Label Text="E-mail" runat="server" class="pass" />
                        &nbsp;<asp:RegularExpressionValidator ID="provjeraMail" runat="server" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="mailID" ErrorMessage="Unesite ispravnu e-mail adresu!"></asp:RegularExpressionValidator>
                        
                    </div>
                    <div class="text_Field">
                        
                        <input type="text" required="required" id="txtUserName" runat="server"/>
                        <span><i class="fa-solid fa-user"></i></span>
                        <asp:Label Text="Username" runat="server" class="pass"/>
                        
                    </div>

                    <div class="text_Field">
                        <input type="password" required="required" id="txtPassword" runat="server"/>
                        <span><i class="fa-solid fa-key"></i></span>
                        <asp:Label Text="Password" runat="server" class="pass" />
                    </div>

                    <div class="text_Field">
                        <input type="password" required="required" id="txtPasswordRetype" runat="server" />
                        <span><i class="fa-solid fa-key"></i></span>
                        <asp:Label Text="Confirm Password" runat="server" class="pass" />
                    &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password mora biti identičan!" ControlToCompare="txtPassword" ControlToValidate="txtPasswordRetype" ForeColor="Red"></asp:CompareValidator>
                    </div>

                    
                    <!--<div class="pass">Forgot Password?</div>-->
                    <input type="submit" value="Register" id="btnLogin" runat="server" />
                    <div class="signup_Link">
                        Already have an account? <a href="#"><strong>Sign in here!</strong></a>
                        <br />
                        <br />
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                        
                    </div> 
                    
                </form>
            

            </div>
        </div>
</body>
</html>
