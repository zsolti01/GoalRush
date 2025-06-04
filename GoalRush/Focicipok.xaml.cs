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
            MarkaBox.SelectedIndex = 0;
            MeretBox.SelectedIndex = 0;
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

        private void FrissitesSzures()
        {
            string connStr = "Server=localhost;Database=termekek;Uid=root;Password=;SslMode=None;";
            string markaSzuro = (MarkaBox.SelectedItem as ComboBoxItem)?.Content.ToString() ?? "Minden";
            string meretSzuro = (MeretBox.SelectedItem as ComboBoxItem)?.Content.ToString() ?? "Minden";

            try
            {
                using (MySqlConnection conn = new MySqlConnection(connStr))
                {
                    conn.Open();

                    string sql = "SELECT `marka`, `nev`, `ar`, `meret` FROM `focicipok` WHERE 1=1";

                    if (markaSzuro != "Minden")
                        sql += " AND marka = @marka";

                    if (meretSzuro != "Minden")
                        sql += " AND meret = @meret";

                    MySqlCommand cmd = new MySqlCommand(sql, conn);

                    if (markaSzuro != "Minden")
                        cmd.Parameters.AddWithValue("@marka", markaSzuro);

                    if (meretSzuro != "Minden")
                        cmd.Parameters.AddWithValue("@meret", meretSzuro);

                    MySqlDataAdapter adapter = new MySqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);
                    DataGrid.ItemsSource = dt.DefaultView;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Hiba: " + ex.Message);
            }
        }

        private void MarkaBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            FrissitesSzures();
        }

        private void MeretBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            FrissitesSzures();
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
