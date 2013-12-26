
Imports System.Data
Partial Class UC_Header
    Inherits System.Web.UI.UserControl

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Dim MDService As New HipaaService
        'Dim ds, dsUserName, dsStatus As DataSet
        'Dim strURL As String
        'If Page.IsPostBack = False Then




        'dsUserName = MDService.GetUserNameByID(Session("UserID"))

        'If (System.Environment.UserName = dsUserName.Tables(0).Rows(0)("fldCitrixID").ToString()) Then
        '    GetUserInfo(System.Environment.UserName)

        '    ds = MDService.GetUserIDByName(System.Environment.UserName)


        '    dsStatus = MDService.ReturnStatus(ds.Tables(0).Rows(0)("fldUserID").ToString())


        '    strURL = dsStatus.Tables(0).Rows(0)("result").ToString()

        '    ' Response.Redirect(strURL)



        'End If
        'MDService.AddAuditLogEntry(Session("UserID"), "Header User Control load Header.ascx", "Header User Control load", "", "")
        'lblCitrixID.Text = Session("CitrixID")
        'litUnreadMessageCount.Text = MDService.GetUserUnreadMessageCount(Session("UserID"))
        'Dim file As String() = Request.CurrentExecutionFilePath.Split("/")
        'Dim fileName As String = file(file.Length - 1)
        ''Dim strURL As String = Path.GetFileName(Request.PhysicalPath) 'System.Web.HttpContext.Current.Request.Url.AbsolutePath
        'If Session("IsSysAdmin") = False Then
        '    If MDService.HasAccess(Session("UserID"), fileName) Then
        '        'Do Nothing
        '    Else
        '        'Redirect to Login
        '        'Dim strUrl As String
        '        'Dim ds As DataSet
        '        'ds = MDService.ReturnStatus(Session("UserID"))
        '        'strUrl = ds.Tables(0).Rows(0)("result").ToString()
        '        'Response.Redirect(strUrl) 
        '        Response.Redirect("NoRight.aspx")
        '    End If
        'End If
        'End If

    End Sub
    
    ''' <summary>
    ''' GET CURRENT BROWSER INFORMATION
    ''' </summary>
    ''' <returns></returns>
    ''' <remarks></remarks>
    'Protected Function browserinfo() As String
    '    Dim MDService As New HipaaService
    '    Try


    '        Dim s As String = ""
    '        With Request.Browser
    '            s &= "Browser Capabilities" & vbCrLf
    '            s &= "Type = " & .Type & vbCrLf
    '            s &= "Name = " & .Browser & vbCrLf
    '            s &= "Version = " & .Version & vbCrLf
    '            s &= "Major Version = " & .MajorVersion & vbCrLf
    '            s &= "Minor Version = " & .MinorVersion & vbCrLf
    '            s &= "Platform = " & .Platform & vbCrLf
    '            s &= "Is Beta = " & .Beta & vbCrLf
    '            s &= "Is Crawler = " & .Crawler & vbCrLf
    '            s &= "Is AOL = " & .AOL & vbCrLf
    '            s &= "Is Win16 = " & .Win16 & vbCrLf
    '            s &= "Is Win32 = " & .Win32 & vbCrLf
    '            s &= "Supports Frames = " & .Frames & vbCrLf
    '            s &= "Supports Tables = " & .Tables & vbCrLf
    '            s &= "Supports Cookies = " & .Cookies & vbCrLf
    '            s &= "Supports VBScript = " & .VBScript & vbCrLf
    '            s &= "Supports JavaScript = " & _
    '                .EcmaScriptVersion.ToString() & vbCrLf
    '            s &= "Supports Java Applets = " & .JavaApplets & vbCrLf
    '            s &= "Supports ActiveX Controls = " & .ActiveXControls & _
    '                vbCrLf
    '            s &= "Supports JavaScript Version = " & _
    '                Request.Browser("JavaScriptVersion") & vbCrLf
    '        End With
    '        Return s
    '    Catch ex As Exception
    '        Dim strUrl As String
    '        strUrl = Request.Url.ToString()
    '        Dim strip As String
    '        strip = Request.UserHostAddress
    '        ' this code get the browser information
    '        Dim s As String = browserinfo()

    '        MDService.AddErrEntry(Session("UserID"), Session("CitrixID"), ex.Message, ex.StackTrace, strUrl, s, strip, "browserinfo-header.ascx")
    '    End Try
    'End Function
    ''' <summary>
    ''' Check if the MDhipaa link is clicked then go to the default page depend upon the particular user
    ''' 
    ''' </summary>
    ''' <remarks></remarks>
    'Protected Sub lnkMDhipaa_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lnkMDhipaa.Click
    '    Dim MDService As New HipaaService
    '    Try
    '        If Session("IsPHYS") = True Then
    '            Dim strUrl As String
    '            Dim ds As DataSet
    '            ds = MDService.ReturnStatus(Session("UserID"))
    '            strUrl = ds.Tables(0).Rows(0)("result").ToString()
    '            Response.Redirect(strUrl)
    '        End If
    '        If Session("IsMSO") = True Then
    '            Dim strUrl As String
    '            Dim ds As DataSet
    '            ds = MDService.ReturnStatus(Session("UserID"))
    '            strUrl = ds.Tables(0).Rows(0)("result").ToString()
    '            Response.Redirect(strUrl)
    '        End If
    '        If Session("IsSysAdmin") = True Then
    '            Dim strUrl As String
    '            Dim ds As DataSet
    '            ds = MDService.ReturnStatus(Session("UserID"))
    '            strUrl = ds.Tables(0).Rows(0)("result").ToString()
    '            Response.Redirect(strUrl)
    '        End If
    '        If Session("IsMSP") = True Then
    '            Dim strUrl As String
    '            Dim ds As DataSet
    '            ds = MDService.ReturnStatus(Session("UserID"))
    '            strUrl = ds.Tables(0).Rows(0)("result").ToString()
    '            Response.Redirect(strUrl)
    '        End If
    '        If Session("IsITSD") = True Then
    '            Dim strUrl As String
    '            Dim ds As DataSet
    '            ds = MDService.ReturnStatus(Session("UserID"))
    '            strUrl = ds.Tables(0).Rows(0)("result").ToString()
    '            Response.Redirect(strUrl)
    '        End If
    '        If Session("IsHD") = True Then
    '            Dim strUrl As String
    '            Dim ds As DataSet
    '            ds = MDService.ReturnStatus(Session("UserID"))
    '            strUrl = ds.Tables(0).Rows(0)("result").ToString()
    '            Response.Redirect(strUrl)
    '        End If
    '        If Session("IsEmployee") = True Then
    '            Dim strUrl As String
    '            Dim ds As DataSet
    '            ds = MDService.ReturnStatus(Session("UserID"))
    '            strUrl = ds.Tables(0).Rows(0)("result").ToString()
    '            Response.Redirect(strUrl)
    '        End If
    '        If Session("IsAppAdmin") = True Then
    '            Dim strUrl As String
    '            Dim ds As DataSet
    '            ds = MDService.ReturnStatus(Session("UserID"))
    '            strUrl = ds.Tables(0).Rows(0)("result").ToString()
    '            Response.Redirect(strUrl)
    '        End If
    '        If Session("IsPHYSOM") = True Then
    '            Dim strUrl As String
    '            Dim ds As DataSet
    '            ds = MDService.ReturnStatus(Session("UserID"))
    '            strUrl = ds.Tables(0).Rows(0)("result").ToString()
    '            Response.Redirect(strUrl)
    '        End If
    '        If Session("IsStaff") = True Then
    '            Dim strUrl As String
    '            Dim ds As DataSet
    '            ds = MDService.ReturnStatus(Session("UserID"))
    '            strUrl = ds.Tables(0).Rows(0)("result").ToString()
    '            Response.Redirect(strUrl)
    '        End If
    '        If Session("IsPPS") = True Then
    '            Dim strUrl As String
    '            Dim ds As DataSet
    '            ds = MDService.ReturnStatus(Session("UserID"))
    '            strUrl = ds.Tables(0).Rows(0)("result").ToString()
    '            Response.Redirect(strUrl)
    '        End If
    '        If Session("IsVPMA") = True Then
    '            Dim strUrl As String
    '            Dim ds As DataSet
    '            ds = MDService.ReturnStatus(Session("UserID"))
    '            strUrl = ds.Tables(0).Rows(0)("result").ToString()
    '            Response.Redirect(strUrl)
    '        End If
    '    Catch ex As Exception
    '        Dim strUrl As String
    '        strUrl = Request.Url.ToString()
    '        Dim strip As String
    '        strip = Request.UserHostAddress
    '        ' this code get the browser information
    '        Dim s As String = browserinfo()

    '        MDService.AddErrEntry(Session("UserID"), Session("CitrixID"), ex.Message, ex.StackTrace, strUrl, s, strip, "lnlHipaaclick-header.ascx")
    '    End Try
    'End Sub

    'Protected Sub lnkLogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lnkLogout.Click


    '    FormsAuthentication.SignOut()

    '    Session.Clear()
    '    Session.Abandon()
    '    Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1))
    '    Response.Cache.SetCacheability(HttpCacheability.NoCache)
    '    Response.Cache.SetNoStore()
    '    If Session("UserID") Is Nothing Then
    '        Response.Redirect("Login.aspx")
    '    End If

    'End Sub


    ' ''' <summary>
    ' ''' GET USER INFO FROM TBLUSERS ON THE BASIS OF USERID 
    ' ''' </summary>
    ' ''' <param name="CitrixID"></param>
    ' ''' <remarks></remarks>
    'Protected Sub GetUserInfo(ByVal CitrixID As String)
    '    Dim MDService As New HipaaService
    '    Dim ds As DataSet
    '    Dim dsApp As DataSet
    '    Add this Ds into cache 
    '    Try


    '        ds = MDService.GetUserInfo(CitrixID)
    '        If Convert.ToBoolean(ds.Tables(0).Rows(0)("fldIsPhysician")) Then


    '            Session("UserID") = ds.Tables(0).Rows(0)("fldUserID")
    '            Session("UserName") = ds.Tables(0).Rows(0)("fldUserName")
    '            Session("CitrixID") = ds.Tables(0).Rows(0)("fldCitrixID")
    '            Session("LastName") = ds.Tables(0).Rows(0)("fldLastName")
    '            dss = MDService.GetAllHipaaInfo(Session("UserID"))
    '            Session("ApplicationID") = ds.Tables(0).Rows(0)("fldApplicationID").ToString()
    '            Session("HipaaDocID") = ds.Tables(0).Rows(0)("fldHIPAAAgreementID").ToString()
    '            If ds.Tables(0).Rows(0)("fldIsPhysician").ToString() <> "" Then


    '                If Convert.ToBoolean(ds.Tables(0).Rows(0)("fldIsPhysician")) Then
    '                    Session("IsPHYS") = True
    '                End If
    '            End If
    '            If ds.Tables(0).Rows(0)("fldIsMSO").ToString() <> "" Then
    '                If Convert.ToBoolean(ds.Tables(0).Rows(0)("fldIsMSO")) Then
    '                    Session("IsMSO") = True
    '                End If
    '            End If
    '            If ds.Tables(0).Rows(0)("fldIsSysAdmin").ToString() <> "" Then
    '                If Convert.ToBoolean(ds.Tables(0).Rows(0)("fldIsSysAdmin")) Then
    '                    Session("IsSysAdmin") = True
    '                End If
    '            End If
    '            If ds.Tables(0).Rows(0)("fldIsMSP").ToString() <> "" Then
    '                If Convert.ToBoolean(ds.Tables(0).Rows(0)("fldIsMSP")) Then
    '                    Session("IsMSP") = True
    '                End If
    '            End If
    '            If ds.Tables(0).Rows(0)("fldIsITSD").ToString() <> "" Then
    '                If Convert.ToBoolean(ds.Tables(0).Rows(0)("fldIsITSD")) Then
    '                    Session("IsITSD") = True
    '                End If
    '            End If
    '            If ds.Tables(0).Rows(0)("fldIsHD").ToString() <> "" Then
    '                If Convert.ToBoolean(ds.Tables(0).Rows(0)("fldIsHD")) Then
    '                    Session("IsHD") = True
    '                End If
    '            End If
    '            If ds.Tables(0).Rows(0)("fldIsEmployee").ToString() <> "" Then
    '                If Convert.ToBoolean(ds.Tables(0).Rows(0)("fldIsEmployee")) Then
    '                    Session("IsEmployee") = True
    '                End If
    '            End If
    '            If ds.Tables(0).Rows(0)("fldIsAppAdmin").ToString() <> "" Then
    '                If Convert.ToBoolean(ds.Tables(0).Rows(0)("fldIsAppAdmin")) Then
    '                    Session("IsAppAdmin") = True
    '                End If
    '            End If
    '            If ds.Tables(0).Rows(0)("fldIsPHYSOM").ToString() <> "" Then
    '                If Convert.ToBoolean(ds.Tables(0).Rows(0)("fldIsPHYSOM")) Then
    '                    Session("IsPHYSOM") = True
    '                End If
    '            End If
    '            If ds.Tables(0).Rows(0)("fldIsStaff").ToString() <> "" Then
    '                If Convert.ToBoolean(ds.Tables(0).Rows(0)("fldIsStaff")) Then
    '                    Session("IsStaff") = True
    '                End If
    '            End If
    '            If ds.Tables(0).Rows(0)("fldIsPPS").ToString() <> "" Then
    '                If Convert.ToBoolean(ds.Tables(0).Rows(0)("fldIsPPS")) Then
    '                    Session("IsPPS") = True
    '                End If
    '            End If

    '        End If
    '        If dsApp Is Nothing = False Then
    '            If dsApp.Tables.Count > 0 Then
    '                If dsApp.Tables(0).Rows.Count > 0 Then
    '                    dsApp = MDService.GetAllApplicationByUserID(Session("UserID"))

    '                End If
    '            End If
    '        End If
    '        Session("ApplicationID") = dsApp.Tables(0).Rows(0)("fldApplicationID").ToString()

    '        Dim dsHipaa As DataSet

    '        If dsHipaa Is Nothing = False Then
    '            If dsHipaa.Tables.Count > 0 Then
    '                If dsHipaa.Tables(0).Rows.Count > 0 Then
    '                    dsHipaa = MDService.GetAllHipaaInfo(Session("UserID"))
    '                End If
    '            End If
    '        End If
    '        Session("HipaaDocID") = dsHipaa.Tables(0).Rows(0)("fldHIPAAAgreementID").ToString()

    '    Catch ex As Exception
    '        Dim strUrl As String
    '        strUrl = Request.Url.ToString()
    '        Dim strip As String
    '        strip = Request.UserHostAddress
    '         this code get the browser information
    '        Dim s As String = browserinfo()

    '        MDService.AddErrEntry(Session("UserID"), Session("CitrixID"), ex.Message, ex.StackTrace, strUrl, s, strip, "GetUserInfo-login.aspx")
    '    End Try
    'End Sub
End Class
