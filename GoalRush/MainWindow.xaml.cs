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

namespace GoalRush
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
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

        private void Cipok_Click(object sender, RoutedEventArgs e)
        {
            Focicipok focicipok = new Focicipok();
            focicipok.Show();
            this.Close();
        }

        private void Labdak_Click(object sender, RoutedEventArgs e)
        {
            Focilabdak focilabdak = new Focilabdak();
            focilabdak.Show();
            this.Close();
        }

        private void egyebek_Click(object sender, RoutedEventArgs e)
        {
            Egyebek egyebek = new Egyebek();
            egyebek.Show();
            this.Close();
        }
    }
}
