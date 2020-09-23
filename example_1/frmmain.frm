VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "SHDOCVW.DLL"
Begin VB.Form Form1 
   Caption         =   "website hitter"
   ClientHeight    =   3210
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5220
   ClipControls    =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   3210
   ScaleWidth      =   5220
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      Height          =   1455
      Left            =   0
      TabIndex        =   3
      Top             =   0
      Width           =   5175
      Begin VB.Timer Timer2 
         Enabled         =   0   'False
         Interval        =   1000
         Left            =   960
         Top             =   1200
      End
      Begin VB.CommandButton Command2 
         Caption         =   "change"
         Height          =   255
         Left            =   4200
         TabIndex        =   9
         Top             =   600
         Width           =   855
      End
      Begin VB.TextBox Text2 
         Height          =   285
         Left            =   1080
         TabIndex        =   8
         Text            =   "15000"
         Top             =   600
         Width           =   975
      End
      Begin VB.Timer Timer1 
         Enabled         =   0   'False
         Interval        =   15000
         Left            =   0
         Top             =   1320
      End
      Begin VB.CommandButton Command1 
         Caption         =   "start"
         Height          =   255
         Left            =   4200
         TabIndex        =   6
         Top             =   240
         Width           =   855
      End
      Begin VB.TextBox Text1 
         Height          =   285
         Left            =   1080
         TabIndex        =   4
         Text            =   "http://www.domain.com"
         Top             =   240
         Width           =   3015
      End
      Begin VB.Label Label6 
         BackStyle       =   0  'Transparent
         Caption         =   "       :       :"
         Height          =   255
         Left            =   2880
         TabIndex        =   16
         Top             =   960
         Width           =   1095
      End
      Begin VB.Label lblseconds 
         Alignment       =   1  'Right Justify
         Caption         =   "0"
         Height          =   255
         Left            =   3600
         TabIndex        =   15
         Top             =   960
         Width           =   255
      End
      Begin VB.Label lblminutes 
         Alignment       =   1  'Right Justify
         Caption         =   "0"
         Height          =   255
         Left            =   3240
         TabIndex        =   14
         Top             =   960
         Width           =   255
      End
      Begin VB.Label lblhour 
         Alignment       =   1  'Right Justify
         Caption         =   "0"
         Height          =   255
         Left            =   2880
         TabIndex        =   13
         Top             =   960
         Width           =   255
      End
      Begin VB.Label Label5 
         Caption         =   "time:"
         Height          =   255
         Left            =   2400
         TabIndex        =   12
         Top             =   960
         Width           =   1215
      End
      Begin VB.Label lblhits 
         Alignment       =   1  'Right Justify
         Caption         =   "0"
         Height          =   255
         Left            =   1080
         TabIndex        =   11
         Top             =   960
         Width           =   1095
      End
      Begin VB.Label Label3 
         Caption         =   "hits:"
         Height          =   255
         Left            =   120
         TabIndex        =   10
         Top             =   960
         Width           =   735
      End
      Begin VB.Label Label2 
         Caption         =   "intervals:"
         Height          =   255
         Left            =   120
         TabIndex        =   7
         Top             =   600
         Width           =   735
      End
      Begin VB.Label Label1 
         Caption         =   "website url:"
         Height          =   255
         Left            =   120
         TabIndex        =   5
         Top             =   270
         Width           =   975
      End
   End
   Begin SHDocVwCtl.WebBrowser WebBrowser3 
      Height          =   1575
      Left            =   3600
      TabIndex        =   2
      Top             =   1560
      Width           =   1575
      ExtentX         =   2778
      ExtentY         =   2778
      ViewMode        =   0
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   0
      RegisterAsDropTarget=   1
      AutoArrange     =   0   'False
      NoClientEdge    =   0   'False
      AlignLeft       =   0   'False
      ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
      Location        =   ""
   End
   Begin SHDocVwCtl.WebBrowser WebBrowser2 
      Height          =   1575
      Left            =   1800
      TabIndex        =   1
      Top             =   1560
      Width           =   1575
      ExtentX         =   2778
      ExtentY         =   2778
      ViewMode        =   0
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   0
      RegisterAsDropTarget=   1
      AutoArrange     =   0   'False
      NoClientEdge    =   0   'False
      AlignLeft       =   0   'False
      ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
      Location        =   ""
   End
   Begin SHDocVwCtl.WebBrowser WebBrowser1 
      Height          =   1575
      Left            =   0
      TabIndex        =   0
      Top             =   1560
      Width           =   1575
      ExtentX         =   2778
      ExtentY         =   2778
      ViewMode        =   0
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   0
      RegisterAsDropTarget=   1
      AutoArrange     =   0   'False
      NoClientEdge    =   0   'False
      AlignLeft       =   0   'False
      ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
      Location        =   ""
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'this program was written by matthew zalewski aka mr. koww
'all coding copyrighted 2003 matthew zalewski.
'if you use this coding, all i ask is that you give me credit or a link to my site.
'this is my first code ive made for PSC.
'visit my site: http://www.mr-koww.com // haxor elite productions
'-----------------------
'i wrote this so it's pretty simple for beginners.
'i didn't do too much so you wouldn't have to figure out how i did it
'enjoy!


Private Sub Command1_Click()
If Timer1.Enabled = True Then
Timer1.Enabled = False
Timer2.Enabled = False
Command1.Caption = "start"
Else
Timer1.Enabled = True
Timer2.Enabled = True
Command1.Caption = "stop"
End If
End Sub

Private Sub Command2_Click()
'this changes the intervals the sites will be loaded at
'15000 = 15 seconds
Timer1.Interval = Text2
End Sub

Private Sub Timer1_Timer()
'this here will navigate the browser to the url set (text1)
WebBrowser1.Navigate (Text1)
WebBrowser2.Navigate (Text1)
WebBrowser3.Navigate (Text1)
'add 3 (3 browser hits) to the label every time they open
lblhits.Caption = lblhits.Caption + 3
End Sub

Private Sub Timer2_Timer()
lblseconds.Caption = lblseconds.Caption + 1
'when it hits 60 seconds make minutes and a minute
If lblseconds.Caption = "60" Then
lblseconds.Caption = "0"
lblminutes.Caption = lblminutes.Caption + 1
End If
If lblminutes.Caption = "60" Then
'when it hits 60 minutes make hours add an hour
lblminutes.Caption = "0"
lblhours.Caption = lblhours + 1
End If
End Sub
