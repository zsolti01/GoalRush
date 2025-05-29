using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
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
using System.Windows.Shapes;

namespace GoalRush
{
    /// <summary>
    /// Interaction logic for Focicipok.xaml
    /// </summary>
    public partial class Focicipok : Window
    {
        public Focicipok()
        {
            InitializeComponent();
            CipoBetoltes();
        }

        private void CipoBetoltes()
        {
            string ConnectionString = "Server=localhost;Database=termekek;Uid=root;Password=;SslMode=None";

            try
            {
                using (MySqlConnection conn = new MySqlConnection(ConnectionString))
                {
                    conn.Open();
                    string sql = "SELECT `marka`, `nev`, `ar`, `meret` FROM `focicipok` WHERE 1";
                    MySqlCommand cmd = new MySqlCommand(sql, conn);
                    MySqlDataAdapter adapter = new MySqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);
                    DataGrid.ItemsSource = dt.DefaultView;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Hiba" + ex.Message);
            }
        }

        private void MarkaBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (MarkaBox.SelectedItem != null)
            {
                string marka = MarkaBox.SelectedItem.ToString();

                string connStr = "Server=localhost;Database=termekek;Uid=root;Password=;SslMode=None;";
                using (MySqlConnection conn = new MySqlConnection(connStr))
                {
                    conn.Open();
                    string sql = "SELECT `id`, `marka`, `nev`, `ar`, `meret`, `leiras`, `raktaron` FROM `focicipok` WHERE `marka` = @marka";
                    MySqlCommand cmd = new MySqlCommand(sql, conn);
                    cmd.Parameters.AddWithValue("@marka", marka);
                    MySqlDataAdapter adapter = new MySqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);
                    DataGrid.ItemsSource = dt.DefaultView;
                    DataGrid.Items.Refresh();
                }
            }
        }

        private void Kilepes_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void Kijelentkezes_Click(object sender, RoutedEventArgs e)
        {
            LogInWindow logInWindow = new LogInWindow();
            logInWindow.Show();
            this.Close();
        }

        private void logo_Click(object sender, MouseButtonEventArgs e)
        {
            MainWindow mainWindow = new MainWindow();
            mainWindow.Show();
            this.Close();
        }

        private void vissza_Click(object sender, MouseButtonEventArgs e)
        {
            MainWindow mainwindow = new MainWindow();
            mainwindow.Show();
            this.Close();
        }
    }
}
