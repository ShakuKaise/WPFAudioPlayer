   M S B A M L   `   `   `  ����F  BAudioPlayer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:AudioPlayerAudioPlayer  5   	       AudioPlayer.MainWindow   5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:AudioPlayer     5   	     � Title$  
MainWindow��5	   	   $	��450��6   $	��800��6)   .��5
      �  � RowDefinitions 5   
   �� 5      6   �� 5      6   �� 5      6   �� 5      6    � ColumnDefinitions 5   
   �� 5      6!   �� 5      6!   �� 5      6!   �� 5      6!   .+�5   
   �� -   5         ��Name$ 	MusicList��5      $��3��6P   $��0,0,0,1q�6a   �� 5   
   -   5         ��Name$ FindMusicBtn��5      $��Button��5      $��3��5      $��0��5       � Cursor$
 Hand��5      r� 5   
   -   5         r�Name$ Player��5      $��3��5      $��3��5       $��1��5!      $��0��5"       r� LoadedBehavior$ Manual=�5#      5$   8   �� 5%   
   -   5         ��Name$ MediaSlider��5%      	 � Minimum$	 0Q�5&      
 � Maximum$	
 100Q�5'       � Value$ 0Q�5(      $��1��5)      $��3��5*      $��3��5+      5,      �� 5-   
   -   5        $ PlayStop��5-      ${�False��5.      $��2��50      $��3��51      $��Center=�52      $��Center=�53      ��5/      0  *MaterialDesignThemes.Wpf.PackIconExtension  *	PlayPause+54      �� 56   
   -   5        $ SkipPrevious��56      ${�False��57      $��2��59      $��3��5:      $
��Left=�5;      $��Center=�5<      ��58        *SkipPrevious+5=      �� 5?   
   -   5        $ SkipNext��5?      ${�False��5@      $��2��5B      $��3��5C      $��Right=�5D      $��Center=�5E      ��5A        *
SkipNext+5F      5H      5I      