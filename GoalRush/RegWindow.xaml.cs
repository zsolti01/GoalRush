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
using System.Windows.Shapes;
using MySql.Data.MySqlClient;

namespace GoalRush
{
    /// <summary>
    /// Interaction logic for RegWindow.xaml
    /// </summary>
    public partial class RegWindow : Window
    {
        public RegWindow()
        {
            InitializeComponent();
        }
        private const string ConnectionString = "Server=localhost;Database=sportkellekek;Uid=root;Password=;SslMode=None";

        private void LogIn_Click(object sender, RoutedEventArgs e)
        {
            string felhasznalonev = Reg_Felh.Text.Trim();
            string jelszo = Reg_Jelszo.Password;

            if (string.IsNullOrWhiteSpace(felhasznalonev) || string.IsNullOrWhiteSpace(jelszo))
            {
                MessageBox.Show("Kérlek add meg a felhasználónevet és jelszót!", "Hiányzó adat", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }

            try
            {
                using (MySqlConnection conn = new MySqlConnection(ConnectionString))
                {
                    conn.Open();
                    string query = "INSERT INTO felhasznalok (Felhasználó, Jelszó) VALUES (@felhasznalo, @jelszo)";
                    using (MySqlCommand cmd = new MySqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@felhasznalo", felhasznalonev);
                        cmd.Parameters.AddWithValue("@jelszo", jelszo);
                        cmd.ExecuteNonQuery();
                    }

                    MessageBox.Show("Sikeres regisztráció!", "Kész", MessageBoxButton.OK, MessageBoxImage.Information);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Hiba történt a regisztráció során: " + ex.Message, "Hiba", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void Marvanprofil_Click(object sender, RoutedEventArgs e)
        {
            LogInWindow logInWindow = new LogInWindow();
            logInWindow.Show();
            this.Close();
        }

        private void Kilepes_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
