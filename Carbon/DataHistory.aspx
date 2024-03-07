<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DataHistory.aspx.cs" Inherits="CarbonFootprintCalculator.DataHistory" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <title>Data History - Carbon Footprint Calculator</title>
    <link href="assets/css/style.css" rel="stylesheet" />
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css" rel="stylesheet">
    <!-- Custom CSS for background image and other styles -->
    <style>
        /* Custom CSS for background image and other styles */
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
        #elt{
        	
        	margin-top: 150px;
        	margin-bottom: 150px;
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
        color:blue;
        }
        .bi-droplet-custom {
        color:blue;
        }
    </style>
</head>
<body>
    <form id="form1" >
        <div class="container container-custom">
            <div>
                <!-- Transport Emissions Section -->
                <div>
                    <h2><i class="bi bi-truck bi-truck-custom"></i>Transport Emissions</h2>
                      <table class="table table-striped">
                    <thead>
                        <tr>
                            <th><i class="bi bi-truck bi-truck-custom"></i>Vehicle Type</th>
                            <th><i class="bi bi-arrows-move"></i> Distance</th>
                            <th><i class="bi bi-thermometer bi-thermometer-custom"></i> Fuel Type</th>
                            <th><i class="bi bi-speedometer bi-speedometer-custom"></i> Fuel Efficiency</th>
                            <th><i class="bi bi-calendar bi-calendar-custom"></i> Entry Date</th>
                            <th><i class="bi bi-droplet bi-droplet-custom "></i> Carbon Footprint</th>
                        </tr>
                    </thead>
                    <tbody id="transportDataGrid" runat="server">
                        <!-- Populate this section with data dynamically -->
                    </tbody>
                </table>
                </div>
                
                <!-- Electricity Consumption Section -->
                <div id="elt">
                    <h2><i class="bi bi-lightning bi-lightning-custom"></i>Electricity Consumption</h2>
                    <table class="table table-striped">
                    <thead>
                        <tr>
                          <th><i class="bi bi-lightbulb bi-lightbulb-custom"></i> Energy Source</th>
                            <th><i class="bi bi-lightning-charge bi-lightning-custom"></i> Electricity Usage</th>
                            <th><i class="bi bi-calendar bi-calendar-custom"></i> Entry Date</th>
                            <th><i class="bi bi-droplet bi-droplet-custom"></i> Carbon Footprint</th>
                        </tr>
                    </thead>
                    <tbody id="electricityDataGrid" runat="server">
                        <!-- Populate this section with data dynamically -->
                    </tbody>
                </table>
                </div>
            </div>
        </div>
    </form>

    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
</asp:Content>
