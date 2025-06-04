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
    /// Interaction logic for Egyebek.xaml
    /// </summary>
    public partial class Egyebek : Window
    {
        public Egyebek()
        {
            InitializeComponent();
            EgyebBetoltes();
            MarkaBox.SelectedIndex = 0;
        }

        private void EgyebBetoltes()
        {
            string ConnectionString = "Server=localhost;Database=termekek;Uid=root;Password=;SslMode=None";

            try
            {
                using (MySqlConnection conn = new MySqlConnection(ConnectionString))
                {
                    conn.Open();
                    string sql = "SELECT `marka`, `nev`, `ar` FROM `egyebek` WHERE 1";
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
            var selectedItem = MarkaBox.SelectedItem as ComboBoxItem;
            if (selectedItem != null)
            {
                string marka = selectedItem.Content.ToString();
                string connStr = "Server=localhost;Database=termekek;Uid=root;Password=;SslMode=None;";

                using (MySqlConnection conn = new MySqlConnection(connStr))
                {
                    conn.Open();

                    string sql = "SELECT `marka`, `nev`, `ar` FROM `egyebek`";
                    MySqlCommand cmd = new MySqlCommand();

                    if (marka != "Mindegy")
                    {
                        sql += " WHERE `marka` = @marka";
                        cmd.Parameters.AddWithValue("@marka", marka);
                    }

                    cmd.Connection = conn;
                    cmd.CommandText = sql;

                    MySqlDataAdapter adapter = new MySqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);

                    DataGrid.ItemsSource = dt.DefaultView;
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

        private void Vissza_Click(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindow = new MainWindow();
            mainWindow.Show();
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
