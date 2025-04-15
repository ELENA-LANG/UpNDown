import xforms;

public class Connector : XForm, using(Connector)
{   
   onConnectTypeChange(group)
   {
      bool hostMode := group.SelectedIndex == 0;
      
      pnlClient.Visible := !hostMode;
      pnlHost.Visible := hostMode;   
   }

   constructor new()
      <= super new()
   {
   }
}