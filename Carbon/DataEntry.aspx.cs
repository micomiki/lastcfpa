using System;
using System.Collections.Generic;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarbonFootprintCalculator
{
    public partial class DataEntry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Set the current date for date inputs
                txtDateTransport.Text = DateTime.Now.ToString("yyyy-MM-dd HH:mm");
                txtDateElectricity.Text = DateTime.Now.ToString("yyyy-MM-dd HH:mm");
            }
        }

        protected void btnSubmitTransport_Click(object sender, EventArgs e)
        {
            // Calculate carbon footprint for transportation
            double distance = Convert.ToDouble(txtDistance.Text);
            double fuelEfficiency = Convert.ToDouble(txtFuelEfficiency.Text);
            double carbonFootprint = CalculateTransportCarbonFootprint(distance, fuelEfficiency, ddlFuelType.SelectedValue);

            // Store the data temporarily
            StoreTransportData(ddlVehicleType.SelectedValue, distance, ddlFuelType.SelectedValue, fuelEfficiency, txtDateTransport.Text, carbonFootprint);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "submitScript", "handleFormSubmission();", true);

            // Clear the form after submission
            ClearTransportForm();

        }

        protected void btnSubmitElectricity_Click(object sender, EventArgs e)
        {
            // Calculate carbon footprint for electricity consumption
            double electricityUsage = Convert.ToDouble(txtElectricityUsage.Text);
            double carbonFootprint = CalculateElectricityCarbonFootprint(electricityUsage, ddlEnergySource.SelectedValue);

            // Store the data temporarily
            StoreElectricityData(ddlEnergySource.SelectedValue, electricityUsage, txtDateElectricity.Text, carbonFootprint);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "submitScript", "handleFormSubmission();", true);

            // Clear the form after submission
            ClearElectricityForm();
        }

        private double CalculateTransportCarbonFootprint(double distance, double fuelEfficiency, string fuelType)
        {
            // Define fuel type emission factors
            Dictionary<string, double> emissionFactors = new Dictionary<string, double>()
            {
                { "Gasoline", 2.3 },
                { "Diesel", 2.7 },
                { "Petrol", 1.5 },
                { "Electric", 0 } // No emissions for electric vehicles
            };

            // Calculate carbon footprint based on the selected fuel type
            double emissionFactor = emissionFactors[fuelType];
            return Math.Round(distance * fuelEfficiency * emissionFactor,2);
        }

        private double CalculateElectricityCarbonFootprint(double electricityUsage, string energySource)
        {
            // Define energy source carbon intensity factors
            Dictionary<string, double> carbonIntensityFactors = new Dictionary<string, double>()
            {
                { "Grid", 0.5 },
                { "Wind", 0.01 },
                { "Solar", 0.05 }
            };

            // Calculate carbon footprint based on the selected energy source
            double carbonIntensity = carbonIntensityFactors[energySource];
            return Math.Round(electricityUsage * carbonIntensity,2);
        }

        private void StoreTransportData(string vehicleType, double distance, string fuelType, double fuelEfficiency, string date, double carbonFootprint)
        {
            // Define the file path where you want to store the transportation data
            string filePath = Server.MapPath("~/App_Data/transportation_data.txt");

            // Format the data as a string
            string transportDataString = $"{vehicleType},{distance},{fuelType},{fuelEfficiency},{date},{carbonFootprint}";

            // Append the data to the text file
            File.AppendAllText(filePath, transportDataString + Environment.NewLine);
        }

        private void StoreElectricityData(string energySource, double electricityUsage, string date, double carbonFootprint)
        {
            // Define the file path where you want to store the electricity consumption data
            string filePath = Server.MapPath("~/App_Data/electricity_data.txt");

            // Format the data as a string
            string electricityDataString = $"{energySource},{electricityUsage},{date},{carbonFootprint}";

            // Append the data to the text file
            File.AppendAllText(filePath, electricityDataString + Environment.NewLine);
        }

        private void ClearTransportForm()
        {
            // Clear the input fields for transportation data
            txtDistance.Text = string.Empty;
            txtFuelEfficiency.Text = string.Empty;
        }

        private void ClearElectricityForm()
        {
            // Clear the input fields for electricity consumption data
            txtElectricityUsage.Text = string.Empty;
        }

        private List<TransportData> GetTransportDataFromSession()
        {
            // Retrieve transportation data from session variable or return a new list if not found
            return Session["TransportData"] as List<TransportData> ?? new List<TransportData>();
        }

        private List<ElectricityData> GetElectricityDataFromSession()
        {
            // Retrieve electricity consumption data from session variable or return a new list if not found
            return Session["ElectricityData"] as List<ElectricityData> ?? new List<ElectricityData>();
        }
    }

    // Class to represent transportation data model
    
}
