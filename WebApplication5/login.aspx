<%@ Page Title="" Language="C#" MasterPageFile="~/form.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication5.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    
    <!-- Section: Design Block -->
<section class="">
  <!-- Jumbotron -->
  <div class="px-4 py-5 px-md-5 text-center text-lg-start" style="background-color: hsl(0, 0%, 96%)">
    <div class="container">
      <div class="row gx-lg-5 align-items-center">
        <div class="col-lg-6 mb-5 mb-lg-0">
            <h1 class="my-5 display-3 fw-bold ls-tight">
            The best data bank <br />
            <span class="text-primary">Digit Entity</span>
          </h1>
          <p style="color: hsl(217, 10%, 50.8%)">
            Lorem ipsum dolor sit amet consectetur adipisicing elit.
            Eveniet, itaque accusantium odio, soluta, corrupti aliquam
            quibusdam tempora at cupiditate quis eum maiores libero
            veritatis? Dicta facilis sint aliquid ipsum atque?
          </p>
        </div>

        <div class="col-lg-6 mb-5 mb-lg-0">
          <div class="card">
            <div class="card-body py-5 px-md-5">

                           <h4 >
           Log In
            
          </h4>
                <br />


              <form>
                <!-- 2 column grid layout with text inputs for the first and last names -->
                <div class="row">

                    <div class="form-outline">
                       <asp:Label ID="Label1" runat="server" class="form-label" for="form3Example1"  Text="Username"></asp:Label>
                        <asp:RequiredFieldValidator ControlToValidate="txtUsername" ID="rfvUsername" runat="server" ErrorMessage="Username is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                         <asp:TextBox ID="txtUsername" class="form-control" runat="server"></asp:TextBox>
                     
                    </div>
                  
                   
                </div>

         

                <!-- Password input -->
                <div class="form-outline mb-4">
                     <asp:Label ID="lblPassword" runat="server" class="form-label" for="form3Example4"  Text="Password"></asp:Label>
                   <asp:RequiredFieldValidator ControlToValidate="txtPassword" ID="rfvPassword" runat="server" ErrorMessage="Password is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                       <asp:TextBox ID="txtPassword" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                    
                   
                </div>


                 

                <!-- Submit button -->
              
                  <asp:Button ID="btnlogin" class="btn btn-primary btn-block mb-4" runat="server" Text="Log In" OnClick="btnlogin_Click"  />
                <!-- Register buttons -->
                <div class="text-center">
                    <p>
                        <asp:Label ID="lblLogin" runat="server" ForeColor="Red"></asp:Label>
                    </p>
                    <asp:ValidationSummary ID="vs" runat="server" ForeColor="Red" />
                  <p>or sign up with:</p>
                  <button type="button" class="btn btn-link btn-floating mx-1">
                    <i class="fab fa-facebook-f"></i>
                  </button>

                  <button type="button" class="btn btn-link btn-floating mx-1">
                    <i class="fab fa-google"></i>
                  </button>

                  <button type="button" class="btn btn-link btn-floating mx-1">
                    <i class="fab fa-twitter"></i>
                  </button>

                  <button type="button" class="btn btn-link btn-floating mx-1">
                    <i class="fab fa-github"></i>
                  </button>
                    <br />
                    <br />
                  <asp:HyperLink NavigateUrl="~/register.aspx" ID="HyperLink1" runat="server">New User? Click Here</asp:HyperLink>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Jumbotron -->
</section>
<!-- Section: Design Block -->




</asp:Content>
