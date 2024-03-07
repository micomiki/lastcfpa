<%@ Page Title="Manage Account" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="Carbon.Account.Manage" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <header>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <style>
            /* Custom CSS for background image */
            body {
                background-image: url('../assets/img/slide/slide-1.jpg');
                background-size: cover;
                background-position: center;
                background-attachment: fixed;
                color: #fff; /* Text color */
            }

            /* Additional styles for the container */
            .container-fluid {
     background-color: rgba(47, 79, 79, 0.8);
     border-radius: 10px;
     padding: 30px;
     margin-top: 150px;
     height: 500px;
     width: 1000px;
 }

              /* Additional styles for the login form content */
  .divider {
      text-align: center;
  }

  .form-outline {
      margin-bottom: 1.5rem; /* Adjust spacing as needed */
  }

  .text-lg-start {
      text-align: left !important;
  }
        </style>
    </header>
    <main aria-labelledby="title" class="container-fluid">
        <div class="content">
            <h2 id="title"><%: Title %>.</h2>

            <div>
                <asp:PlaceHolder runat="server" ID="successMessage" Visible="false" ViewStateMode="Disabled">
                    <p class="text-success"><%: SuccessMessage %></p>
                </asp:PlaceHolder>
            </div>

            <div class="col-md-12">
                <div class="row">
                    <h4>Change your account settings</h4>
                    <hr />
                    <dl class="dl-horizontal">
                        <dt>Password:</dt>
                        <dd>
                            <asp:HyperLink NavigateUrl="/Account/ManagePassword" Text="[Change]" Visible="false" ID="ChangePassword" runat="server" />
                            <asp:HyperLink NavigateUrl="/Account/ManagePassword" Text="[Create]" Visible="false" ID="CreatePassword" runat="server" />
                        </dd>
                        <dt>External Logins:</dt>
                        <dd><%: LoginsCount %>
                            <asp:HyperLink NavigateUrl="/Account/ManageLogins" Text="[Manage]" runat="server" />
                        </dd>
                        <dt>Two-Factor Authentication:</dt>
                        <dd>
                            <p>
                                There are no two-factor authentication providers configured. See <a href="https://go.microsoft.com/fwlink/?LinkId=403804">this article</a>
                                for details on setting up this ASP.NET application to support two-factor authentication.
                            </p>
                            <% if (TwoFactorEnabled)
                                { %> 
                            <%--
                            Enabled
                            <asp:LinkButton Text="[Disable]" runat="server" CommandArgument="false" OnClick="TwoFactorDisable_Click" />
                            --%>
                            <% }
                                else
                                { %> 
                            <%--
                            Disabled
                            <asp:LinkButton Text="[Enable]" CommandArgument="true" OnClick="TwoFactorEnable_Click" runat="server" />
                            --%>
                            <% } %>
                        </dd>
                    </dl>
                </div>
            </div>
        </div>
    </main>
</asp:Content>
