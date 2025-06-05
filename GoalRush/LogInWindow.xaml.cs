using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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
    public partial class LogInWindow : Window
    {
        public LogInWindow()
        {
            InitializeComponent();
        }

        private const string ConnectionString = "Server=localhost;Database=termekek;Uid=root;Password=;SslMode=None";

        private void New_Pf_Click(object sender, RoutedEventArgs e)
        {
            RegWindow regWindow = new RegWindow();
            regWindow.Show();
            this.Close();
        }

        private void Kilepes_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void Bejelentkezes_Click(object sender, RoutedEventArgs e)
        {
            string felhasznalonev = Log_Felh.Text.Trim();
            string jelszo = Log_Jelsz.Password;

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
                    string query = "SELECT * FROM felhasznalok WHERE `Felhasználó` = @felhasznalo AND `Jelszó` = @jelszo";
                    using (MySqlCommand cmd = new MySqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@felhasznalo", felhasznalonev);
                        cmd.Parameters.AddWithValue("@jelszo", jelszo);

                        int count = Convert.ToInt32(cmd.ExecuteScalar());

                        if (count == 1)
                        {
                            MainWindow mainWindow = new MainWindow();
                            mainWindow.Show();
                            this.Close();
                        }
                        else
                        {
                            MessageBox.Show("Hibás felhasználónév vagy jelszó!", "Bejelentkezés sikertelen", MessageBoxButton.OK, MessageBoxImage.Error);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Hiba történt a bejelentkezés során: " + ex.Message, "Hiba", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }
}
