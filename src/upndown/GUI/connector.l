import xforms;

public class Connector : XForm, using(Connector)
{   
   private onConnectTypeChange(sender)
   {
      bool hostMode := sender.SelectedIndex == 0;
      
      pnlClient.Visible := !hostMode;
      pnlHost.Visible := hostMode;   
   }

   private onGameVariantChange(sender)
   {
      (sender.SelectedIndex) =>
         0 : {
            SPLabel.Visible := true;
            TPLabel.Visible := false;
            FPLabel.Visible := false;
            
            SecondPlayer.Visible := true;
            ThirdPlayer.Visible := false;
            FourthPlayer.Visible := false;
         }
         1 : {
            SPLabel.Visible := true;
            TPLabel.Visible := true;
            FPLabel.Visible := false;
            
            SecondPlayer.Visible := true;
            ThirdPlayer.Visible := true;
            FourthPlayer.Visible := false;
         }
         2 : {
            SPLabel.Visible := true;
            TPLabel.Visible := true;
            FPLabel.Visible := true;
            
            SecondPlayer.Visible := true;
            ThirdPlayer.Visible := true;
            FourthPlayer.Visible := true;
         }
   }

   private onUserNameChange(sender)
   {
      cmdSearch.Enabled := !txtUserName.Value.isEmpty()
   }

   private onPlayerChange(sender)
   {
      
   }

   private onQuit(sender)
   {
      self.close();
      forward program.stop()
   }

   constructor new()
      <= super new()
   {
   }
}