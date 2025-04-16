<Form :Name="Connector" :Height="375" :Width="560" Caption="Up'N'Down: Establish connections with other players">
  <RadioButtonGroup :Name="rbgConnectType" :X="7" :Y="1" :Width="522" :Height="60" :SelectedIndex="0" Caption=" Begin game as... " :onIndexChanged="&onConnectTypeChange">
    <Item Caption="&Host"></Item>
    <Item Caption="&Client"></Item>
  </RadioButtonGroup>
  <Panel :Name="GroupBox1" :X="7" :Y="62" :Width="522" :Height="49" Caption=" Player specification ">
    <Label :Name="Label1" :X="16" :Y="20" :Width="79" :Height="20" Caption="Your Name:"></Label>
    <Edit  :Name="txtUserName" :X="98" :Y="20" :Width="157" :Height="24"></Edit>
    <Label :Name="Label2" :X="263" :Y="20" :Width="120" :Height="20" Caption="Your Password:"></Label>
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
    <Button :Name="cmdSearch" :X="300" :Y="139" :Width="145" :Height="25" :Enabled="false" Caption="Search players">
    </Button>
    <Button :Name="cmdAccept" :X="300" :Y="168" :Width="145" :Height="25" :Enabled="false" Caption="Accept players">
    </Button>
    <Button :Name="cmdDeny" :X="300" :Y="168" :Width="145" :Height="25" :Visible="false" Caption="Refuse players">
    </Button>
    <Button :Name="cmdShowStat" :X="7" :Y="168" :Width="171" :Height="25" :Visible="false" Caption="Show All-Game Statistics">
    </Button>
  </Panel>
  <Panel :Name="pnlClient" :X="7" :Y="110" :Width="522" :Height="197" Caption=" Client panel " :Visible="false">
    <Button :Name="cmdConnect" :X="290" :Y="18" :Width="177" :Height="25" :Enabled="false" Caption="Try to connect">
    </Button>
    <Panel :Name="GroupBox2" :X="48" :Y="48" :Width="369" :Height="105" Caption="Connection status ">
      <Label :Name="NoConnectNotification" :X="32" :Y="21" :Width="241" :Height="20" Caption="Client not connected to anyone"></Label>
      <Label :Name="ConnectingNotification" :X="32" :Y="45" :Width="241" :Height="20" :Visible="false" Caption="Client searching for any host"></Label>
      <Label :Name="ConnectNotification" :X="32" :Y="69" :Width="241" :Height="20" :Visible="false" Caption="Client has connected with:"></Label>
      <Label :Name="HostName" :X="244" :Y="69" :Width="73" :Height="20" :Visible="false" Caption="HostName"></Label>
    </Panel>
    <Label :Name="Label5" :X="25" :Y="22" :Width="95" :Height="20" Caption="Enter Host IP:"></Label>
    <Edit  :Name="HostIP" :X="124" :Y="20" :Width="108" :Height="24"></Edit>
  </Panel>
  <Button :Name="cmdQuit" :X="379" :Y="312" :Width="145" :Height="25" Caption="Quit Game" :onClick="&onExit">
  </Button>
  <Button :Name="cmdStart" :X="13" :Y="312" :Width="145" :Height="25" Caption="Start Game">
  </Button>
</Form>