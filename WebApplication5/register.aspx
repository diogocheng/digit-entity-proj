<%@ Page Title="" Language="C#" MasterPageFile="~/form.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="WebApplication5.register" %>
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
           Sign Up
            
          </h4>
                <br />

              <form>
                <!-- 2 column grid layout with text inputs for the first and last names -->

                   



                <div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      <asp:TextBox ID="txtFirstname" class="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="txtFirstname" ID="rfvFirstname" runat="server" ErrorMessage="Name is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                      <asp:Label ID="lblFirstname" runat="server" class="form-label" for="form3Example1"  Text="First Name"></asp:Label>
                    </div>
                  </div>
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                       <asp:TextBox ID="txtSurname" class="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="txtSurname" ID="rfvSurname" runat="server" ErrorMessage="Surname is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                      <asp:Label ID="lblSurname" runat="server" class="form-label" for="form3Example1"  Text="Surname"></asp:Label>
                    </div>
                  </div>
                </div>

                <!-- Email input -->
                <div class="form-outline mb-4">
                      <asp:TextBox ID="txtEmail" class="form-control" runat="server" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="txtEmail" ID="rfvEmail" runat="server" ErrorMessage="Email is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                      <asp:Label ID="lblEmail" runat="server" class="form-label" for="form3Example1"  Text="Email"></asp:Label>
                </div>
                    <!-- Username input -->
                <div class="form-outline mb-4">
                      <asp:TextBox ID="txtUsername1" class="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="txtUsername1" ID="rfvUsername1" runat="server" ErrorMessage="Username is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                      <asp:Label ID="lblUsername1" runat="server" class="form-label" for="form3Example1"  Text="Username"></asp:Label>
                </div>



                <!-- Password input -->
                <div class="form-outline mb-4">
                      <asp:TextBox ID="txtPassword1" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="txtPassword1" ID="rfvPassword1" runat="server" ErrorMessage="Password is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                      <asp:Label ID="lblPassword1" runat="server" class="form-label" for="form3Example1"  Text="Password"></asp:Label>
                </div>
                    <!-- Confirm Passowrd input -->
                <div class="form-outline mb-4">
                      <asp:TextBox ID="txtPassword2" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CVPassword" runat="server" ErrorMessage="The Password type does not match"  ControlToCompare="txtPassword1"   ForeColor="Red" ControlToValidate="txtPassword2">*</asp:CompareValidator>
                      <asp:Label ID="lblCPassword" runat="server" class="form-label" for="form3Example1"  Text="Confirm Password"></asp:Label>
                </div>

                <!-- Checkbox -->
                <div class="form-check d-flex justify-content-center mb-4">
                  <input class="form-check-input me-2" type="checkbox" value="" id="form2Example33" checked />
                  <label class="form-check-label" for="form2Example33">
                    Subscribe to our newsletter
                  </label>
                </div>
             
                <!-- Submit button -->
                  <asp:Button  class="btn btn-primary btn-block mb-4" ID="btnregister" runat="server" Text="Register" OnClick="btnregister_Click1"   />

                <!-- Register buttons -->
                <div class="text-center">
                  <p></p>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                    <p>&nbsp;</p>
                    <p>or sign up with:</p>
                  <button type="button" class="btn btn-link btn-floating mx-1">
                  <i class="fab fa-facebook"></i>
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
                    <asp:HyperLink NavigateUrl="~/login.aspx" ID="HyperLink1" runat="server">Login if you already have an account</asp:HyperLink>
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


</asp:Content>
