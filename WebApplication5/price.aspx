<%@ Page Title="" Language="C#" MasterPageFile="~/frontend.Master" AutoEventWireup="true" CodeBehind="price.aspx.cs" Inherits="WebApplication5.price" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
          <style type="text/css">
      
        .grid1{

            margin-left:auto;
            margin-right:auto;
            margin:auto;
        }
         .auto-style1 {
             height: 27px;
         }
         .auto-style2 {
             width: 882px;
         }
         .auto-style3 {
             height: 27px;
             width: 882px;
         }
         .auto-style4 {
             height: 60px;
         }
         .checkout-panel {
    display: flex;
    flex-direction: column;
    width: 940px;
    height: 850px;
    background-color: rgb(255, 255, 255);
    box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .2);
    position:relative;
}

.panel-body {
    padding: 45px 80px 0;
    flex: 1;
}
.panel-body1 {
    padding: 45px 80px 0;
    flex: 1;
    height:1000px;
}

.title {
    font-weight: 700;
    margin-top: 0;
    margin-bottom: 40px;
    color: #2e2e2e;
}

.progress-bar {
    display: flex;
    margin-bottom: 50px;
    justify-content: space-between;
}

.step {
    box-sizing: border-box;
    position: relative;
    z-index: 1;
    display: block;
    width: 25px;
    height: 25px;
    margin-bottom: 30px;
    border: 4px solid #fff;
    border-radius: 50%;
    background-color: #efefef;
}

    .step:after {
        position: absolute;
        z-index: -1;
        top: 5px;
        left: 22px;
        width: 225px;
        height: 6px;
        content: '';
        background-color: #efefef;
    }

    .step:before {
        color: #2e2e2e;
        position: absolute;
        top: 40px;
    }

    .step:last-child:after {
        content: none;
    }

    .step.active {
        background-color: darkorange;
    }

        .step.active:after {
            background-color: darkorange;
        }

        .step.active:before {
            color: darkorange;
        }

        .step.active + .step {
            background-color: darkorange;
        }

            .step.active + .step:before {
                color: darkorange;
            }

    .step:nth-child(1):before {
        content: 'Ammount';
    }

    .step:nth-child(2):before {
        right: -15px;
        content: 'Billing ';
    }

    .step:nth-child(3):before {
        right: -25px;
        content: 'Payment';
    }

    .step:nth-child(4):before {
        right: 0;
        content: 'Finish';
    }
    #last1 {
    color: #b4b4b4;
    font-size:18px;
    margin-right:70px;
}
             .auto-style5 {
              display: block;
  margin-left: auto;
  margin-right: auto;
  width: 53%;
                 height: 687px;
             }
             .auto-style8 {
                 text-align: center;
             }
             .auto-style9 {
                 text-align: center;
                 text-decoration: underline;
             }
             .auto-style10 {
                 height: 27px;
                 width: 461px;
             }
             .auto-style11 {
                 width: 461px;
             }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
      <asp:HiddenField ID="hfPlanID" runat="server" />


      <asp:MultiView ID="mvMain" runat="server" ActiveViewIndex="0">

           <asp:View ID="vCatalogue" runat="server">
     <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
      <h1 class="display-4">Pricing</h1>
      <p class="lead">Quickly build an effective pricing table for your potential customers with this Bootstrap example. It's built with default Bootstrap components and utilities with little customization.</p>
    </div>

    <div  class="container">
      



         

            <asp:DataList ID="dlCatalogue" class="grid1" runat="server" DataKeyField="PlanID" RepeatColumns="3" RepeatDirection="Horizontal" Width="100%" DataSourceID="SqlDataSource1" BorderColor="Black" BorderWidth="0px" CellPadding="40" CellSpacing="50" OnItemCommand="dlCatalogue_ItemCommand">
                <ItemTemplate>
                    <div class="auto-style8">
                        <asp:Label ID="PlanNameLabel" runat="server" Font-Bold="True" Font-Size="15pt" Text='<%# Eval("PlanName") %>' />
                        <br />
                        <br />
                        <asp:Image ID="Image1" runat="server" border-radius="50%" Height="200px" ImageUrl='<%# Eval("PlanImage", "images/{0}") %>' Width="200px" />
                        <br />
                        <br />
                        Plan price: £<asp:Label ID="PlanPriceLabel" runat="server" Font-Bold="True" Font-Size="Large" Text='<%# Eval("PlanPrice") %>' />
                        <br />
                        Self-Certification:
                        <asp:Label ID="PlanCertificationLabel" runat="server" Text='<%# Eval("PlanCertification") %>' />
                        <br />
                        Storage Size:
                        <asp:Label ID="PlanGbsLabel" runat="server" Text='<%# Eval("PlanGbs") %>' />
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="btnCalalogue" runat="server" CausesValidation="False" class="btn btn-primary" CommandArgument='<%# Eval("PlanID")%>' CommandName="PlanID" Text="Learn More" Width="161px" />
                        <br />
                    </div>
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:shopConnectionString %>" SelectCommand="SELECT * FROM [Plans]"></asp:SqlDataSource>
      



         

            </div>
                 </asp:View>
           <asp:View ID="vDetails" runat="server">


             

               <section style="background-color: #eee;">
  <div class="container py-5">
    <div class="row d-flex justify-content-center">
      <div class="col-md-12 col-lg-10 col-xl-8">
        <div class="card">
          <div class="card-body p-md-5">
            <div>
              <h4>Your Plan</h4>
              <p class="text-muted pb-2">
                Please make the payment to start enjoying all the features of our premium
                plan as soon as possible
              </p>
            </div>

            <div class="px-3 py-4 border border-primary border-2 rounded mt-4 d-flex justify-content-between">
              <div class="d-flex flex-row align-items-center">
                  <asp:Image ID="imgDetailsdwad" runat="server" class="rounded" Width="60px" />
                <div class="d-flex flex-column ms-4">
            <asp:Label ID="dwdw" runat="server"></asp:Label>
                   <asp:Label ID="lblProdDescdwa" runat="server" Font-Italic="True" ForeColor="#FF99CC"></asp:Label>
                    <asp:LinkButton class="small text-muted" ID="btnChangePlan" runat="server"  CausesValidation="False" OnClick="btnChangePlan_Click" >Change Plan</asp:LinkButton>
                </div>
              </div>
              <div class="d-flex flex-row align-items-center">
                <sup class="dollar font-weight-bold text-muted">$</sup>
               <asp:Label ID="lblTotalAmount" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                <span class="text-muted font-weight-bold mt-2">/ month</span>
              </div>
            </div>
           
        

            <h4 class="mt-5">Billing Details</h4> 
              
            

   <table style="width: 100%;">
                            <tr>
                                <td colspan="3"><strong><br />
                                </strong>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style18">First name *</td>
                                <td class="auto-style19">
                                    <asp:TextBox class="form-control" ID="txtFirstname" runat="server" ValidationGroup="BillingInfo"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="rfvFirstname" runat="server" ControlToValidate="txtFirstname" ErrorMessage="First name is required" ForeColor="Red" ValidationGroup="BillingInfo">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style18">Last name *</td>
                                <td class="auto-style19">
                                    <asp:TextBox class="form-control" ID="txtLastname" runat="server" ValidationGroup="BillingInfo"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="rfvLastname" runat="server" ErrorMessage="Last name is required" ForeColor="Red" ControlToValidate="txtLastname" ValidationGroup="BillingInfo">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style18">Address 1 *</td>
                                <td class="auto-style19">
                                    <asp:TextBox class="form-control" ID="txtAddress1" runat="server" Width="504px" ValidationGroup="BillingInfo"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ErrorMessage="Address line 1 is required" ForeColor="Red" ControlToValidate="txtAddress1" ValidationGroup="BillingInfo">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style18">Address 2</td>
                                <td class="auto-style19">
                                    <asp:TextBox class="form-control" ID="txtAddress2" runat="server" Width="504px" ValidationGroup="BillingInfo"></asp:TextBox>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style18">City</td>
                                <td class="auto-style19">
                                    <asp:TextBox class="form-control" ID="txtCity" runat="server" ValidationGroup="BillingInfo"></asp:TextBox>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style4">Country *</td>
                                <td class="auto-style4">
                                    <asp:DropDownList class="form-control" ID="ddlCountry" runat="server"  DataTextField="CountryName" DataValueField="CountryName" ValidationGroup="BillingInfo">
                                        <asp:ListItem Value="Portugal"></asp:ListItem>
                                    </asp:DropDownList>
                                  
                                </td>
                                <td class="auto-style4">
                                    <asp:RequiredFieldValidator ID="rfvCountry" runat="server" ErrorMessage="Country is required" ForeColor="Red" ControlToValidate="ddlCountry" ValidationGroup="BillingInfo">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style18">Post Code *</td>
                                <td class="auto-style19">
                                    <asp:TextBox class="form-control" ID="txtPostCode" runat="server" ValidationGroup="BillingInfo"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="rfvPostcode" runat="server" ErrorMessage="Post code is required" ForeColor="Red" ControlToValidate="txtPostCode" ValidationGroup="BillingInfo">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style18">&nbsp;</td>
                                <td class="auto-style19">
                                    <asp:Button  class="btn btn-primary btn-block mb-4" ID="btnProceed" runat="server" Text="Procced to Payment" Width="168px" ValidationGroup="BillingInfo" OnClick="btnProceed_Click" />
                                    &nbsp;<asp:Button class="btn btn-primary btn-block mb-4" ID="btnCancelBilling" runat="server" CausesValidation="False" Text="Cancel" OnClick="btnCancelBilling_Click" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
       <tr>
                                <td class="auto-style18">&nbsp;</td>
                                <td class="auto-style19">
                                    <asp:ValidationSummary ID="vsBilling" runat="server" ForeColor="Red" HeaderText="Please update the following fields " ValidationGroup="BillingInfo" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        
              </div>
              </div>
              </div>
              </div>
</div>


                    </asp:View>


          payment






                    <asp:View ID="vSummary" runat="server">
                       
             

               <section style="background-color: #eee;">
  <div class="container py-5">
    <div class="row d-flex justify-content-center">
      <div class="col-md-12 col-lg-10 col-xl-8">
        <div class="card">
          <div class="card-body p-md-5">
          

            <h4 class="mt-5">Payment details</h4> 
              
               <br />


              <div class="icons">
                                    <img src="https://img.icons8.com/color/48/000000/visa.png"/>
                                    <img src="https://img.icons8.com/color/48/000000/mastercard-logo.png"/>
                                    <img src="https://img.icons8.com/color/48/000000/maestro.png"/>
                                </div>
  <table style="width: 100%;">
                           
                            <tr>
                                <td class="auto-style10">Card Type</td>
                                <td class="auto-style3">
                                    <asp:DropDownList class="form-control" ID="ddlCardType" runat="server" ValidationGroup="CreditCard" Height="35px" Width="225px">
                                        <asp:ListItem>American Express</asp:ListItem>
                                        <asp:ListItem>Discover</asp:ListItem>
                                        <asp:ListItem>Master Card</asp:ListItem>
                                        <asp:ListItem>Visa</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="auto-style1">
                                    <asp:RequiredFieldValidator ID="rfvCardType" runat="server" ControlToValidate="ddlCardType" ErrorMessage="Card type is required" ForeColor="Red" ValidationGroup="CreditCard">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style11">Card Number</td>
                                <td class="auto-style2">
                                    <asp:TextBox class="form-control" ID="txtCardNumber" runat="server" MaxLength="20" Width="225px" ValidationGroup="CreditCard" Height="35px"></asp:TextBox>
                                </td>
                                <td class="auto-style4">
                                    <asp:CustomValidator ID="cvCardNumber" runat="server" ErrorMessage="Card number is not valid" ForeColor="Red"  ValidationGroup="CreditCard" ControlToValidate="txtCardNumber" OnServerValidate="cvCardNumber_ServerValidate" >*</asp:CustomValidator>
                                    <asp:RequiredFieldValidator ID="rfvCreditCardNumber" runat="server" ErrorMessage="Credit details is required" ForeColor="Red" ValidationGroup="CreditCard" ControlToValidate="txtCardNumber">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style11">Expiry Date</td>
                                <td class="auto-style2">
                                    <asp:DropDownList class="form-control" ID="ddlExpiryMonth" runat="server" ValidationGroup="CreditCard" Height="35px" Width="225px">
                                        <asp:ListItem>01</asp:ListItem>
                                        <asp:ListItem>02</asp:ListItem>
                                        <asp:ListItem>03</asp:ListItem>
                                        <asp:ListItem>04</asp:ListItem>
                                        <asp:ListItem>05</asp:ListItem>
                                        <asp:ListItem>06</asp:ListItem>
                                        <asp:ListItem>07</asp:ListItem>
                                        <asp:ListItem>08</asp:ListItem>
                                        <asp:ListItem>09</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                        <asp:ListItem>11</asp:ListItem>
                                        <asp:ListItem>12</asp:ListItem>
                                    </asp:DropDownList>
                                    &nbsp;<asp:DropDownList class="form-control" ID="ddlExpiryYear" runat="server" ValidationGroup="CreditCard" Height="35px" Width="225px">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:CustomValidator ID="cvExpiryDate" runat="server" ErrorMessage="Expiry date is not valid" ForeColor="Red"  ValidationGroup="CreditCard" ControlToValidate="ddlExpiryMonth" OnServerValidate="cvExpiryDate_ServerValidate" >*</asp:CustomValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style10">CVV</td>
                                <td class="auto-style3">
                                    <asp:TextBox class="form-control" ID="txtCVV" runat="server" MaxLength="3" Width="225px" TextMode="Number" ValidationGroup="CreditCard" Height="35px"></asp:TextBox>
                                </td>
                                <td class="auto-style1">
                                    <asp:CustomValidator ID="cvCVV" runat="server" ErrorMessage="CVV is invalid" ForeColor="Red"  ValidationGroup="CreditCard" ControlToValidate="txtCVV" OnServerValidate="cvCVV_ServerValidate" >*</asp:CustomValidator>
                                    <asp:RequiredFieldValidator ID="rfvCVV" runat="server" ErrorMessage="Credit details is required" ForeColor="Red" ValidationGroup="CreditCard" ControlToValidate="txtCVV">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style11">&nbsp;</td>
                                <td class="auto-style2">
                                    <asp:Button class="btn btn-primary btn-block mb-4" ID="btnSubmit" runat="server" Text="Submit" ValidationGroup="CreditCard" OnClick="btnSubmit_Click"   />
                                    &nbsp;<asp:Button class="btn btn-primary btn-block mb-4" ID="btnCancel" runat="server" CausesValidation="False" Text="Go Back" OnClick="btnCancel_Click"   />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style11">&nbsp;</td>
                                <td colspan="2">
                                    <asp:ValidationSummary ID="vsCreditCard" runat="server" ForeColor="Red" HeaderText="Plase update the following fields" ValidationGroup="CreditCard" />
                                </td>
                            </tr>
        <tr>
                                <td class="auto-style11">&nbsp;</td>
                                <td colspan="2">
                                   
                                    &nbsp;</td>
                            </tr>
                        </table>
               
 </div>
             </div>
           </div>
         </div>
       </div>
                        
                    </asp:View>
                            
                      
                           				
   


          
       

    

        


           
        
                                 <asp:View ID="mvBronze" runat="server">
                     
            <div class="container py-5">
    <div class="row d-flex justify-content-center">
      <div class="col-md-12 col-lg-10 col-xl-8">
        <div class="card">
          <div class="card-body p-md-5">


            <div class="card-body">
							<div class="d-lg-flex align-items-center justify-content-between">
								<div class="d-flex align-items-center mb-4 mb-lg-0">
								</div>
							</div>
                <h4 class="mb-0">Personal Details</h4>
							<hr class="my-5">
							<div>
								
								<p class="mb-4">
									Fill your plan information to later acess
								</p>
								<!-- Form -->


								  <div class="row">
                     <div class="col-md-6">
                        <label>Document ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" class="form-control" ID="Bdocument" runat="server" placeholder="Document ID"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Vacination</label>
                        <div class="form-group">
      
                            <asp:DropDownList  CssClass="form-control" ID="BVacine" runat="server">
                                  <asp:ListItem Value="True">Vacinnated</asp:ListItem>
                                       <asp:ListItem Value="False">Non Vaccinated</asp:ListItem>

                            </asp:DropDownList>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        
                        <div class="form-group">
                            <label>Upload document photo:</label>
                            <br />
                            <asp:FileUpload  class="form-control" ID="BUpload" runat="server" />


                            <br />
                            
                              <label>Height in CM</label>
                         
                                <asp:TextBox class="form-control" ID="BHeight" runat="server" placeholder="Height in cm"></asp:TextBox>
                              <br />
                             
                              <label>Weigh in KG</label>
                      
                              <asp:TextBox class="form-control" ID="BWeight" runat="server" placeholder="Weight in kg"></asp:TextBox>
                            <br />
                              
                               <label>Gender</label>
                          
                            <asp:DropDownList class="form-control" ID="BGEnder" runat="server">
                                <asp:ListItem Value="True">Male</asp:ListItem>
                                <asp:ListItem Value="False">Female</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-6">
                         <asp:Image  ID="BImg" runat="server" Width="371px" Height="371px" />

                    
                     </div>
                  </div>
                                   <br />
           <br />
								<asp:Button  class="btn btn-primary" ID="BUpdate" runat="server" Text="Save Details" OnClick="BUpdate_Click"   />
 </div>
 </div>
                                                     </div>
              </div>
              </div>
              </div>
</div>


 </asp:View>

 <asp:View ID="mvSilver" runat="server">

       <div class="container py-5">
    <div class="row d-flex justify-content-center">
      <div class="col-md-12 col-lg-10 col-xl-8">
        <div class="card">
          <div class="card-body p-md-5">


     <div class="d-lg-flex align-items-center justify-content-between">
								<div class="d-flex align-items-center mb-4 mb-lg-0">
									&nbsp;</div>
							</div>
                 <h4 class="mb-0">Personal Details</h4>
							<hr class="my-5">
							<div>
					
								<p class="mb-4">
									Fill your plan information to later acess
								</p>
								<!-- Form -->


								  <div class="row">
                     <div class="col-md-6">
                        <label>Document ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="SDocument" runat="server" placeholder="Document ID"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Vacination</label>
                        <div class="form-group">
      
                            <asp:DropDownList CssClass="form-control" ID="SVacine" runat="server">
                                  <asp:ListItem Value="True">Vacinnated</asp:ListItem>
                                       <asp:ListItem Value="False">Non Vaccinated</asp:ListItem>

                            </asp:DropDownList>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        
                        <div class="form-group">
                            <label>Upload document photo:</label>
                            <br />
                            <asp:FileUpload class="form-control" ID="SUpload" runat="server" />


                            <br />
                         
                              <label>Height in CM</label>
                         
                                <asp:TextBox class="form-control" ID="SHeight" runat="server" placeholder="Height in cm"></asp:TextBox>
                              <br />
                        
                              <label>Weigh in KG</label>
                      
                              <asp:TextBox class="form-control" ID="SWeight" runat="server" placeholder="Weight in kg"></asp:TextBox>
                            <br />
                     
                               <label>Gender</label>
                          
                            <asp:DropDownList class="form-control" ID="SGender" runat="server">
                                <asp:ListItem Value="True">Male</asp:ListItem>
                                <asp:ListItem Value="False">Female</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-6">
                         <asp:Image  ID="SImg" runat="server" Width="371px" Height="371px" />

                    
                     </div>
                  </div>
 </div>



                  <div class="row">
                     <div class="col-md-4">
                        <label>Occupation</label>
                        <div class="form-group">
                            <asp:DropDownList CssClass="form-control" ID="SOccupation" runat="server" Enabled="True">
                              <asp:ListItem Value="Occupation 1">Occupation 1</asp:ListItem>
                                       <asp:ListItem Value="Occupation 2">Occupation 2</asp:ListItem>
                                       <asp:ListItem Value="Occupation 3">Occupation 3</asp:ListItem>
                                       <asp:ListItem Value="Occupation 4">Occupation 4</asp:ListItem>
                                      <asp:ListItem Value="Occupation 5">Occupation 5</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Relatioship Status</label>
                        <div class="form-group">
                            <asp:DropDownList CssClass="form-control" ID="SRel" runat="server">
                                   <asp:ListItem Value="Single">Single</asp:ListItem>
                                            <asp:ListItem Value="Married">Married</asp:ListItem>
                                            <asp:ListItem Value="Divorced">Divorced</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Most Recend Studies</label>
                        <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="SUni" runat="server" placeholder="University" ></asp:TextBox>

                                       
                        </div>
                     </div>
                  </div>
               <br />
           <br />
								<asp:Button  class="btn btn-primary" ID="SUpdate" runat="server" Text="Save Details" OnClick="SUpdate_Click"  />
                                  
                        </div>
                     </div>
                  </div>
                            
                        </div>
                     </div>
                  


        </asp:View>
      <asp:View ID="mvGold" runat="server">
    
          
            <div class="container py-5">
    <div class="row d-flex justify-content-center">
      <div class="col-md-12 col-lg-10 col-xl-8">
        <div class="card">
          <div class="card-body p-md-5">

          <div class="d-lg-flex align-items-center justify-content-between">
								<div class="d-flex align-items-center mb-4 mb-lg-0">
								</div>
							</div>
                 <h4 class="mb-0">Personal Details</h4>
							<hr class="my-5">
							<div>
								
								<p class="mb-4">
									Fill your plan information to later acess
								</p>
								<!-- Form -->


								  <div class="row">
                     <div class="col-md-6">
                        <label>Document ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="GDocument" runat="server" placeholder="Document ID"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Vacination</label>
                        <div class="form-group">
      
                            <asp:DropDownList CssClass="form-control" ID="GVacine" runat="server">
                                  <asp:ListItem Value="True">Vacinnated</asp:ListItem>
                                       <asp:ListItem Value="False">Non Vaccinated</asp:ListItem>
                            </asp:DropDownList>


                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        
                        <div class="form-group">
                            <label>Upload document photo:</label>
                            <br />
                            <asp:FileUpload class="form-control" ID="GUpload" runat="server" />


                            <br />
                             
                              <label>Height in CM</label>
                         
                                <asp:TextBox class="form-control" ID="GHeight" runat="server" placeholder="Height in cm"></asp:TextBox>
                              <br />
                              
                              <label>Weigh in KG</label>
                      
                              <asp:TextBox class="form-control" ID="GWeight" runat="server" placeholder="Weight in kg"></asp:TextBox>
                            <br />
                              
                               <label>Height in CM</label>
                          
                            <asp:DropDownList class="form-control" ID="GGender" runat="server">
                                <asp:ListItem Value="True">Male</asp:ListItem>
                                <asp:ListItem Value="False">Female</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-6">
                         <asp:Image  ID="GImg" runat="server" Width="371px" Height="371px" />

                    
                     </div>
                  </div>
 </div>



                  <div class="row">
                     <div class="col-md-4">
                        <label>Occupation</label>
                        <div class="form-group">
                            <asp:DropDownList CssClass="form-control" ID="GOccupation" runat="server" Enabled="True">
                              <asp:ListItem Value="Occupation 1">Occupation 1</asp:ListItem>
                                       <asp:ListItem Value="Occupation 2">Occupation 2</asp:ListItem>
                                       <asp:ListItem Value="Occupation 3">Occupation 3</asp:ListItem>
                                       <asp:ListItem Value="Occupation 4">Occupation 4</asp:ListItem>
                                      <asp:ListItem Value="Occupation 5">Occupation 5</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Relatioship Status</label>
                        <div class="form-group">
                            <asp:DropDownList CssClass="form-control" ID="GRel" runat="server">
                                   <asp:ListItem Value="Single">Single</asp:ListItem>
                                            <asp:ListItem Value="Married">Married</asp:ListItem>
                                            <asp:ListItem Value="Divorced">Divorced</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Most Recent Studies</label>
                        <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="GUni" runat="server" placeholder="University" ></asp:TextBox>

                                       
                        </div>
                     </div>
                  </div>









                  <div class="row">
                     <div class="col">
                        <label>Criminal Record</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="GCriminal" runat="server" placeholder="Criminal Record" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                                 <div class="row">
                     <div class="col">
                        <label>Medical Record</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="GMedic" runat="server" placeholder="Medical Record" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                                  <div class="row">
                     <div class="col-md-6">
                        <label>Visa Status</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="GVIsa" runat="server" placeholder="Visa Status"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Security Number</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="GSecurity" runat="server" placeholder="Security Number" ></asp:TextBox>
                        </div>
                     </div>
                  </div>
              <br />
                <br />
								<asp:Button  class="btn btn-primary" ID="GUpdate" runat="server" Text="Save Details" OnClick="GUpdate_Click"   />
							
          
                        </div>
                               </div>
              </div>
              </div>
              </div>



           </asp:View>

          <asp:View ID="mvDone" runat="server">
         
              <did height="2000px">

                  
                        <h1 class="auto-style8"> The Subscription has been made with sucess. Thank you very much!    </h1>
                   <h3 class="auto-style9"> <em>You will shortly be logout for security reasons!!</em></h3>
                        <img id="hello " src="images/hello.png" class="auto-style5" />
                  


              </did>

                
                   

           









           </asp:View>

            </asp:MultiView>


</asp:Content>
