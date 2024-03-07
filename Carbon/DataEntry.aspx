<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DataEntry.aspx.cs" Inherits="CarbonFootprintCalculator.DataEntry" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <title>Data Entry - Carbon Footprint Calculator</title>
    <link href="assets/css/style.css" rel="stylesheet" />
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        /* Custom CSS for background image and blur effect */
        body {
            background-image: url('./assets/img/slide/slide-1.jpg'); /* Replace 'your-background-image.jpg' with your image path */
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
        }
        .container-custom {
            background-color: rgba(255, 255, 255, 0.8); /* Adjust the opacity as needed */
            border-radius: 10px;
            padding: 30px;
            margin-top: 80px;
            margin-bottom: 50px;
        }
        /* Override blur effect for container */
        .container-custom {
            filter: none;
        }
        .bi-lightning-custom {
            color: red;
        }

        .bi-calendar-custom {
            color: blue;
        }

        .bi-speedometer-custom {
            color: red;
        }

        .bi-lightbulb-custom {
            color: orangered;
        }

        .bi-thermometer-custom {
            color: orangered;
        }

        .bi-truck-custom {
            color: blue;
        }
        .custom-width {
    width: 55%; /* or any specific width you prefer */
}

    </style>
</head>
<body>
    <form id="form1">
        <div class="container container-custom"> 
        <div class="row">
           <!-- Transport Emissions Section -->
<div class="col-md-6">
    <h2><i class="bi bi-truck bi-truck-custom"></i> Transport Emissions</h2>
    <div class="form-group">
        <label for="ddlVehicleType" class="font-weight-bold "><i class="bi bi-truck bi-truck-custom"></i> Vehicle Type:</label>
        <asp:DropDownList ID="ddlVehicleType" runat="server" CssClass="form-control custom-width">
            <asp:ListItem Text="Car" Value="Car" />
            <asp:ListItem Text="Truck" Value="Truck" />
            <asp:ListItem Text="Bus" Value="Bus" />
        </asp:DropDownList>
    </div>
    <div class="form-group">
        <label for="txtDistance" class="font-weight-bold"><i class="bi bi-arrows-move"></i> Distance Travelled (in miles/kilometers):</label>
        <asp:TextBox ID="txtDistance" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvDistance" runat="server" ControlToValidate="txtDistance" ErrorMessage="Distance is required" ForeColor="Red" ValidationGroup="TransportValidation"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
        <label for="ddlFuelType" class="font-weight-bold"><i class="bi bi-thermometer bi-thermometer-custom"></i>Fuel Type:</label>
        <asp:DropDownList ID="ddlFuelType" runat="server" CssClass="form-control custom-width">
            <asp:ListItem Text="Gasoline" Value="Gasoline" />
            <asp:ListItem Text="Diesel" Value="Diesel" />
            <asp:ListItem Text="Petrol" Value="Petrol" />
            <asp:ListItem Text="Electric" Value="Electric" />
        </asp:DropDownList>
    </div>
    <div class="form-group">
        <label for="txtFuelEfficiency" class="font-weight-bold"><i class="bi bi-speedometer bi-speedometer-custom"></i>Fuel Efficiency (Gallons/Km/Mile):</label>
        <asp:TextBox ID="txtFuelEfficiency" runat="server" CssClass="form-control custom-width"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvFuelEfficiency" runat="server" ControlToValidate="txtFuelEfficiency" ErrorMessage="Fuel Efficiency is required" ForeColor="Red" ValidationGroup="TransportValidation"></asp:RequiredFieldValidator>
    </div>

    <!-- Date section for transport -->
    <div class="form-group">
        <label for="txtDateTransport" class="font-weight-bold"><i class="bi bi-calendar bi-calendar-custom"></i> Date of Entry:</label>
        <asp:TextBox ID="txtDateTransport" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
    </div>
    <!-- Submit button for transport -->
    <asp:Button ID="btnSubmitTransport" runat="server" Text="Submit" OnClick="btnSubmitTransport_Click" CssClass="btn btn-primary" ValidationGroup="TransportValidation" />
</div>

<!-- Electricity Consumption Section -->
<div class="col-md-6">
    <h2><i class="bi bi-lightning bi-lightning-custom"></i> Electricity Consumption</h2>
    <div class="form-group">
        <label for="ddlEnergySource" class="font-weight-bold"><i class="bi bi-lightbulb bi-lightbulb-custom"></i> Energy Source:</label>
        <asp:DropDownList ID="ddlEnergySource" runat="server" CssClass="form-control custom-width">
            <asp:ListItem Text="Grid" Value="Grid" />
            <asp:ListItem Text="Solar" Value="Solar" />
            <asp:ListItem Text="Wind" Value="Wind" />
        </asp:DropDownList>
    </div>
    <div class="form-group">
        <label for="txtElectricityUsage" class="font-weight-bold"><i class="bi bi-lightning-charge bi-lightbulb-custom"></i> Electricity Usage (in Kilowatt-Hours):</label>
        <asp:TextBox ID="txtElectricityUsage" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvElectricityUsage" runat="server" ControlToValidate="txtElectricityUsage" ErrorMessage="Electricity Usage is required" ForeColor="Red" ValidationGroup="ElectricityValidation"></asp:RequiredFieldValidator>
    </div>
    <!-- Date section for electricity -->
    <div class="form-group">
        <label for="txtDateElectricity" class="font-weight-bold"><i class="bi bi-calendar bi-calendar-custom"></i> Date of Entry:</label>
        <asp:TextBox ID="txtDateElectricity" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
    </div>
    <!-- Submit button for electricity -->
    <asp:Button ID="btnSubmitElectricity" runat="server" Text="Submit" OnClick="btnSubmitElectricity_Click" CssClass="btn btn-primary" ValidationGroup="ElectricityValidation" />
</div>

        </div>
        </div>
    </form>
<!-- Add this script to the end of your HTML body -->
<!-- Add this script to the end of your HTML body -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    // Function to show the success popup and redirect to another page
    function handleFormSubmission() {
        // Show the success popup
        showSuccessPopup();
        // Redirect to another page after a delay (you can adjust the delay as needed)
        setTimeout(function () {
            window.location.href = "DataHistory.aspx";
        }, 2000); // 2000 milliseconds (2 seconds) delay before redirection
    }

    // Function to show the success popup
    function showSuccessPopup() {
        // You can customize this popup according to your needs
        alert("Form submitted successfully!");
    }

    // Function to set the current date and time in the datetime inputs
    function setCurrentDateTime() {
        var today = new Date();
        var datetimeInputTransport = document.getElementById("<%= txtDateTransport.ClientID %>");
        var datetimeInputElectricity = document.getElementById("<%= txtDateElectricity.ClientID %>");
        // Format the date and time as YYYY-MM-DD HH:MM for input field value
        var formattedDateTime = today.toISOString().substr(0, 10) + ' ' + today.toTimeString().substr(0, 5);
        // Set the value of datetime inputs
        datetimeInputTransport.value = formattedDateTime;
        datetimeInputElectricity.value = formattedDateTime;
    }
    // Call the function to set the current date and time
    setCurrentDateTime();

    // Check if the current page is DataEntry.aspx
    var currentPage = '<%= Request.Url.AbsolutePath %>';
    if (currentPage.endsWith("DataEntry.aspx")) {
        // Remove active class from all navbar items
        $('ul.navbar-nav > li > a.active').removeClass('active');

        // Set the specific navbar item as active
        $('#' + 'dataentry').addClass('active');

        // Store the id of the active navbar item in local storage
        localStorage.setItem('activeNavItem', 'dataentry');
    }
</script>





</body>
</html>
</asp:Content>
