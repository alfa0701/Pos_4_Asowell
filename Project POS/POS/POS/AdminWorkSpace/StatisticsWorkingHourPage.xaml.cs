﻿using LiveCharts;
using POS.Repository.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using LiveCharts.Wpf;
using POS.Entities;

namespace POS.AdminWorkSpace
{
    /// <summary>
    /// Interaction logic for StatisticsWorkingHourPage.xaml
    /// </summary>
 
    public partial class StatisticsWorkingHourPage : Page
    {
        
        public SeriesCollection SeriesCollection { get; set; }
        private ChartValues<double> Values;
        private AdminwsOfCloudPOS _unitofwork;
        public Func<double, string> Formatter { get; set; }
        public Dictionary<string, double> WHList;
        public List<string> Labels { get; set; }
        public StatisticsWorkingHourPage(AdminwsOfCloudPOS unitofwork)
        {
            _unitofwork =unitofwork ;
            InitializeComponent();
            Values = new ChartValues<double>();
           
            
            SeriesCollection = new SeriesCollection
            {
                new ColumnSeries
                {
                    Title = "Working Hour",
                    Values = Values
                }
            };
            Labels = new List<string>();
            Formatter = value => value.ToString();
            WHList = new Dictionary<string, double>();
            ChartDataFilling(false);

        }
        private void ChartDataFilling(bool isfilter)
        {
            WHList.Clear();

            List<SalaryNote> SalaryDetailsWithTime = new List<SalaryNote>();
            if (isfilter)
            {
                SalaryDetailsWithTime = _unitofwork.SalaryNoteRepository.Get(x =>
                    x.ForYear == DpTimeFilter.SelectedDate.Value.Year
                    && x.ForMonth == DpTimeFilter.SelectedDate.Value.Month).ToList();
            }
            else
            {
                SalaryDetailsWithTime = _unitofwork.SalaryNoteRepository.Get().ToList();
            }


            // var td = from o in OrderList join pr in ProductList on o.ProductId equals pr.ProductId select o;
            double count = 0;
            foreach (var item in _unitofwork.EmployeeRepository.Get())
            {
                foreach (var item2 in SalaryDetailsWithTime.Where(o => o.EmpId.Equals(item.EmpId)))
                {
                    count = item2.WorkHour;
                }
                WHList.Add(item.Name, count);
                count = 0;
            }


            Values.Clear();
            Labels.Clear();
            foreach (var item in WHList)
            {
                Values.Add(item.Value);
                Labels.Add(item.Key);
            }

            DataContext = this;
        }

        private void DpTimeFilter_OnSelectedDateChanged(object sender, SelectionChangedEventArgs e)
        {
            ChartDataFilling(true);
        }
    }
}
