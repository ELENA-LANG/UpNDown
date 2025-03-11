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
  <Panel :Name="pnlHost" :X="7" :Y="110" :Width="522" :Height="197" Caption=" Host panel ">
    <RadioButtonGroup :Name="GameVariant" :X="10" :Y="18" :Width="191" :Height="118" :SelectedIndex="2" Caption=" Choose game variant ">
      <Item Caption="Two players"></Item>
      <Item Caption="Three players"></Item>
      <Item Caption="Four players"></Item>
    </RadioButtonGroup>
    <Panel :Name="PlayersPanel" :X="215" :Y="18" :Width="274" :Height="118" Caption="Choose players">
      <Label :Name="SPLabel" :X="14" :Y="25" :Width="100" :Height="20" Caption="Second player"></Label>
      <Label :Name="TPLabel" :X="14" :Y="54" :Width="100" :Height="20" Caption="Third player"></Label>
      <Label :Name="FPLabel" :X="14" :Y="85" :Width="100" :Height="20" Caption="Fourth player"></Label>
      <Combobox :Name="SecondPlayer" :X="122" :Y="25" :Width="141" :Height="120"></Combobox>
      <Combobox :Name="ThirdPlayer" :X="122" :Y="54" :Width="141" :Height="120"></Combobox>
      <Combobox :Name="FourthPlayer" :X="122" :Y="85" :Width="141" :Height="120"></Combobox>
    </Panel>
  </Panel>
  <Button :Name="cmdQuit" :X="379" :Y="312" :Width="145" :Height="25" Caption="Quit Game">
  </Button>
  <Button :Name="cmdStart" :X="13" :Y="312" :Width="145" :Height="25" Caption="Start Game">
  </Button>
</Form>