<%@ Page Title="" Language="C#" MasterPageFile="~/frontend.Master" AutoEventWireup="true" CodeBehind="myaccount.aspx.cs" Inherits="WebApplication5.myaccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

            <style>
 @import url("https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap");
body {
	background: #f9f9f9;
	font-family: "Roboto", sans-serif;
}

.shadow {
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1) !important;
}

.profile-tab-nav {
	min-width: 250px;
}

.tab-content {
	flex: 1;
}

.form-group {
	margin-bottom: 1.5rem;
}

.nav-pills a.nav-link {
	padding: 15px 20px;
	border-bottom: 1px solid #ddd;
	border-radius: 0;
	color: #333;
}
.nav-pills a.nav-link i {
	width: 20px;
}

.img-circle img {
	height: 100px;
	width: 100px;
	border-radius: 100%;
	border: 5px solid #fff;
}


            .auto-style1 {
                width: 161px;
                height: 150px;
            }


            .auto-style2 {
                height: 97px;
                width: 116px;
                margin-right: 1rem;
            }


        </style>

	<link href="style.scss" rel="stylesheet/scss" type="text/css">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">
			<h1 class="mb-5">Account Settings</h1>
			<div class="bg-white shadow rounded-lg d-block d-sm-flex">
				<div class="profile-tab-nav border-right">
					<div class="p-4">
						<div class="img-circle text-center mb-3">
                            <img src="images/avatar.png" />

						</div>
						<h4 class="text-center">Name</h4>
					</div>
		<div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
						<a class="nav-link active" id="account-tab" data-toggle="pill" href="#account" role="tab" aria-controls="account" aria-selected="true">
							<i class="fa fa-home text-center mr-1"></i> 
							Account
						</a>
						<a class="nav-link" id="password-tab" data-toggle="pill" href="#password" role="tab" aria-controls="password" aria-selected="false">
							<i class="fa fa-key text-center mr-1"></i> 
							Password
						</a>
						<a class="nav-link" id="security-tab" data-toggle="pill" href="#security" role="tab" aria-controls="security" aria-selected="false">
							<i class="fa fa-user text-center mr-1"></i> 
							Security
						</a>
						<a class="nav-link" id="application-tab" data-toggle="pill" href="#application" role="tab" aria-controls="application" aria-selected="false">
							<i class="fa fa-tv text-center mr-1"></i> 
							Application
						</a>
						<a class="nav-link" id="notification-tab" data-toggle="pill" href="#notification" role="tab" aria-controls="notification" aria-selected="false">
							<i class="fa fa-bell text-center mr-1"></i> 
							Notification
						</a>
					</div>
				</div>
				<div class="tab-content p-4 p-md-5" id="v-pills-tabContent">









					<div class="tab-pane fade show active" id="account" role="tabpanel" aria-labelledby="account-tab">
						<div class="card-header d-lg-flex justify-content-between align-items-center">
								<div class="mb-3 mb-lg-0">
								</div>
								<div>
								
								</div>
							</div>
				
<div class="card">
						<!-- Card header -->
						<div class="card-header">
							<h3 class="mb-0">Profile Details</h3>
							<p class="mb-0">
								You have full control to manage your own account setting.
							</p>
						</div>
						<!-- Card body -->
						<div class="card-body">
							<div class="d-lg-flex align-items-center justify-content-between">
								<div class="d-flex align-items-center mb-4 mb-lg-0">
									<img src="images/avatar.png" id="img-uploaded" class="auto-style1" alt="avatar">
									<div class="ms-3">
										<h4 class="mb-0">Your avatar</h4>
										<p class="mb-0">
											PNG or JPG no bigger than 800px wide and tall.
										</p>
									</div>
								</div>
								<div>
									<a href="#" class="btn btn-outline-secondary btn-sm">Update</a>
									<a href="#" class="btn btn-outline-danger btn-sm">Delete</a>
								</div>
							</div>
							<hr class="my-5">
							<div>
								<h4 class="mb-0">Personal Details</h4>
								<p class="mb-4">
									Edit your personal information and address.
								</p>
								<!-- Form -->
								  <div class="row">
                     <div class="col-md-6">
                        <label>Full Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="firstA" runat="server" placeholder="First Name"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Surname</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="secondA" runat="server" placeholder="Surname" ></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                         Phone
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="phoneA" runat="server" placeholder="Phone" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Email ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="emailA" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Country</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="countryA"  runat="server">
                            <asp:ListItem Value="AF">Afghanistan</asp:ListItem>

    <asp:ListItem Value="AL">Albania</asp:ListItem>

    <asp:ListItem Value="DZ">Algeria</asp:ListItem>

    <asp:ListItem Value="AS">American Samoa</asp:ListItem>

    <asp:ListItem Value="AD">Andorra</asp:ListItem>

    <asp:ListItem Value="AO">Angola</asp:ListItem>

    <asp:ListItem Value="AI">Anguilla</asp:ListItem>

    <asp:ListItem Value="AQ">Antarctica</asp:ListItem>

    <asp:ListItem Value="AG">Antigua And Barbuda</asp:ListItem>

    <asp:ListItem Value="AR">Argentina</asp:ListItem>

    <asp:ListItem Value="AM">Armenia</asp:ListItem>

    <asp:ListItem Value="AW">Aruba</asp:ListItem>

    <asp:ListItem Value="AU">Australia</asp:ListItem>

    <asp:ListItem Value="AT">Austria</asp:ListItem>

    <asp:ListItem Value="AZ">Azerbaijan</asp:ListItem>

    <asp:ListItem Value="BS">Bahamas</asp:ListItem>

    <asp:ListItem Value="BH">Bahrain</asp:ListItem>

    <asp:ListItem Value="BD">Bangladesh</asp:ListItem>

    <asp:ListItem Value="BB">Barbados</asp:ListItem>

    <asp:ListItem Value="BY">Belarus</asp:ListItem>

    <asp:ListItem Value="BE">Belgium</asp:ListItem>

    <asp:ListItem Value="BZ">Belize</asp:ListItem>

    <asp:ListItem Value="BJ">Benin</asp:ListItem>

    <asp:ListItem Value="BM">Bermuda</asp:ListItem>

    <asp:ListItem Value="BT">Bhutan</asp:ListItem>

    <asp:ListItem Value="BO">Bolivia</asp:ListItem>

    <asp:ListItem Value="BA">Bosnia And Herzegowina</asp:ListItem>

    <asp:ListItem Value="BW">Botswana</asp:ListItem>

    <asp:ListItem Value="BV">Bouvet Island</asp:ListItem>

    <asp:ListItem Value="BR">Brazil</asp:ListItem>

    <asp:ListItem Value="IO">British Indian Ocean Territory</asp:ListItem>

    <asp:ListItem Value="BN">Brunei Darussalam</asp:ListItem>

    <asp:ListItem Value="BG">Bulgaria</asp:ListItem>

    <asp:ListItem Value="BF">Burkina Faso</asp:ListItem>

    <asp:ListItem Value="BI">Burundi</asp:ListItem>

    <asp:ListItem Value="KH">Cambodia</asp:ListItem>

    <asp:ListItem Value="CM">Cameroon</asp:ListItem>

    <asp:ListItem Value="CA">Canada</asp:ListItem>

    <asp:ListItem Value="CV">Cape Verde</asp:ListItem>

    <asp:ListItem Value="KY">Cayman Islands</asp:ListItem>

    <asp:ListItem Value="CF">Central African Republic</asp:ListItem>

    <asp:ListItem Value="TD">Chad</asp:ListItem>

    <asp:ListItem Value="CL">Chile</asp:ListItem>

    <asp:ListItem Value="CN">China</asp:ListItem>

    <asp:ListItem Value="CX">Christmas Island</asp:ListItem>

    <asp:ListItem Value="CC">Cocos (Keeling) Islands</asp:ListItem>

    <asp:ListItem Value="CO">Colombia</asp:ListItem>

    <asp:ListItem Value="KM">Comoros</asp:ListItem>

    <asp:ListItem Value="CG">Congo</asp:ListItem>

    <asp:ListItem Value="CK">Cook Islands</asp:ListItem>

    <asp:ListItem Value="CR">Costa Rica</asp:ListItem>

    <asp:ListItem Value="CI">Cote D'Ivoire</asp:ListItem>

    <asp:ListItem Value="HR">Croatia (Local Name: Hrvatska)</asp:ListItem>

    <asp:ListItem Value="CU">Cuba</asp:ListItem>

    <asp:ListItem Value="CY">Cyprus</asp:ListItem>

    <asp:ListItem Value="CZ">Czech Republic</asp:ListItem>

    <asp:ListItem Value="DK">Denmark</asp:ListItem>

    <asp:ListItem Value="DJ">Djibouti</asp:ListItem>

    <asp:ListItem Value="DM">Dominica</asp:ListItem>

    <asp:ListItem Value="DO">Dominican Republic</asp:ListItem>

    <asp:ListItem Value="TP">East Timor</asp:ListItem>

    <asp:ListItem Value="EC">Ecuador</asp:ListItem>

    <asp:ListItem Value="EG">Egypt</asp:ListItem>

    <asp:ListItem Value="SV">El Salvador</asp:ListItem>

    <asp:ListItem Value="GQ">Equatorial Guinea</asp:ListItem>

    <asp:ListItem Value="ER">Eritrea</asp:ListItem>

    <asp:ListItem Value="EE">Estonia</asp:ListItem>

    <asp:ListItem Value="ET">Ethiopia</asp:ListItem>

    <asp:ListItem Value="FK">Falkland Islands (Malvinas)</asp:ListItem>

    <asp:ListItem Value="FO">Faroe Islands</asp:ListItem>

    <asp:ListItem Value="FJ">Fiji</asp:ListItem>

    <asp:ListItem Value="FI">Finland</asp:ListItem>

    <asp:ListItem Value="FR">France</asp:ListItem>

    <asp:ListItem Value="GF">French Guiana</asp:ListItem>

    <asp:ListItem Value="PF">French Polynesia</asp:ListItem>

    <asp:ListItem Value="TF">French Southern Territories</asp:ListItem>

    <asp:ListItem Value="GA">Gabon</asp:ListItem>

    <asp:ListItem Value="GM">Gambia</asp:ListItem>

    <asp:ListItem Value="GE">Georgia</asp:ListItem>

    <asp:ListItem Value="DE">Germany</asp:ListItem>

    <asp:ListItem Value="GH">Ghana</asp:ListItem>

    <asp:ListItem Value="GI">Gibraltar</asp:ListItem>

    <asp:ListItem Value="GR">Greece</asp:ListItem>

    <asp:ListItem Value="GL">Greenland</asp:ListItem>

    <asp:ListItem Value="GD">Grenada</asp:ListItem>

    <asp:ListItem Value="GP">Guadeloupe</asp:ListItem>

    <asp:ListItem Value="GU">Guam</asp:ListItem>

    <asp:ListItem Value="GT">Guatemala</asp:ListItem>

    <asp:ListItem Value="GN">Guinea</asp:ListItem>

    <asp:ListItem Value="GW">Guinea-Bissau</asp:ListItem>

    <asp:ListItem Value="GY">Guyana</asp:ListItem>

    <asp:ListItem Value="HT">Haiti</asp:ListItem>

    <asp:ListItem Value="HM">Heard And Mc Donald Islands</asp:ListItem>

    <asp:ListItem Value="VA">Holy See (Vatican City State)</asp:ListItem>

    <asp:ListItem Value="HN">Honduras</asp:ListItem>

    <asp:ListItem Value="HK">Hong Kong</asp:ListItem>

    <asp:ListItem Value="HU">Hungary</asp:ListItem>

    <asp:ListItem Value="IS">Icel And</asp:ListItem>

    <asp:ListItem Value="IN">India</asp:ListItem>

    <asp:ListItem Value="ID">Indonesia</asp:ListItem>

    <asp:ListItem Value="IR">Iran (Islamic Republic Of)</asp:ListItem>

    <asp:ListItem Value="IQ">Iraq</asp:ListItem>

    <asp:ListItem Value="IE">Ireland</asp:ListItem>

    <asp:ListItem Value="IL">Israel</asp:ListItem>

    <asp:ListItem Value="IT">Italy</asp:ListItem>

    <asp:ListItem Value="JM">Jamaica</asp:ListItem>

    <asp:ListItem Value="JP">Japan</asp:ListItem>

    <asp:ListItem Value="JO">Jordan</asp:ListItem>

    <asp:ListItem Value="KZ">Kazakhstan</asp:ListItem>

    <asp:ListItem Value="KE">Kenya</asp:ListItem>

    <asp:ListItem Value="KI">Kiribati</asp:ListItem>

    <asp:ListItem Value="KP">Korea, Dem People'S Republic</asp:ListItem>

    <asp:ListItem Value="KR">Korea, Republic Of</asp:ListItem>

    <asp:ListItem Value="KW">Kuwait</asp:ListItem>

    <asp:ListItem Value="KG">Kyrgyzstan</asp:ListItem>

    <asp:ListItem Value="LA">Lao People'S Dem Republic</asp:ListItem>

    <asp:ListItem Value="LV">Latvia</asp:ListItem>

    <asp:ListItem Value="LB">Lebanon</asp:ListItem>

    <asp:ListItem Value="LS">Lesotho</asp:ListItem>

    <asp:ListItem Value="LR">Liberia</asp:ListItem>

    <asp:ListItem Value="LY">Libyan Arab Jamahiriya</asp:ListItem>

    <asp:ListItem Value="LI">Liechtenstein</asp:ListItem>

    <asp:ListItem Value="LT">Lithuania</asp:ListItem>

    <asp:ListItem Value="LU">Luxembourg</asp:ListItem>

    <asp:ListItem Value="MO">Macau</asp:ListItem>

    <asp:ListItem Value="MK">Macedonia</asp:ListItem>

    <asp:ListItem Value="MG">Madagascar</asp:ListItem>

    <asp:ListItem Value="MW">Malawi</asp:ListItem>

    <asp:ListItem Value="MY">Malaysia</asp:ListItem>

    <asp:ListItem Value="MV">Maldives</asp:ListItem>

    <asp:ListItem Value="ML">Mali</asp:ListItem>

    <asp:ListItem Value="MT">Malta</asp:ListItem>

    <asp:ListItem Value="MH">Marshall Islands</asp:ListItem>

    <asp:ListItem Value="MQ">Martinique</asp:ListItem>

    <asp:ListItem Value="MR">Mauritania</asp:ListItem>

    <asp:ListItem Value="MU">Mauritius</asp:ListItem>

    <asp:ListItem Value="YT">Mayotte</asp:ListItem>

    <asp:ListItem Value="MX">Mexico</asp:ListItem>

    <asp:ListItem Value="FM">Micronesia, Federated States</asp:ListItem>

    <asp:ListItem Value="MD">Moldova, Republic Of</asp:ListItem>

    <asp:ListItem Value="MC">Monaco</asp:ListItem>

    <asp:ListItem Value="MN">Mongolia</asp:ListItem>

    <asp:ListItem Value="MS">Montserrat</asp:ListItem>

    <asp:ListItem Value="MA">Morocco</asp:ListItem>

    <asp:ListItem Value="MZ">Mozambique</asp:ListItem>

    <asp:ListItem Value="MM">Myanmar</asp:ListItem>

    <asp:ListItem Value="NA">Namibia</asp:ListItem>

    <asp:ListItem Value="NR">Nauru</asp:ListItem>

    <asp:ListItem Value="NP">Nepal</asp:ListItem>

    <asp:ListItem Value="NL">Netherlands</asp:ListItem>

    <asp:ListItem Value="AN">Netherlands Ant Illes</asp:ListItem>

    <asp:ListItem Value="NC">New Caledonia</asp:ListItem>

    <asp:ListItem Value="NZ" Selected="True">New Zealand</asp:ListItem>

    <asp:ListItem Value="NI">Nicaragua</asp:ListItem>

    <asp:ListItem Value="NE">Niger</asp:ListItem>

    <asp:ListItem Value="NG">Nigeria</asp:ListItem>

    <asp:ListItem Value="NU">Niue</asp:ListItem>

    <asp:ListItem Value="NF">Norfolk Island</asp:ListItem>

    <asp:ListItem Value="MP">Northern Mariana Islands</asp:ListItem>

    <asp:ListItem Value="NO">Norway</asp:ListItem>

    <asp:ListItem Value="OM">Oman</asp:ListItem>

    <asp:ListItem Value="PK">Pakistan</asp:ListItem>

    <asp:ListItem Value="PW">Palau</asp:ListItem>

    <asp:ListItem Value="PA">Panama</asp:ListItem>

    <asp:ListItem Value="PG">Papua New Guinea</asp:ListItem>

    <asp:ListItem Value="PY">Paraguay</asp:ListItem>

    <asp:ListItem Value="PE">Peru</asp:ListItem>

    <asp:ListItem Value="PH">Philippines</asp:ListItem>

    <asp:ListItem Value="PN">Pitcairn</asp:ListItem>

    <asp:ListItem Value="PL">Poland</asp:ListItem>

    <asp:ListItem Value="PT">Portugal</asp:ListItem>

    <asp:ListItem Value="PR">Puerto Rico</asp:ListItem>

    <asp:ListItem Value="QA">Qatar</asp:ListItem>

    <asp:ListItem Value="RE">Reunion</asp:ListItem>

    <asp:ListItem Value="RO">Romania</asp:ListItem>

    <asp:ListItem Value="RU">Russian Federation</asp:ListItem>

    <asp:ListItem Value="RW">Rwanda</asp:ListItem>

    <asp:ListItem Value="KN">Saint K Itts And Nevis</asp:ListItem>

    <asp:ListItem Value="LC">Saint Lucia</asp:ListItem>

    <asp:ListItem Value="VC">Saint Vincent, The Grenadines</asp:ListItem>

    <asp:ListItem Value="WS">Samoa</asp:ListItem>

    <asp:ListItem Value="SM">San Marino</asp:ListItem>

    <asp:ListItem Value="ST">Sao Tome And Principe</asp:ListItem>

    <asp:ListItem Value="SA">Saudi Arabia</asp:ListItem>

    <asp:ListItem Value="SN">Senegal</asp:ListItem>

    <asp:ListItem Value="SC">Seychelles</asp:ListItem>

    <asp:ListItem Value="SL">Sierra Leone</asp:ListItem>

    <asp:ListItem Value="SG">Singapore</asp:ListItem>

    <asp:ListItem Value="SK">Slovakia (Slovak Republic)</asp:ListItem>

    <asp:ListItem Value="SI">Slovenia</asp:ListItem>

    <asp:ListItem Value="SB">Solomon Islands</asp:ListItem>

    <asp:ListItem Value="SO">Somalia</asp:ListItem>

    <asp:ListItem Value="ZA">South Africa</asp:ListItem>

    <asp:ListItem Value="GS">South Georgia , S Sandwich Is.</asp:ListItem>

    <asp:ListItem Value="ES">Spain</asp:ListItem>

    <asp:ListItem Value="LK">Sri Lanka</asp:ListItem>

    <asp:ListItem Value="SH">St. Helena</asp:ListItem>

    <asp:ListItem Value="PM">St. Pierre And Miquelon</asp:ListItem>

    <asp:ListItem Value="SD">Sudan</asp:ListItem>

    <asp:ListItem Value="SR">Suriname</asp:ListItem>

    <asp:ListItem Value="SJ">Svalbard, Jan Mayen Islands</asp:ListItem>

    <asp:ListItem Value="SZ">Sw Aziland</asp:ListItem>

    <asp:ListItem Value="SE">Sweden</asp:ListItem>

    <asp:ListItem Value="CH">Switzerland</asp:ListItem>

    <asp:ListItem Value="SY">Syrian Arab Republic</asp:ListItem>

    <asp:ListItem Value="TW">Taiwan</asp:ListItem>

    <asp:ListItem Value="TJ">Tajikistan</asp:ListItem>

    <asp:ListItem Value="TZ">Tanzania, United Republic Of</asp:ListItem>

    <asp:ListItem Value="TH">Thailand</asp:ListItem>

    <asp:ListItem Value="TG">Togo</asp:ListItem>

    <asp:ListItem Value="TK">Tokelau</asp:ListItem>

    <asp:ListItem Value="TO">Tonga</asp:ListItem>

    <asp:ListItem Value="TT">Trinidad And Tobago</asp:ListItem>

    <asp:ListItem Value="TN">Tunisia</asp:ListItem>

    <asp:ListItem Value="TR">Turkey</asp:ListItem>

    <asp:ListItem Value="TM">Turkmenistan</asp:ListItem>

    <asp:ListItem Value="TC">Turks And Caicos Islands</asp:ListItem>

    <asp:ListItem Value="TV">Tuvalu</asp:ListItem>

    <asp:ListItem Value="UG">Uganda</asp:ListItem>

    <asp:ListItem Value="UA">Ukraine</asp:ListItem>

    <asp:ListItem Value="AE">United Arab Emirates</asp:ListItem>

    <asp:ListItem Value="GB">United Kingdom</asp:ListItem>

    <asp:ListItem Value="US">United States</asp:ListItem>

    <asp:ListItem Value="UM">United States Minor Is.</asp:ListItem>

    <asp:ListItem Value="UY">Uruguay</asp:ListItem>

    <asp:ListItem Value="UZ">Uzbekistan</asp:ListItem>

    <asp:ListItem Value="VU">Vanuatu</asp:ListItem>

    <asp:ListItem Value="VE">Venezuela</asp:ListItem>

    <asp:ListItem Value="VN">Viet Nam</asp:ListItem>

    <asp:ListItem Value="VG">Virgin Islands (British)</asp:ListItem>

    <asp:ListItem Value="VI">Virgin Islands (U.S.)</asp:ListItem>

    <asp:ListItem Value="WF">Wallis And Futuna Islands</asp:ListItem>

    <asp:ListItem Value="EH">Western Sahara</asp:ListItem>

    <asp:ListItem Value="YE">Yemen</asp:ListItem>

    <asp:ListItem Value="YU">Yugoslavia</asp:ListItem>

    <asp:ListItem Value="ZR">Zaire</asp:ListItem>

    <asp:ListItem Value="ZM">Zambia</asp:ListItem>

    <asp:ListItem Value="ZW">Zimbabwe</asp:ListItem>
                           </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>City</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="cityA" runat="server" placeholder="City"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Post Code</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="postcodeA" runat="server"  placeholder="Post Code" Height="25px" TextMode="MultiLine"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>Full Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="adressA" runat="server" placeholder="Full Address" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
								<asp:Button  class="btn btn-primary" ID="btnDetail" runat="server" Text="Update" OnClick="btnDetail_Click"  />
								<asp:Button class="btn btn-light" ID="btnDetailC" runat="server" Text="Cancel" OnClick="btnDetailC_Click" />
							


							</div>
						</div>
					</div>






					</div>

				
					<div class="tab-pane fade" id="password" role="tabpanel" aria-labelledby="password-tab">
						<h3 class="mb-4">&nbsp;</h3>
                        	<div class="card">
						<!-- Card header -->
						<div class="card-header">
							<h3 class="mb-0">Security</h3>
							<p class="mb-0">
								Edit your account settings and change your password here.
							</p>
						</div>
						<!-- Card body -->
						<div class="card-body">
							<h4 class="mb-0">Email Address</h4>
							<p>
								Your current email address is
                                <asp:Label  class="text-success"  id="emaildis" runat="server" Text="Label"></asp:Label>
							</p>
							<form class="row">
								<div class="mb-3 col-lg-6 col-md-12 col-12">
									<label class="form-label" for="email">New email address</label>
									
                                    <asp:TextBox class="form-control" ID="updEmail" runat="server" TextMode="Email"></asp:TextBox>
                                    <asp:Button ID="updateEmail" class="btn btn-primary mt-2" runat="server" Text="Update Email" OnClick="updateEmail_Click"  />

								
								</div>
							</form>
							<hr class="my-5">
							<div>
								<h4 class="mb-0">Change Password</h4>
								<p>
									We will email you a confirmation when changing your
									password, so please expect that email after submitting.
								</p>
								<!-- Form -->
								<form class="row">
									<div class="col-lg-6 col-md-12 col-12">
											<!-- Current password -->
										<div class="mb-3">
											<label class="form-label" for="currentpassword">Current password</label>
											
                                            <asp:TextBox class="form-control" id="currentpassword" runat="server"></asp:TextBox>

										</div>
											<!-- New password -->
										<div class="mb-3 password-field">
											<label class="form-label" for="newpassword">New password</label>
										   <asp:TextBox class="form-control mb-2" id="newpassword" runat="server"></asp:TextBox>
											<div class="row align-items-center g-0">
												<div class="col-6">
													<span data-bs-toggle="tooltip" data-placement="right"
														title="Test it by typing a password in the field below. To reach full strength, use at least 6 characters, a capital letter and a digit, e.g. 'Test01'">Password
														strength
														<i class="fe fe-help-circle ms-1"></i></span>
												</div>
											</div>
										</div>
										<div class="mb-3">
												<!-- Confirm new password -->
											<label class="form-label" for="confirmpassword">Confirm New Password</label>
										   <asp:TextBox class="form-control mb-2" id="comfirmpassword" runat="server"></asp:TextBox>
										</div>
											<!-- Button -->
										
										<div class="col-6">
                                            <asp:Button ID="Button1" runat="server"  Text="Update Password" OnClick="Button1_Click" />
&nbsp;<asp:Label ID="lblDiogo" runat="server"></asp:Label>
                                            </div>
									</div>
									<div class="col-12 mt-4">
										<p class="mb-0">
											Can't remember your current password?
											<a href="#">Reset your password via email</a>
										</p>
									</div>
								</form>
							</div>
						</div>
					</div>




					</div>


					<div class="tab-pane fade" id="security" role="tabpanel" aria-labelledby="security-tab">
							<div class="card border-0">
							<!-- Card header -->
							<div class="card-header d-lg-flex justify-content-between align-items-center">
								<div class="mb-3 mb-lg-0">
									<h3 class="mb-0">My Subscriptions</h3>
									<p class="mb-0">
										Here is list of package/product that you have subscribed.
									</p>
								</div>
								<div>
									<a href="home.aspx" class="btn btn-success btn-sm">Watch our newest upddates</a>
								</div>
							</div>
							<!-- Card body -->
							<div class="card-body">
								<div class="border-bottom pt-0 pb-5">
									<div class="row mb-4">
										<div class="col-lg-6 col-md-8 col-7 mb-2 mb-lg-0">
											<span class="d-block">
												<span class="h4">Yearly</span>
												<span class="badge bg-sucess ms-2">
													Active</span></span>

                                            <asp:Label class="mb-0 fs-6" ID="subid" runat="server" ></asp:Label>
                                           
										</div>
										<div class="col-lg-3 col-md-4 col-5 mb-2 mb-lg-0">
											<!-- Custom Switch -->
											<span>Auto Renewal</span>
											<div class="form-check form-switch">
												<input type="checkbox" class="form-check-input" id="customSwitch1"
													checked>
												<label class="form-check-label" for="customSwitch1"></label>
											</div>
										</div>
										<div
											class="col-lg-3 col-md-12 col-12 d-lg-flex align-items-start justify-content-end">
											<a href="price.aspx" class="btn btn-outline-primary btn-sm">Change Plan</a>
										</div>
									</div>
									<!-- Pricing data -->
									<div class="row">
										<div class="col-lg-3 col-md-3 col-6 mb-2 mb-lg-0">
                                           
											<span class="fs-6">Started On</span>
											<h6 class="mb-0">  <asp:Label ID="datastart" runat="server" Text=""></asp:Label>  </h6>
										</div>
										<div class="col-lg-3 col-md-3 col-6 mb-2 mb-lg-0">
											<span class="fs-6">Price</span>
											<h6 class="mb-0">Yearly</h6>
										</div>
										<div class="col-lg-3 col-md-3 col-6 mb-2 mb-lg-0">
											<span class="fs-6">Access</span>
                                       
											<h6 class="mb-0">    <asp:Label ID="planname" runat="server" Text="Label"></asp:Label></h6>
										</div>
										<div class="col-lg-3 col-md-3 col-6 mb-2 mb-lg-0">
											<span class="fs-6">Ends On:</span>
											<h6 class="mb-0">  <asp:Label ID="dataend" runat="server" Text=""></asp:Label>  </h6>
										</div>
									</div>
								</div>
								
							</div>
						</div>
						
					</div>

                    <div class="modal fade" id="paymentModal" tabindex="-1" role="dialog" aria-labelledby="paymentModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header align-items-center d-flex">
                <h4 class="modal-title" id="paymentModalLabel">
                    Add New Payment Method
                </h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">

					</button>
            </div>
            <!-- Modal body -->
            <div class="modal-body">
                <div>
                    <!-- Form -->
                    <form class="row mb-4">

                    <div class="icons">
                                    <img src="https://img.icons8.com/color/48/000000/visa.png"/>
                                    <img src="https://img.icons8.com/color/48/000000/mastercard-logo.png"/>
                                    <img src="https://img.icons8.com/color/48/000000/maestro.png"/>
                                </div>

                        <!-- Name on card -->
                        <div class="mb-3 col-12 col-md-4">
                            <label for="nameoncard" class="form-label">Type of Card</label>
                                <asp:DropDownList CssClass="form-control"  ID="DropDownList1" runat="server" ValidationGroup="CreditCard">
                                        <asp:ListItem>American Express</asp:ListItem>
                                        <asp:ListItem>Discover</asp:ListItem>
                                        <asp:ListItem>Master Card</asp:ListItem>
                                        <asp:ListItem>Visa</asp:ListItem>
                                    </asp:DropDownList>
                        </div>
                        <!-- Month -->
                        <div class="mb-3 col-12 col-md-4">
                            <label class="form-label">Month</label>
                            <asp:DropDownList CssClass="form-control" ID="ddlExpiryMonth" runat="server" ValidationGroup="CreditCard">
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
                        </div>
                        <!-- Year -->
                        <div class="mb-3 col-12 col-md-4">
                            <label class="form-label">Year</label>
                                  &nbsp;<asp:DropDownList CssClass="form-control"  ID="ddlExpiryYear" runat="server" ValidationGroup="CreditCard">
                                    </asp:DropDownList>
                        </div>

                       
                        <!-- Card number -->
                        <div class="mb-3 col-md-8 col-12">
                            <label for="cc-mask" class="form-label">Card Number</label>
                            <asp:TextBox  class="form-control" required="true" data-inputmask="'mask': '9999 9999 9999 9999'" inputmode="numeric" placeholder="xxxx-xxxx-xxxx-xxxx" ID="txtcard" runat="server" TextMode="Number"></asp:TextBox>
                      
                        </div>
                        <!-- CVV -->
                        <div class="mb-3 col-md-4 col-12">
                            <div class="mb-3">
                                <label for="cvv" class="form-label">CVV Code
										<i class="fe fe-help-circle ms-1" data-bs-toggle="tooltip" data-placement="top"
											title="A 3 - digit number, typically printed on the back of a card."></i></label>
                               
                                    <asp:TextBox   class="form-control" name="cvv" required="true" placeholder="xxx" maxlength="3"  ID="txtcvv" runat="server" ></asp:TextBox>
                            </div>
                        </div>
                        <!-- Button -->
                        <div class="col-md-6 col-12">
                          
                            <asp:Button CssClass="btn btn-primary" ID="btnCard" runat="server" Text="Save Card" OnClick="btnCard_Click"  />
                            <button class="btn btn-outline-white" type="button" data-bs-dismiss="modal">
									Close
								</button>
                        </div>
                    </form>
                    <span><strong>Note:</strong> that you can later remove your card at
							the account setting page.</span>
                </div>
            </div>
        </div>
    </div>
</div>


					<div class="tab-pane fade" id="application" role="tabpanel" aria-labelledby="application-tab">
                      <div class="pt-5">
								<div class="card mb-4">
						<!-- Card header -->
						<div class="card-header">
							<h3 class="mb-0">Payment Methods</h3>
							<span>Primary payment method is used by default</span>
						</div>
						<!-- Card body -->
						<div class="card-body">
							<!-- List group -->
							<ul class="list-group list-group-flush">
								<!-- List group item -->
								<li class="list-group-item px-0 pb-3 pt-0">
									<div class="d-flex justify-content-between">
										<div class="d-flex">
											<img  class="auto-style2"  src="images/card1.png" />  
											<div>
												<h5 class="mb-0">
                                                    <asp:Label ID="creditcard" runat="server" Text="Label"></asp:Label>
												</h5>




												<p class="mb-0 fs-6">Expires in  <asp:Label ID="Cm" runat="server" Text="Label"></asp:Label> /<asp:Label ID="Cy" runat="server" Text="Label"></asp:Label>  </p>
                                                <p> <asp:Label ID="Ctype" runat="server" Text="Label"></asp:Label>  </p>
											</div>
										</div>
										<div class="d-flex align-items-center">
											<span class="badge bg-success me-4">Used</span>
											<span class="dropdown dropstart">
												<a class="btn-icon btn btn-ghost btn-sm rounded-circle" href="#" role="button" id="paymentDropdown"
													data-bs-toggle="dropdown"  data-bs-offset="-20,20" aria-expanded="false">
													<i class="fe fe-more-vertical"></i>
												</a>
											</span>
										</div>
									</div>
								</li>
							
							</ul>
							<!-- button-->
							<a href="#" class="btn btn-outline-primary mt-4" data-bs-toggle="modal" data-bs-target="#paymentModal">Add
								Payment Method</a>
						</div>



					</div>
								</div>
					</div>
                    <div class="tab-pane fade" id="notification" role="tabpanel" aria-labelledby="notification-tab">
						<h3 class="mb-4">Plan Details</h3>
					
    <asp:MultiView ID="mvMain" runat="server" ActiveViewIndex="0">


          
       

             


        


           
        
                                 <asp:View ID="mvBronze" runat="server">
            

            <div class="card-body">
							<div class="d-lg-flex align-items-center justify-content-between">
								<div class="d-flex align-items-center mb-4 mb-lg-0">
									<img src="images/avatar.png" id="idmg-uploaded" class="auto-style1" alt="avatar">
									<div class="ms-3">
										<h4 class="mb-0">Your avatar</h4>
										<p class="mb-0">
											PNG or JPG no bigger than 800px wide and tall.
										</p>
									</div>
								</div>
								<div>
									<a href="#" class="btn btn-outline-secondary btn-sm">Update</a>
									<a href="#" class="btn btn-outline-danger btn-sm">Delete</a>
								</div>
							</div>
							<hr class="my-5">
							<div>
								<h4 class="mb-0">Personal Details</h4>
								<p class="mb-4">
									Edit your personal information and address.
								</p>
								<!-- Form -->


								  <div class="row">
                     <div class="col-md-6">
                        <label>Document ID</label>
                        <div class="form-group">
                           <asp:TextBox  Enabled="False" CssClass="form-control" ID="Bdocument" runat="server" placeholder="Document ID"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Vacination</label>
                        <div class="form-group">
      
                            <asp:DropDownList  Enabled="False" CssClass="form-control" ID="BVacine" runat="server">
                                  <asp:ListItem Value="True">Vacinnated</asp:ListItem>
                                       <asp:ListItem Value="False">Non Vaccinated</asp:ListItem>

                            </asp:DropDownList>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        
                        <div class="form-group">
                          
                              <br />
                              <br />
                              <br />
                              <label>Height in CM</label>
                         
                                <asp:TextBox  Enabled="False" CssClass="form-control" ID="BHeight" runat="server" placeholder="Height in cm"></asp:TextBox>
                              <br />
                              <br />
                              <label>Weigh in KG</label>
                      
                              <asp:TextBox  Enabled="False" CssClass="form-control" ID="BWeight" runat="server" placeholder="Weight in kg"></asp:TextBox>
                            <br />
                              <br />
                               <label>Gender</label>
                          
                            <asp:DropDownList  Enabled="False" CssClass="form-control" ID="BGEnder" runat="server">
                                <asp:ListItem Value="True">Male</asp:ListItem>
                                <asp:ListItem Value="False">Female</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-6">
                         <asp:Image  ID="BImg" runat="server" Width="460" Height="405" />

                    
                     </div>
                  </div>
                       
 </div>
 </div>
 </asp:View>

 <asp:View ID="mvSilver" runat="server">

     <div class="d-lg-flex align-items-center justify-content-between">
								<div class="d-flex align-items-center mb-4 mb-lg-0">
									<img src="images/avatar.png" id="idmg-uploaded" class="auto-style1" alt="avatar">
									<div class="ms-3">
										<h4 class="mb-0">Your avatar</h4>
										<p class="mb-0">
											PNG or JPG no bigger than 800px wide and tall.
										</p>
									</div>
								</div>
								<div>
									<a href="#" class="btn btn-outline-secondary btn-sm">Update</a>
									<a href="#" class="btn btn-outline-danger btn-sm">Delete</a>
								</div>
							</div>
							<hr class="my-5">
							<div>
								<h4 class="mb-0">Personal Details</h4>
								<p class="mb-4">
									Edit your personal information and address.
								</p>
								<!-- Form -->


								  <div class="row">
                     <div class="col-md-6">
                        <label>Document ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control"  Enabled="False" ID="SDocument" runat="server" placeholder="Document ID"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Vacination</label>
                        <div class="form-group">
      
                            <asp:DropDownList  Enabled="False" CssClass="form-control" ID="SVacine" runat="server">
                                  <asp:ListItem Value="True">Vacinnated</asp:ListItem>
                                       <asp:ListItem Value="False">Non Vaccinated</asp:ListItem>

                            </asp:DropDownList>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        
                        <div class="form-group">
                          

                            <br />
                              <br />
                              <br />
                              <br />
                              <label>Height in CM</label>
                         
                                <asp:TextBox CssClass="form-control"  Enabled="False" ID="SHeight" runat="server" placeholder="Height in cm"></asp:TextBox>
                              <br />
                              <br />
                              <label>Weigh in KG</label>
                      
                              <asp:TextBox CssClass="form-control" Enabled="False" ID="SWeight" runat="server" placeholder="Weight in kg"></asp:TextBox>
                            <br />
                              <br />
                               <label>Gender</label>
                          
                            <asp:DropDownList  Enabled="False" CssClass="form-control" ID="SGender" runat="server">
                                <asp:ListItem Value="True">Male</asp:ListItem>
                                <asp:ListItem Value="False">Female</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-6">
                         <asp:Image  ID="SImg" runat="server" Width="460" Height="405" />

                    
                     </div>
                  </div>
 </div>



                  <div class="row">
                     <div class="col-md-4">
                        <label>Occupation</label>
                        <div class="form-group">
                            <asp:DropDownList CssClass="form-control"  Enabled="False" ID="SOccupation" runat="server" >
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
                            <asp:DropDownList  Enabled="False" CssClass="form-control" ID="SRel" runat="server">
                                   <asp:ListItem Value="Single">Single</asp:ListItem>
                                            <asp:ListItem Value="Married">Married</asp:ListItem>
                                            <asp:ListItem Value="Divorced">Divorced</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Most Recend Studies</label>
                        <div class="form-group">
                               <asp:TextBox  Enabled="False" CssClass="form-control" ID="SUni" runat="server" placeholder="University" ></asp:TextBox>

                                       
                        </div>
                     </div>
                  </div>




        </asp:View>
      <asp:View ID="mvGold" runat="server">
          
          <div class="d-lg-flex align-items-center justify-content-between">
								<div class="d-flex align-items-center mb-4 mb-lg-0">
									<img src="images/avatar.png" id="idmg-uploaded" class="auto-style1" alt="avatar">
									<div class="ms-3">
										<h4 class="mb-0">Your avatar</h4>
										<p class="mb-0">
											PNG or JPG no bigger than 800px wide and tall.
										</p>
									</div>
								</div>
								<div>
									<a href="#" class="btn btn-outline-secondary btn-sm">Update</a>
									<a href="#" class="btn btn-outline-danger btn-sm">Delete</a>
								</div>
							</div>
							<hr class="my-5">
							<div>
								<h4 class="mb-0">Personal Details</h4>
								<p class="mb-4">
									Edit your personal information and address.
								</p>
								<!-- Form -->


								  <div class="row">
                     <div class="col-md-6">
                        <label>Document ID</label>
                        <div class="form-group">
                           <asp:TextBox  Enabled="False" CssClass="form-control" ReadOnly="True" ID="GDocument" runat="server" placeholder="Document ID"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Vacination</label>
                        <div class="form-group">
      
                            <asp:DropDownList  Enabled="False" ReadOnly="True" CssClass="form-control" ID="GVacine" runat="server">
                                  <asp:ListItem Value="True">Vacinnated</asp:ListItem>
                                       <asp:ListItem Value="False">Non Vaccinated</asp:ListItem>
                            </asp:DropDownList>


                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        
                        <div class="form-group">
                           
                       
                          


                            <br />
                              <br />
                              <br />
                              <br />
                              <label>Height in CM</label>
                         
                                <asp:TextBox CssClass="form-control"  Enabled="False" ReadOnly="True" ID="GHeight" runat="server" placeholder="Height in cm"></asp:TextBox>
                              <br />
                              <br />
                              <label>Weigh in KG</label>
                      
                              <asp:TextBox CssClass="form-control"  Enabled="False" ReadOnly="True"  ID="GWeight" runat="server" placeholder="Weight in kg"></asp:TextBox>
                            <br />
                              <br />
                               <label>Gender</label>
                          
                            <asp:DropDownList  Enabled="False" ReadOnly="True" CssClass="form-control" ID="GGender" runat="server">
                                <asp:ListItem Value="True">Male</asp:ListItem>
                                <asp:ListItem Value="False">Female</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-6">
                         <asp:Image  ID="GImg" runat="server" Width="460" Height="405" />

                    
                     </div>
                  </div>
 </div>



                  <div class="row">
                     <div class="col-md-4">
                        <label>Occupation</label>
                        <div class="form-group">
                            <asp:DropDownList  Enabled="False" CssClass="form-control" ReadOnly="True" ID="GOccupation" runat="server" >
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
                            <asp:DropDownList  Enabled="False" ReadOnly="True" CssClass="form-control" ID="GRel" runat="server">
                                   <asp:ListItem Value="Single">Single</asp:ListItem>
                                            <asp:ListItem Value="Married">Married</asp:ListItem>
                                            <asp:ListItem Value="Divorced">Divorced</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Most Recent Studies</label>
                        <div class="form-group">
                               <asp:TextBox CssClass="form-control" ReadOnly="True" ID="GUni" runat="server" placeholder="University" Enabled="False" ></asp:TextBox>

                                       
                        </div>
                     </div>
                  </div>









                  <div class="row">
                     <div class="col">
                        <label>Criminal Record</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="GCriminal" runat="server"  Enabled="False" ReadOnly="True" placeholder="Criminal Record" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                                 <div class="row">
                     <div class="col">
                        <label>Medical Record</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="GMedic" runat="server" ReadOnly="True"  Enabled="False" placeholder="Medical Record" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                                  <div class="row">
                     <div class="col-md-6">
                        <label>Visa Status</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="GVIsa" runat="server"  ReadOnly="True"   Enabled="False" placeholder="Visa Status"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Security Number</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="GSecurity" runat="server" placeholder="Security Number" ReadOnly="True" Enabled="False"></asp:TextBox>
                        </div>
                     </div>
                  </div>

							
							</asp:View>
              </asp:MultiView>

							</div>
						</div>
				

 
    


        





    
					</div>







	</section>


	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>


</asp:Content>
