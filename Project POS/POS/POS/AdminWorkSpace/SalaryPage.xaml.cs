﻿using POS.Repository.DAL;
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

namespace POS.AdminWorkSpace
{
    /// <summary>
    /// Interaction logic for SalaryPage.xaml
    /// </summary>
    public partial class SalaryPage : Page
    {
        AdminwsOfAsowell _unitofwork;
        public SalaryPage(AdminwsOfAsowell unitofwork)
        {
            InitializeComponent();

            _unitofwork = unitofwork;
            unitofwork.SalaryNoteRepository.Get(sn => sn.EmpId == "");
            unitofwork.WorkingHistoryRepository.Get();
        }

        private void lvData_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
    }
}
