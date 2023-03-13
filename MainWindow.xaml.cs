using Microsoft.Win32;
using Microsoft.WindowsAPICodePack.Dialogs;
using System;
using System.Collections.Generic;
using System.IO;
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
using Path = System.IO.Path;

namespace AudioPlayer
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private MediaPlayer player;
        public MainWindow()
        {
            InitializeComponent();
        }

        private void FindMusic(object sender, RoutedEventArgs e)
        {
            CommonOpenFileDialog dialog = new CommonOpenFileDialog { IsFolderPicker = true };
            var result = dialog.ShowDialog();

            if (result == CommonFileDialogResult.Ok) 
            {
                MusicList.Items.Clear();
                
                string[] files = Directory.GetFiles(dialog.FileName, "*.*")
                                            .Where(s => s.EndsWith(".mp3") || s.EndsWith(".mp4"))
                                            .ToArray();
                foreach (string file in files)
                {
                    MusicList.Items.Add(Path.GetFileName(file));
                }

                var FirstFile = files[0];
                if (Path.GetExtension(FirstFile) == ".mp4")
                {
                    Player.Source = new Uri(files[0]);
                }
                else
                {
                    Player.Source = new Uri("C:\\Users\\Shuvi\\Music\\noimage.jpg");
                }
            }
        }
    }
}
