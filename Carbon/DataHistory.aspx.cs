using System;
using System.Collections.Generic;
using System.IO;
using System.Web.UI.WebControls;

namespace CarbonFootprintCalculator
{
    public partial class DataHistory : System.Web.UI.Page
    {
        private string transportDataFilePath;
        private string electricityDataFilePath;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                transportDataFilePath = Server.MapPath("~/App_Data/transportation_data.txt");
                electricityDataFilePath = Server.MapPath("~/App_Data/electricity_data.txt");

                PopulateTransportGrid();
                PopulateElectricityGrid();
            }
        }

        private List<TransportData> ReadTransportDataFromFile()
        {
            List<TransportData> transportDataList = new List<TransportData>();

            if (File.Exists(transportDataFilePath))
            {
                string[] lines = File.ReadAllLines(transportDataFilePath);
                foreach (string line in lines)
                {
                    string[] parts = line.Split(',');
                    if (parts.Length == 6)
                    {
                        TransportData transportData = new TransportData(
                            parts[0],
                            Convert.ToDouble(parts[1]),
                            parts[2],
                            Convert.ToDouble(parts[3]),
                            parts[4],
                            Convert.ToDouble(parts[5]));
                        transportDataList.Add(transportData);
                    }
                }
            }

            return transportDataList;
        }

        private List<ElectricityData> ReadElectricityDataFromFile()
        {
            List<ElectricityData> electricityDataList = new List<ElectricityData>();

            if (File.Exists(electricityDataFilePath))
            {
                string[] lines = File.ReadAllLines(electricityDataFilePath);
                foreach (string line in lines)
                {
                    string[] parts = line.Split(',');
                    if (parts.Length == 4)
                    {
                        ElectricityData electricityData = new ElectricityData(
                            parts[0],
                            Convert.ToDouble(parts[1]),
                            parts[2],
                            Convert.ToDouble(parts[3]));
                        electricityDataList.Add(electricityData);
                    }
                }
            }

            return electricityDataList;
        }

        private void PopulateTransportGrid()
        {
            List<TransportData> transportData = ReadTransportDataFromFile();
            if (transportData != null)
            {
                var tbody = transportDataGrid;
                tbody.Controls.Clear();

                foreach (var data in transportData)
                {
                    TableRow row = new TableRow();

                    TableCell vehicleTypeCell = new TableCell();
                    vehicleTypeCell.Text = data.VehicleType;
                    row.Cells.Add(vehicleTypeCell);

                    TableCell distanceCell = new TableCell();
                    distanceCell.Text = data.Distance.ToString();
                    row.Cells.Add(distanceCell);

                    TableCell fuelTypeCell = new TableCell();
                    fuelTypeCell.Text = data.FuelType;
                    row.Cells.Add(fuelTypeCell);

                    TableCell fuelEfficiencyCell = new TableCell();
                    fuelEfficiencyCell.Text = data.FuelEfficiency.ToString();
                    row.Cells.Add(fuelEfficiencyCell);

                    TableCell dateCell = new TableCell();
                    dateCell.Text = data.Date;
                    row.Cells.Add(dateCell);

                    TableCell carbonFootprintCell = new TableCell();
                    carbonFootprintCell.Text = data.CarbonFootprint.ToString();
                    row.Cells.Add(carbonFootprintCell);

                    tbody.Controls.Add(row);
                }
            }
        }

        private void PopulateElectricityGrid()
        {
            List<ElectricityData> electricityData = ReadElectricityDataFromFile();
            if (electricityData != null)
            {
                var tbody = electricityDataGrid;
                tbody.Controls.Clear();

                foreach (var data in electricityData)
                {
                    TableRow row = new TableRow();

                    TableCell energySourceCell = new TableCell();
                    energySourceCell.Text = data.EnergySource;
                    row.Cells.Add(energySourceCell);

                    TableCell electricityUsageCell = new TableCell();
                    electricityUsageCell.Text = data.ElectricityUsage.ToString();
                    row.Cells.Add(electricityUsageCell);

                    TableCell dateCell = new TableCell();
                    dateCell.Text = data.Date;
                    row.Cells.Add(dateCell);

                    TableCell carbonFootprintCell = new TableCell();
                    carbonFootprintCell.Text = data.CarbonFootprint.ToString();
                    row.Cells.Add(carbonFootprintCell);

                    tbody.Controls.Add(row);
                }
            }
        }
    }

    public class TransportData
    {
        public string VehicleType { get; set; }
        public double Distance { get; set; }
        public string FuelType { get; set; }
        public double FuelEfficiency { get; set; }
        public string Date { get; set; }
        public double CarbonFootprint { get; set; }

        public TransportData(string vehicleType, double distance, string fuelType, double fuelEfficiency, string date, double carbonFootprint)
        {
            VehicleType = vehicleType;
            Distance = distance;
            FuelType = fuelType;
            FuelEfficiency = fuelEfficiency;
            Date = date;
            CarbonFootprint = carbonFootprint;
        }
    }

    public class ElectricityData
    {
        public string EnergySource { get; set; }
        public double ElectricityUsage { get; set; }
        public string Date { get; set; }
        public double CarbonFootprint { get; set; }

        public ElectricityData(string energySource, double electricityUsage, string date, double carbonFootprint)
        {
            EnergySource = energySource;
            ElectricityUsage = electricityUsage;
            Date = date;
            CarbonFootprint = carbonFootprint;
        }
    }
}
