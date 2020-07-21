Imports CEMSC.DAO.lawunionrockinsuranceform
Imports System.Globalization
Imports Microsoft.VisualBasic
Imports System.Data.OleDb
Imports System.Data
Imports CEMSC.Models
Imports System.IO
Imports System.Web.UI.HtmlControls
Imports System.Web.Script.Serialization

Partial Class lawunionrockinsurance
    Inherits System.Web.UI.Page

    Protected Values As String
    
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
                Dim nameinsuredval, addressmotorval, occupationval, mobilephoneval, telephonenoval As String
        Dim inceptiondateval As String
        Dim branchval, makeval As String
        Dim regnoval As String
        Dim ccval As String
        Dim yearmakeval As String
        Dim engnoval, chasisnoval As String
        Dim mileagecoveredval, purposebeingusedval, commercialval, passengerstaxibusval As String
        Dim dranameval As String
        Dim draageval As Integer
        Dim draaddressval, drivlicpossval, drivliccatval As String
        Dim drivlicnoval, drivlicendorseval As String
        Dim dateissueval, dateexpiryval As String
        Dim placeissueval As String
        Dim learnerspermitval As String
        Dim numberifyesval As String
        Dim periodval, relationdrivinsval, employmentdurval, doesdrivvehval, nameinsurerval, addressinsurerval As String
        Dim particulardateval, particulartimeval As String
        Dim exactlocationval, roadconditionval, weatherconditionval, speedvehicleval, conditonbrakesval As String
        Dim directioncollidedval, addresspoliceval As String
        Dim numberinsuredval, numberotherval As String
        Dim damagedpartval, preslocdamagedval, roughestrepairval, repairernameval, repaireraddressval As String
        Dim inventorydampartval, thdptynameval, thdptyaddressval, typepropertyval As String
        Dim vehiclemakeval, thdptyregnoval, thdptyyearmakeval, prelocvehicleval, ownerinsuredval As String
        Dim polnoifyesval, thdptynameinsurerval, thdptyaddressinsurerval, statusofsignatoryval As String

        nameinsuredval = CStr(nameinsured.Text)
        addressmotorval = CStr(addressmotor.Text)
        occupationval = CStr(occupation.Text)
        mobilephoneval = CStr(mobilephone.Text)
        telephonenoval = CStr(Telephone.Text)
        inceptiondateval = inceptiondate.Text
        branchval = CStr(branch.Text)
        makeval = CStr(make.Text)
        regnoval = CStr(regno.Text)
        ccval = CStr(cc.Text)
        yearmakeval = CStr(yearofmake.Text)
        engnoval = CStr(engno.Text)
        chasisnoval = CStr(chasisno.Text)
        mileagecoveredval = CStr(mileagecovered.Text)
        purposebeingusedval = CStr(purposebeingused.Text)
        commercialval = CStr(commercialselect.SelectedItem.Text)
        passengerstaxibusval = CStr(passengerstaxibus.Text)
        dranameval = CStr(drivername.Text)
        draageval = CStr(age.Text)
        draaddressval = CStr(address.Text)
        drivlicpossval = CStr(drivinglicensepossession.SelectedItem.Text)
        drivliccatval = CStr(driverlicensecategory.Text)
        drivlicnoval = CStr(drivinglicenseno.Text)
        drivlicendorseval = CStr(drivinglicenseendorsement.SelectedItem.Text)
        dateissueval = dateofissue.Text
        dateexpiryval = dateofexpiry.Text
        placeissueval = CStr(placeofissue.Text)
        learnerspermitval = CStr(learnerpermit.SelectedItem.Text)
        numberifyesval = CStr(numberifyes.Text)
        periodval = CStr(period.Text)
        relationdrivinsval = CStr(relationtodriver.Text)
        employmentdurval = CStr(employmentduration.Text)
        doesdrivvehval = CStr(drivervehicle.SelectedItem.Text)
        nameinsurerval = CStr(nameofinsurer.Text)
        addressinsurerval = CStr(addressofinsurer.Text)
        'Dim particulardatestring As String = partdate.Text
        particulardateval = partdate.Text
        particulartimeval = partime.Text
        exactlocationval = CStr(exactlocationaccident.Text)
        roadconditionval = CStr(roadcondition.Text)
        weatherconditionval = CStr(weathercondition.Text)
        speedvehicleval = CStr(speedofvehicle.Text)
        conditonbrakesval = CStr(Conditionofbrakes.Text)
        directioncollidedval = CStr(directionofcollidedobject.Text)
        addresspoliceval = CStr(addresspolicestation.Text)
        numberinsuredval = CStr(insuredvehicle.Text)
        numberotherval = CStr(othervehicle.Text)
        damagedpartval = CStr(fulldetailsdamaged.Text)
        preslocdamagedval = CStr(presentlocdamaged.Text)
        roughestrepairval = CStr(roughestrepair.Text)
        repairernameval = CStr(repairername.Text)
        repaireraddressval = CStr(repaireraddress.Text)
        inventorydampartval = CStr(inventorydampart.Text)
        thdptynameval = CStr(thirdpartyname.Text)
        thdptyaddressval = CStr(thirdpartyaddress.Text)
        typepropertyval = CStr(typeofproperty.Text)
        vehiclemakeval = CStr(vehiclemake.SelectedItem.Text)
        thdptyregnoval = CStr(thirdpartyregno.Text)
        thdptyyearmakeval = CStr(thirdpartyyearofmake.Text)
        prelocvehicleval = CStr(presentlocationvehicle.Text)
        ownerinsuredval = CStr(ownerinsured.SelectedItem.Text)
        polnoifyesval = CStr(Policyno.Text)
        thdptynameinsurerval = CStr(thirdpartynameofinsurer.Text)
        thdptyaddressinsurerval = CStr(thirdpartyaddressofinsurer.Text)
        statusofsignatoryval = CStr(statusofsignatory.Text)



        InsertMotorAccident(nameinsuredval, addressmotorval, occupationval, mobilephoneval, telephonenoval, _
                              inceptiondateval, branchval, makeval, regnoval, ccval, yearmakeval, engnoval, _
                              chasisnoval, mileagecoveredval, purposebeingusedval, commercialval, _
                              passengerstaxibusval, dranameval, draageval, draaddressval, drivlicpossval, _
                              drivliccatval, drivlicnoval, drivlicendorseval, dateissueval, dateexpiryval, placeissueval, _
                              learnerspermitval, numberifyesval, periodval, relationdrivinsval, employmentdurval, _
                              doesdrivvehval, nameinsurerval, addressinsurerval, particulardateval, particulartimeval, exactlocationval, roadconditionval, _
                              weatherconditionval, speedvehicleval, conditonbrakesval, directioncollidedval, addresspoliceval, _
                               numberinsuredval, numberotherval, damagedpartval, preslocdamagedval, roughestrepairval, repairernameval, repaireraddressval, inventorydampartval, _
                               thdptynameval, thdptyaddressinsurerval, typepropertyval, vehiclemakeval, thdptyregnoval, thdptyyearmakeval, prelocvehicleval, _
                               ownerinsuredval, polnoifyesval, thdptynameinsurerval, thdptyaddressinsurerval, statusofsignatoryval)




        Dim j As Integer = 0
        Dim hfc As HttpFileCollection = Request.Files
        Dim pathname As String
        Dim td As Date = Date.Today


        Dim drvuploaddateval As Date = DateTime.Now.ToString("MM/dd/yyyy")

        For i As Integer = 0 To hfc.Count - 1
            Dim hpf As HttpPostedFile = hfc(i)

            If hpf.ContentLength > 0 Then

                If hfc.GetKey(i) = "fulldescriptionacc" Then
                    pathname = "accidentdecription_"
                End If
                If hfc.GetKey(i) = "signatureofdriver" Then
                    pathname = "signatureofdriver_"
                End If
                If hfc.GetKey(i) = "signatureofinsured" Then
                    pathname = "signatureofinsured_"
                End If
                pathname = pathname & Path.GetFileName(hfc(i).FileName)

                hpf.SaveAs(Server.MapPath("lfulldesc/") & pathname)
                If j < hfc.Count Then
                    insertaccidentdescanddecl(pathname, drvuploaddateval)
                End If
            End If
        Next



        Dim witnamevalues() As String = Request.Form.GetValues("witnessnametxt")
        Dim witaddressvalues() As String = Request.Form.GetValues("witnessaddresstxt")

        Dim serializer As New JavaScriptSerializer()
        Dim serializerone As New JavaScriptSerializer()
        Me.Values = serializer.Serialize(witnamevalues)
        Me.Values = serializerone.Serialize(witaddressvalues)

        For i As Integer = 0 To witnamevalues.Length - 1
            If Not String.IsNullOrEmpty(witnamevalues(i)) And Not String.IsNullOrEmpty(witaddressvalues(i)) Then
                Dim witnessvalue As String = witnamevalues(i)
                Dim witaddressvalue As String = witaddressvalues(i)

                Insertwitness(witnessvalue, witaddressvalue)
            End If
        Next



        Dim retval As Integer
        Dim occnamevalues() As String = Request.Form.GetValues("occupantnametxt")
        Dim occaddressvalues() As String = Request.Form.GetValues("occupantaddresstxt")

        Dim occnameserializer As New JavaScriptSerializer()
        Dim occaddserializer As New JavaScriptSerializer()
        Me.Values = occnameserializer.Serialize(occnamevalues)
        Me.Values = occaddserializer.Serialize(occaddressvalues)

        For k As Integer = 0 To occnamevalues.Length - 1
            If Not String.IsNullOrEmpty(occnamevalues(k)) And Not String.IsNullOrEmpty(occaddressvalues(k)) Then
                Dim occnameval As String = occnamevalues(k)
                Dim occaddressval As String = occaddressvalues(k)
                retval = Convert.ToInt32(Insertoccupant(occnameval, occaddressval))
            End If
        Next

        'ClearTextboxes(Me.Controls)
        'nameinsured.Text = String.Format(retval)
        Response.Redirect("~/selectlurif.aspx?insid=" & retval)
    End Sub


    Public Sub ClearTextboxes(controls As ControlCollection)
        For Each ctrl As Control In controls
            If TypeOf ctrl Is TextBox Then
                CType(ctrl, TextBox).Text = String.Empty
            ElseIf ctrl.HasControls Then
                ClearTextboxes(ctrl.Controls)
                commercial.Checked = False
                drivinglicensepossession.ClearSelection()
                drivinglicenseendorsement.ClearSelection()
                learnerpermit.ClearSelection()
                drivervehicle.ClearSelection()
                vehiclemake.ClearSelection()
                ownerinsured.ClearSelection()
            End If
        Next
    End Sub


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
End Class
