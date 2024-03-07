<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageLogins.aspx.cs" Inherits="Carbon.Account.ManageLogins" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <style>
            /* Additional styles for the container */
            body {
                background-image: url('../assets/img/slide/slide-1.jpg');
                background-size: cover;
                background-position: center;
                background-attachment: fixed;
            }

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

            .login-custom {
                color: white;
            }
        </style>


        <div class="container-fluid">
            <h2 id="title" class="login-custom">Manage your external logins.</h2>
            <asp:PlaceHolder runat="server" ID="successMessage" Visible="false" ViewStateMode="Disabled">
                <p class="text-success"><%: SuccessMessage %></p>
            </asp:PlaceHolder>
            <section id="externalLoginsForm">

                <h4 class="login-custom">Registered Logins</h4>
                <table class="table">
                    <tbody>
                        <asp:ListView runat="server"
                            ItemType="Microsoft.AspNet.Identity.UserLoginInfo"
                            SelectMethod="GetLogins" DeleteMethod="RemoveLogin" DataKeyNames="LoginProvider,ProviderKey" class="login-custom">

                            <LayoutTemplate>
                                <tr runat="server" id="itemPlaceholder"></tr>
                            </LayoutTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td class="login-custom"><%#: Item.LoginProvider %></td>
                                    <td>
                                        <asp:Button runat="server" Text="Remove" CommandName="Delete" CausesValidation="false"
                                            ToolTip='<%# "Remove this " + Item.LoginProvider + " login from your account" %>'
                                            Visible="<%# CanRemoveExternalLogins %>" CssClass="btn btn-outline-dark login-custom" />
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:ListView>
                    </tbody>
                </table>
                <div>
                    <uc:OpenAuthProviders runat="server" ReturnUrl="~/Account/ManageLogins" class="login-custom" />
                </div>
            </section>
        </div>

    </main>
</asp:Content>
