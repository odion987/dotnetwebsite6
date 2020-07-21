Imports CEMSC.DAO.lawunionrockinsuranceform
Imports System.Globalization
Imports Microsoft.VisualBasic
Imports System.Data.OleDb
Imports System.Data
Imports CEMSC.Models
Imports System.IO
Imports System.Web.UI
Imports System.Web.UI.HtmlControls
Imports System.Web.Script.Serialization


Partial Class selectlurif
    Inherits System.Web.UI.Page
    Dim conn As OleDbConnection = CEMSC.DAO.DataContext.GetConnection()
    
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim intid As Integer = CInt(TextBox1.Text)
        ' Dim intid As Integer = Request.QueryString("insid")

        Dim qry As String = "SELECT ID,NAME_INSURED,ADDRESS,OCCUPATION,MOBILE_PHONE_NUMBER,TELEPHONE_NUMBER,INCEPTION_DATE,BRANCH,MAKE,REG_NO,C_C,YEAR_MAKE,ENG_NO,CHASIS_NUMBER,MILEAGE_COVERED," _
                            & "PURPOSE_BEING_USED,COMMERCIAL," _
                            & "PASSENGERS_TAXIBUS,DRA_NAME,DRA_AGE,DRA_ADDRESS,DRIVING_LIC_POSSESSION,DRIVING_LIC_CATEGORY,DRIVING_LIC_NUMBER,DRIVING_LIC_ENDORSEMENT, DATE_ISSUE," _
                            & "DATE_EXPIRY, PLACE_ISSUE, LEARNERS_PERMIT,NUMBER_IFYES,PERIOD,RELATION_DRIVER_INSURED,EMPLOYMENT_DURATION,DOES_DRIVER_VEHICLE,NAME_INSURER," _
                            & "ADDRESS_INSURER,PARTICULAR_DATE,PARTICULAR_TIME,EXACT_LOCATION,ROAD_CONDITION,WEATHER_CONDITION,SPEED_VEHICLE,CONDITION_BRAKES,DIRECTION_COLLIDED," _
                            & "ADDRESS_POLICESTATION,NUMBER_INSUREDV,NUMBER_OTHERV,DAMAGED_PART,PRESLOC_VEHICLE,ROUGHEST_REPAIR,REPAIRER_NAME,REPAIRER_ADDRESS,INVENTORY_DAMPART," _
                            & "THDPTYNAME,THDPTYADDRESS,TYPE_PROPERTY,VEHICLE_MAKE,THDPTYREG_NO,THDPTYYEAR_MAKE,PRELOC_VEHICLE,OWNER_INSURED,POLNO_IFYES,THDPTYNAME_INSURER," _
                           & "THDPTYADDRESS_INSURER,STATUSOFSIGNATORY FROM MOTOR_ACCIDENT_REPORT WHERE ID = :ID"

        

        Dim da As OleDbDataAdapter = New OleDbDataAdapter(qry, conn)
        da.SelectCommand.CommandType = CommandType.Text
        da.SelectCommand.Parameters.Add(":ID", OleDbType.Integer).Value = intid
        Dim ds As New DataSet()
        da.Fill(ds)
        example.DataSource = ds
        example.DataBind()
        example.Visible = True
           

    End Sub
End Class
