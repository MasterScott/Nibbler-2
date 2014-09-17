VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form frmMain 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Nibbler 0.4a - havoc.ws"
   ClientHeight    =   10215
   ClientLeft      =   150
   ClientTop       =   780
   ClientWidth     =   11640
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   10215
   ScaleWidth      =   11640
   StartUpPosition =   3  'Windows Default
   Begin MSComDlg.CommonDialog annoyingPopups 
      Left            =   8400
      Top             =   9720
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock sckConnection 
      Left            =   10800
      Tag             =   "handles HTTP Async without errors"
      Top             =   9600
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.CheckBox ckHTTP 
      Caption         =   "HTTP Async"
      Height          =   255
      Left            =   1680
      TabIndex        =   37
      Top             =   1560
      Width           =   1455
   End
   Begin VB.CheckBox chkHoneypot 
      Caption         =   "Honeypot Mode"
      Height          =   255
      Left            =   120
      TabIndex        =   36
      Top             =   1560
      Width           =   1455
   End
   Begin MSWinsockLib.Winsock iSpeak 
      Left            =   11280
      Top             =   9600
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock iListen 
      Left            =   11280
      Top             =   9240
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.CommandButton Command9 
      Caption         =   "Clear"
      Height          =   315
      Left            =   240
      TabIndex        =   29
      Top             =   9240
      Width           =   5415
   End
   Begin VB.CommandButton Command7 
      Caption         =   "Disconnect"
      Height          =   375
      Left            =   120
      TabIndex        =   27
      Top             =   1080
      Width           =   3255
   End
   Begin VB.Frame Frame2 
      Caption         =   "Data Monitor Lizard"
      Height          =   4815
      Left            =   120
      TabIndex        =   23
      Top             =   4920
      Width           =   11415
      Begin VB.CommandButton Command8 
         Caption         =   "Clear"
         Height          =   315
         Left            =   5760
         TabIndex        =   28
         Top             =   4320
         Width           =   5415
      End
      Begin RichTextLib.RichTextBox text1 
         Height          =   3735
         Left            =   120
         TabIndex        =   33
         Top             =   480
         Width           =   5415
         _ExtentX        =   9551
         _ExtentY        =   6588
         _Version        =   393217
         Enabled         =   -1  'True
         ScrollBars      =   2
         TextRTF         =   $"frmMain.frx":15371
      End
      Begin RichTextLib.RichTextBox text2 
         Height          =   3735
         Left            =   5760
         TabIndex        =   35
         Top             =   480
         Width           =   5415
         _ExtentX        =   9551
         _ExtentY        =   6588
         _Version        =   393217
         Enabled         =   -1  'True
         ScrollBars      =   2
         TextRTF         =   $"frmMain.frx":153F3
      End
      Begin VB.Label Label9 
         Alignment       =   2  'Center
         Caption         =   "Unicode"
         Height          =   255
         Left            =   840
         TabIndex        =   25
         Top             =   240
         Width           =   3615
      End
      Begin VB.Label Label8 
         Alignment       =   2  'Center
         Caption         =   "Hexadecimal"
         Height          =   255
         Left            =   6840
         TabIndex        =   24
         Top             =   240
         Width           =   3615
      End
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Key entered in hexadecimal"
      Height          =   255
      Left            =   120
      TabIndex        =   15
      Top             =   4560
      Width           =   3375
   End
   Begin VB.OptionButton Option4 
      Caption         =   "N/A"
      Height          =   195
      Left            =   2640
      TabIndex        =   14
      Top             =   4200
      Value           =   -1  'True
      Width           =   735
   End
   Begin VB.OptionButton optXOR 
      Caption         =   "XOR"
      Height          =   195
      Left            =   1800
      TabIndex        =   13
      Top             =   4200
      Width           =   735
   End
   Begin VB.OptionButton optAES 
      Caption         =   "AES"
      Enabled         =   0   'False
      Height          =   195
      Left            =   960
      TabIndex        =   12
      Top             =   4200
      Width           =   735
   End
   Begin VB.OptionButton optRC4 
      Caption         =   "RC4"
      Height          =   195
      Left            =   120
      TabIndex        =   11
      Top             =   4200
      Width           =   735
   End
   Begin VB.TextBox tEncKey 
      Height          =   1815
      Left            =   120
      TabIndex        =   9
      Top             =   2280
      Width           =   3255
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Listen"
      Height          =   375
      Left            =   1800
      TabIndex        =   8
      Top             =   720
      Width           =   1575
   End
   Begin VB.TextBox txtLocal 
      Height          =   285
      Left            =   2280
      TabIndex        =   6
      Text            =   "999"
      Top             =   360
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Connect Client"
      Height          =   375
      Left            =   120
      TabIndex        =   5
      Top             =   720
      Width           =   1695
   End
   Begin VB.TextBox txtPort 
      Height          =   285
      Left            =   1320
      TabIndex        =   4
      Text            =   "998"
      Top             =   360
      Width           =   975
   End
   Begin VB.TextBox txtIP 
      Height          =   285
      Left            =   120
      TabIndex        =   1
      Text            =   "127.0.0.1"
      Top             =   360
      Width           =   1215
   End
   Begin VB.Frame Frame1 
      Caption         =   "Packet Forge"
      Height          =   4815
      Left            =   3600
      TabIndex        =   16
      Top             =   0
      Width           =   7935
      Begin VB.Timer tmrColor 
         Interval        =   250
         Left            =   1920
         Top             =   3480
      End
      Begin RichTextLib.RichTextBox asciibox 
         Height          =   1695
         Left            =   120
         TabIndex        =   30
         Top             =   480
         Width           =   7575
         _ExtentX        =   13361
         _ExtentY        =   2990
         _Version        =   393217
         Enabled         =   -1  'True
         ScrollBars      =   2
         TextRTF         =   $"frmMain.frx":15475
      End
      Begin VB.CommandButton Command6 
         Caption         =   "Send to bot"
         Height          =   375
         Left            =   120
         TabIndex        =   20
         Top             =   4320
         Width           =   3495
      End
      Begin VB.CommandButton Command2 
         Caption         =   "Send to Server"
         Height          =   375
         Left            =   4200
         TabIndex        =   19
         Top             =   4320
         Width           =   3495
      End
      Begin VB.CommandButton Command3 
         Caption         =   "Text to Hex"
         Height          =   255
         Left            =   3360
         TabIndex        =   18
         Top             =   2280
         Width           =   2055
      End
      Begin VB.CommandButton Command4 
         Caption         =   "Hex to Text"
         Height          =   255
         Left            =   5640
         TabIndex        =   17
         Top             =   2280
         Width           =   2055
      End
      Begin RichTextLib.RichTextBox hexbox 
         Height          =   1575
         Left            =   120
         TabIndex        =   31
         Top             =   2640
         Width           =   7575
         _ExtentX        =   13361
         _ExtentY        =   2778
         _Version        =   393217
         Enabled         =   -1  'True
         ScrollBars      =   2
         TextRTF         =   $"frmMain.frx":154F7
      End
      Begin VB.Label Label6 
         Caption         =   "ASCII Rendering"
         Height          =   255
         Left            =   240
         TabIndex        =   22
         Top             =   240
         Width           =   2415
      End
      Begin VB.Label Label5 
         Caption         =   "Hex Rendering"
         Height          =   255
         Left            =   240
         TabIndex        =   21
         Top             =   2280
         Width           =   2415
      End
   End
   Begin RichTextLib.RichTextBox RichTextBox1 
      Height          =   1695
      Left            =   240
      TabIndex        =   32
      Top             =   5400
      Width           =   7575
      _ExtentX        =   13361
      _ExtentY        =   2990
      _Version        =   393217
      Enabled         =   -1  'True
      ScrollBars      =   2
      TextRTF         =   $"frmMain.frx":15579
   End
   Begin RichTextLib.RichTextBox RichTextBox2 
      Height          =   3735
      Left            =   5880
      TabIndex        =   34
      Top             =   5400
      Width           =   5415
      _ExtentX        =   9551
      _ExtentY        =   6588
      _Version        =   393217
      Enabled         =   -1  'True
      ScrollBars      =   2
      TextRTF         =   $"frmMain.frx":155FB
   End
   Begin VB.Label Label10 
      Caption         =   "XMPP: Cryptotoad@J3ws.biz"
      Height          =   375
      Left            =   9000
      TabIndex        =   26
      Top             =   9840
      Width           =   2535
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      FillColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   240
      Top             =   9840
      Width           =   255
   End
   Begin VB.Label Label4 
      Caption         =   "Encryption Key"
      Height          =   255
      Left            =   120
      TabIndex        =   10
      Top             =   2040
      Width           =   3255
   End
   Begin VB.Label Label7 
      Caption         =   "Port (L)"
      Height          =   255
      Left            =   2760
      TabIndex        =   7
      Top             =   120
      Width           =   1215
   End
   Begin VB.Label Label3 
      Caption         =   "Port (R)"
      Height          =   255
      Left            =   1440
      TabIndex        =   3
      Top             =   120
      Width           =   1215
   End
   Begin VB.Label Label2 
      Caption         =   "IPV4"
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   1575
   End
   Begin VB.Label lblStatus 
      Height          =   255
      Left            =   720
      TabIndex        =   0
      Top             =   9840
      Width           =   4095
   End
   Begin VB.Menu mFile 
      Caption         =   "File"
      Begin VB.Menu mnuExploit 
         Caption         =   "Craft Exploit"
      End
      Begin VB.Menu mExit 
         Caption         =   "Exit"
      End
   End
   Begin VB.Menu mOptions 
      Caption         =   "Options"
      Begin VB.Menu mHoney 
         Caption         =   "Configure Honeypot"
         Enabled         =   0   'False
      End
      Begin VB.Menu mFilters 
         Caption         =   "Configure Packet Filters"
         Enabled         =   0   'False
      End
      Begin VB.Menu mnuOptions 
         Caption         =   "Options"
      End
   End
   Begin VB.Menu mAbout 
      Caption         =   "About"
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

'Declare our streams. Byte() is never used since we convert to hex, but declare it in case we decide to use it later.
Public clientStream As String
Dim clientStream2() As Byte
Public botStream As String
Dim botStream2() As Byte

'Declare our packet filters
Public inboundFilter As clsPacketFilter
Public outboundFilter As clsPacketFilter

'Declare our hold the phone objects
Public inboundPhone As youveGotMail
Public outboundPhone As youveGotMail





Private Sub chkHoneypot_Click()

    If chkHoneypot.Value = 1 Then
        annoyingPopups.DialogTitle = "Select output file"
        annoyingPopups.FileName = "output.nib"
        annoyingPopups.Filter = "Nibbler Output File (*.nib)"
        annoyingPopups.InitDir = App.Path
        annoyingPopups.ShowSave
    End If
    
End Sub

Private Sub Command1_Click()

If txtIP.Text = "127.0.0.1" And txtPort.Text = txtLocal.Text Then
    MsgBox "You cannot plug a power strip into itself."
    Exit Sub
End If

If iSpeak.State <> sckClosed Then
    'close socket so we don't throw an error if it's connected.
    iSpeak.Close
End If

    iSpeak.RemoteHost = txtIP.Text
    iSpeak.RemotePort = txtPort.Text
    iSpeak.Connect

End Sub


Private Sub Command2_Click()
    If iSpeak.State = sckConnected Then
        iSpeak.SendData applyCrypto(HexToString(hexbox.Text), 1)
        
        text1.Text = text1.Text & vbNewLine & "[SPOOF][BOT] " & HexToString(hexbox.Text)
        text2.Text = text2.Text & vbNewLine & "[SPOOF][BOT] " & hexbox.Text
    End If
End Sub

Private Sub Command5_Click()

    
    If sckConnection.State <> sckListening And sckConnection.State <> sckConnected Then
        sckConnection.Close
        sckConnection.LocalPort = txtLocal.Text
        sckConnection.Listen
    End If

End Sub

''''''''''''''''''''''''''''''


Private Sub Command3_Click()
    hexbox.Text = StringToHex(asciibox.Text)
End Sub

Private Sub Command4_Click()
    asciibox.Text = HexToString(hexbox.Text)
End Sub

Private Sub Command6_Click()
    If iListen.State = sckConnected Then
        iListen.SendData applyCrypto(HexToString(hexbox.Text), 1)
        text1.Text = text1.Text & vbNewLine & "[SPOOF][SERV] " & HexToString(hexbox.Text)
        text2.Text = text2.Text & vbNewLine & "[SPOOF][SERV] " & hexbox.Text
    End If
End Sub


Private Sub Command7_Click()
    iSpeak.Close
    iListen.Close
    sckConnection.Close
    Shape1.BackColor = &HFF&
    
End Sub

Private Sub Command8_Click()
    text2.Text = ""
End Sub

Private Sub Command9_Click()
    text1.Text = ""
End Sub

''''''''''''''''''''''''''''''

Private Sub Form_Load()
    setupShellcodes
    
    Debug.Print vbNewLine & vbNewLine & vbNewLine & vbNewLine & vbNewLine

    'Filters done, let's set up hold the phone
    Set inboundPhone = New youveGotMail
    Set outboundPhone = New youveGotMail
    inboundPhone.clearAll
    outboundPhone.clearAll
    

    
    
End Sub

Private Sub Form_Unload(Cancel As Integer)
End

End Sub

Private Sub iListen_Close()
    
    If ckHTTP.Value = 1 Then
        Command5_Click
    End If
    
End Sub

Private Sub iListen_Connect()
    
    If iSpeak.State = sckConnected Then
    
        'MsgBox inboundPhone.getCount & "[IB]"
        
        While inboundPhone.getCount > 0
            inboundPhone.popMessage
            iListen.SendData inboundPhone.myData
            Debug.Print "[HTP]" & inboundPhone.myData
        Wend
    Else
        'Debug.Print "dafuq?"
    End If

End Sub

Private Sub iSpeak_Connect()
    
    If iListen.State = sckConnected Then
    
        'MsgBox outboundPhone.getCount & "[OB]"
        While outboundPhone.getCount > 0
            outboundPhone.popMessage
            iListen.SendData outboundPhone.myData
            Debug.Print "[HTP] " & outboundPhone.myData
        Wend
    Else
        'Debug.Print "dafuq?"
    End If
    
End Sub

Private Sub iListen_ConnectionRequest(ByVal requestID As Long)
    
    If iListen.State <> sckClosed Then
          iListen.Close
    End If
    
    iListen.Accept (requestID)
    Shape1.BackColor = &HFF00&
    'MsgBox "Connection recieved!"
    'iListen.SendData "Hello?"
    
  

End Sub

Private Sub iListen_DataArrival(ByVal bytesTotal As Long)
    iListen.GetData botStream
    
    botStream = applyCrypto(botStream, 0)
    

    If strData = Chr(0) Then                    'server says c'mon in
        Exit Sub                                'no need to process further
    End If
    
    'botStream = outboundFilter.applyFilters(botStream)
    
    If iSpeak.State = sckConnected Then
    
        text1.Text = text1.Text & vbNewLine & "[BOT] " & botStream
    
        text2.Text = text2.Text & vbNewLine & "[BOT] " & StringToHex(botStream)
    
    Else
    
        If ckHTTP.Value = 1 Then
            iSpeak.Connect
        
            text1.Text = text1.Text & vbNewLine & "[BOT] " & botStream
    
            text2.Text = text2.Text & vbNewLine & "[BOT] " & StringToHex(botStream)
            
        Else
        text1.Text = text1.Text & vbNewLine & "[HOLD][BOT] " & botStream
    
        text2.Text = text2.Text & vbNewLine & "[HOLD][BOT] " & StringToHex(botStream)
        End If

    End If
    
    If chkHoneypot.Value = 1 Then
        Dim gelatin As Integer
        gelatin = FreeFile
        
        Open App.Path & "/" & annoyingPopups.FileName For Append As #gelatin
            Print #gelatin, "[BOT]" & botStream & vbCrLf
        Close #gelatin
    End If
    
    'text3.Text = Form2.text3.Text & vbNewLine & "[BOT] " & StrConv(botStream, vbFromUnicode)
    
    botStream = applyCrypto(botStream, 1)
    If iSpeak.State = sckConnected Then
        iSpeak.SendData (botStream)
    Else
        'hold the phone
        outboundPhone.myData = botStream
        outboundPhone.pushMessage
    End If
    
End Sub

Public Function applyCrypto(packetStream As String, ident As Integer) As String
    'Debug.Print "Attempting to apply cryptographic stripping. " & ident
    
    If tEncKey.Text = "" Or Option4.Value = True Then
        'Debug.Print "No cryptography enabled. Exiting crypto function."
        applyCrypto = packetStream
        Exit Function
    End If

    Dim tempStream As String
    
    If ident = 0 Then ' if we're decrypting
        If optRC4.Value = True Then
            'we decrypt the stream as it comes in
            If Check1.Value = True Then
                'if we're using hexadecimal for the key
                tempStream = RC4(packetStream, HexToString(tEncKey.Text))
            Else
                tempStream = RC4(packetStream, tEncKey.Text)
            End If
        ElseIf optXOR.Value = True Then
            'we decrypt the stream as it comes in
            If Check1.Value = True Then
                'if we're using hexadecimal for the key
                tempStream = XOREnc(packetStream, HexToString(tEncKey.Text))
            Else
                tempStream = XOREnc(packetStream, tEncKey.Text)
            End If
        End If
    ElseIf ident = 1 Then ' if we're encrypting
        If optRC4.Value = True Then
            'we encrypt the stream as it comes in
            If Check1.Value = True Then
                'if we're using hexadecimal for the key
                tempStream = RC4(packetStream, HexToString(tEncKey.Text))
            Else
                tempStream = RC4(packetStream, tEncKey.Text)
            End If
        ElseIf optXOR.Value = True Then
            'we decrypt the stream as it comes in
            If Check1.Value = True Then
                'if we're using hexadecimal for the key
                tempStream = XOREnc(packetStream, HexToString(tEncKey.Text))
            Else
                tempStream = XOREnc(packetStream, tEncKey.Text)
            End If
        End If
    End If
    
    applyCrypto = tempStream
    
End Function



Private Sub iSpeak_DataArrival(ByVal bytesTotal As Long)
On Error GoTo errorz:
    
    iSpeak.GetData clientStream
    'iSpeak.GetData clientStream2
    
    
    If clientStream = Chr(0) Then               'server says c'mon in
        Exit Sub
    End If
    
    'Debug.Print "****" & clientStream
    
    clientStream = applyCrypto(clientStream, 0) ' run decryption
    
    'Debug.Print "****" & clientStream
    
    'clientStream = inboundFilter.applyFilters(clientStream)
    
    If iListen.State = sckConnected Then
    
        text1.Text = text1.Text & vbNewLine & "[SERV] " & clientStream
        
        text2.Text = text2.Text & vbNewLine & "[SERV] " & StringToHex(clientStream)
    
    Else
    
        text1.Text = text1.Text & vbNewLine & "[HOLD][SERV] " & clientStream
        
        text2.Text = text2.Text & vbNewLine & "[HOLD][SERV] " & StringToHex(clientStream)
        
    End If
    
    If chkHoneypot.Value = 1 Then
        Dim gelatin As Integer
        gelatin = FreeFile
        
        Open App.Path & "/" & annoyingPopups.FileName For Append As #gelatin
            Print #gelatin, "[SERV]" & clientStream & vbCrLf
        Close #gelatin
    End If
    
    'Form2.text3.Text = Form2.text3.Text & vbNewLine & "[SERV] " & StrConv(clientStream, vbFromUnicode)
    
    'Debug.Print clientStream
    
    clientStream = applyCrypto(clientStream, 1) ' run encryption so we can pass the stream along as if it was never messed with :P
    
    If iListen.State = sckConnected Then
        iListen.SendData (clientStream)
    Else
        'Hold the phone
        inboundPhone.myData = clientStream
        inboundPhone.pushMessage
    End If
errorz:
    Debug.Print "Error attempting to send data"
    
    
End Sub

Private Sub mAbout_Click()
    frmAbout.Show
End Sub

Private Sub mExit_Click()
    End
End Sub

Private Sub mFilters_Click()
    frmFilters.Show
End Sub

Private Sub mHoney_Click()
    frmHoney.Show
End Sub

Private Sub mnuExploit_Click()
    frmSploitzzz.Show
End Sub

Private Sub mnuOptions_Click()
    frmOptions.Show
End Sub

Private Sub sckConnection_ConnectionRequest(ByVal requestID As Long)
    If iListen.State <> sckClosed Then
          iListen.Close
    End If
    
    iListen.Accept (requestID)
    Shape1.BackColor = &HFF00&
End Sub

Private Sub Timer1_Timer()
    If iSpeak.State = sckConnected And iListen.State = sckConnected Then
        Shape1.BackColor = &HFF00&
        lblStatus.Caption = "Connected"
    ElseIf iSpeak.State <> sckConnected And iListen.State <> sckConnected Then
        Shape1.BackColor = &HFF&
        lblStatus.Caption = "Disconnected"
    Else
        Shape1.BackColor = &HFFFF&
        lblStatus.Caption = "Idle"
    End If
End Sub


