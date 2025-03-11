<Form :Name="Connector" :Height="375" :Width="560" Caption="Up'N'Down: Establish connections with other players">
  <RadioButtonGroup :Name="rbgConnectType" :X="7" :Y="1" :Width="522" :Height="60" :SelectedIndex="0" Caption=" Begin game as... ">
    <Item Caption="&Host"></Item>
    <Item Caption="&Client"></Item>
  </RadioButtonGroup>
  <Panel :Name="GroupBox1" :X="7" :Y="62" :Width="522" :Height="49" Caption=" Player specification ">
    <Label :Name="Label1" :X="16" :Y="20" :Width="79" :Height="20" Caption="Your Name:"></Label>
    <Edit  :Name="txtUserName" :X="98" :Y="20" :Width="157" :Height="24"></Edit>
    <Label :Name="Label2" :X="263" :Y="20" :Width="95" :Height="20" Caption="Your Password:"></Label>
    <Edit  :Name="txtPassword" :X="377" :Y="20" :Width="115" :Height="24"></Edit>
  </Panel>
  <Button :Name="cmdQuit" :X="379" :Y="312" :Width="145" :Height="25" Caption="Quit Game">
  </Button>
  <Button :Name="cmdStart" :X="13" :Y="312" :Width="145" :Height="25" Caption="Start Game">
  </Button>
</Form>