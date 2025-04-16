import xforms;

public class Connector : XForm, using(Connector)
{   
   private onConnectTypeChange(group)
   {
      bool hostMode := group.SelectedIndex == 0;
      
      pnlClient.Visible := !hostMode;
      pnlHost.Visible := hostMode;   
   }

   private onQuit()
   {
      self.close();
      forward program.stop()
   }

   constructor new()
      <= super new()
   {
   }
}