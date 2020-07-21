<%@ Page Language="VB" AutoEventWireup="false" CodeFile="selectlurif.aspx.vb" Inherits="selectlurif" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
	<meta name="format" content="text/html" />
	<meta name="language" content="en-us" />


    
        <link href="cssNet/common.css" type="text/css" rel="stylesheet" />
	<link href="cssNet/sideNav.css" type="text/css" rel="stylesheet" />
	<link href="cssNet/custom.css" type="text/css" rel="stylesheet" />
    <link href="cssHome/jquery.dataTables.css" type="text/css" rel="stylesheet" />
    <link href="scripts/DataTables/datatables.css" type="text/css" rel="stylesheet"/>
    <link href="scripts/DataTables/datatables.min.css" type="text/css" rel="stylesheet"/>
    <link href="scripts/DataTables/DataTables-1.10.20/css/jquery.dataTables.min.css" type="text/css" rel="stylesheet" />
     <link href="scripts/DataTables/Buttons-1.6.1/css/buttons.dataTables.min.css" type="text/css" rel="stylesheet" />
    <script src="scripts/jquery-3.0.0.js" type="text/javascript"></script>
	<script src="scripts/menu.js" type="text/javascript"></script>
	<script src="scripts/global.js" type="text/javascript"></script>
        <script language="vbscript" src="scripts/CEMCSSvr.VBS" Runat="Server"></script>

	
    

    <script type="text/javascript" >
        $(document).ready(function () {
            $(document).ready(function () {
                $('#example').DataTable( {
                    dom: 'Bfrtip',
                    buttons: [
                        'copy', 'csv', 'excel', 'pdf', 'print'
                    ]
                } );
        

                $('#Button1').click(function () {
                    var hasError = false;
                    var errorMesage = "";

                    var idjs = $("#TextBox1").val();
                    if (idjs == '') {
                        hasError = true;
                        errorMesage += "Insurance Id required.\n";
                    }
                    if (hasError) {
                        alert(errorMesage);
                        return false;
                    }

                });

            });
        });

        
        </script>


        <style type="text/css">
.form-style-2{
       max-width: 650px;
       padding: 20px 12px 10px 20px;
       font: 13px Arial, Helvetica, sans-serif;
       margin:auto;
}
.form-style-2-heading{
       font-weight: bold;
       font-style: italic;
       border-bottom: 2px solid #ddd;
       margin-bottom: 20px;
       font-size: 15px;
       padding-bottom: 3px;
}
.form-style-2 labelone{
       display:inline-block;
       margin: 0px 0px 30px 0px;
}
.form-style-2 labelone > span{
       width: 100px;
       font-weight: bold;
       float: left;
       padding-top: 8px;
       padding-right: 5px;
}
.form-style-2 span.required{
       color:red;
}
.form-style-2 .tel-number-field{
       width: 40px;
       text-align: center;
}
.form-style-2 input.input-field, .form-style-2 .select-field{
       width: 48%;  
}
.form-style-2 input.input-field,
.form-style-2 .tel-number-field,
.form-style-2 .textarea-field,
 .form-style-2 .select-field{
       box-sizing: border-box;
       -webkit-box-sizing: border-box;
       -moz-box-sizing: border-box;
       border: 1px solid #C2C2C2;
       box-shadow: 1px 1px 4px #EBEBEB;
       -moz-box-shadow: 1px 1px 4px #EBEBEB;
       -webkit-box-shadow: 1px 1px 4px #EBEBEB;
       border-radius: 3px;
       -webkit-border-radius: 3px;
       -moz-border-radius: 3px;
       padding: 7px;
       outline: none;
            margin-left: 0px;
        }
.form-style-2 .input-fieldone:focus,
.form-style-2 .tel-number-field:focus,
.form-style-2 .textarea-field:focus,
 .form-style-2 .checkbox:focus,
.form-style-2 .select-field:focus{
       border: 1px solid #0C0;
}
.form-style-2 .textarea-field{
       height:100px;
       width: 55%;
}
.form-style-2 input[type=submit],
.form-style-2 input[type=button]{
        border-style: none;
            border-color: inherit;
            border-width: medium;
            padding: 8px 15px;
            background: rgb(0,102,204);
            color: #fff;
            box-shadow: 1px 1px 4px #DADADA;
            -moz-box-shadow: 1px 1px 4px #DADADA;
            -webkit-box-shadow: 1px 1px 4px #DADADA;
            border-radius: 3px;
            -webkit-border-radius: 3px;
            -moz-border-radius: 3px;
            margin-left: 59px;
        }
.form-style-2 input[type=submit]:hover,
.form-style-2 input[type=button]:hover{
       background: #EA7B00;
       color: #fff;
}


.button{
border: none;
       padding: 8px 15px 8px 15px;
       background: rgb(0,102,204);
       color: #fff;
       box-shadow: 1px 1px 4px #DADADA;
       -moz-box-shadow: 1px 1px 4px #DADADA;
       -webkit-box-shadow: 1px 1px 4px #DADADA;
       border-radius: 3px;
       -webkit-border-radius: 3px;
       -moz-border-radius: 3px;
}
.button:hover{
       background: #EA7B00;
       color: #fff;
}
        </style>
</head>
<body>
       <div id="pageConstraints">
	
	    <%	
	        Call headerWriterMain("", "")
		%>
		</div>
    
  <div class="form-style-2">
    <form id="form1" runat="server">
        
    <asp:Label ID="Label1" runat="server" Text="ID:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" Width="278px" CssClass="input-field"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Search" />
    <br />
    <br />
    <asp:GridView id="example"  runat="server" Visible="False" Width="100%" AutoGenerateColumns="False">
        <Columns >
            <asp:BoundField HeaderText ="ID" DataField ="ID" />
            <asp:BoundField HeaderText ="NAME INSURED" DataField ="NAME_INSURED" />
            <asp:BoundField HeaderText ="ADDRESS" DataField ="ADDRESS" />
            <asp:BoundField HeaderText ="OCCUPATION" DataField ="OCCUPATION" />
            <asp:BoundField HeaderText ="MOBILE PHONE NUMBER" DataField ="MOBILE_PHONE_NUMBER" />
            <asp:BoundField HeaderText ="TELEPHONE NUMBER" DataField ="TELEPHONE_NUMBER" />
            <asp:BoundField HeaderText ="INCEPTION DATE" DataField ="INCEPTION_DATE" />
            <asp:BoundField HeaderText ="BRANCH" DataField ="BRANCH" />
            <asp:BoundField HeaderText ="MAKE" DataField ="MAKE" />
            <asp:BoundField HeaderText ="REG NO" DataField ="REG_NO" />
            <asp:BoundField HeaderText ="C.C" DataField ="C_C" />
            <asp:BoundField HeaderText ="YEAR OF MAKE" DataField ="YEAR_MAKE" />
            <asp:BoundField HeaderText ="ENGINE NUMBER" DataField ="ENG_NO" />
            <asp:BoundField HeaderText ="CHASIS NUMBER" DataField ="CHASIS_NUMBER" />
            <asp:BoundField HeaderText ="MILEAGE COVERED" DataField ="MILEAGE_COVERED" />
            <asp:BoundField HeaderText ="PURPOSE BEING USED" DataField ="PURPOSE_BEING_USED" />
            <asp:BoundField HeaderText ="COMMERCIAL" DataField ="COMMERCIAL" />
            <asp:BoundField HeaderText ="PASSENGERS OF TAXI/BUS" DataField ="PASSENGERS_TAXIBUS" />
            <asp:BoundField HeaderText ="DRIVER NAME" DataField ="DRA_NAME" />
            <asp:BoundField HeaderText ="DRIVER AGE" DataField ="DRA_AGE" />
            <asp:BoundField HeaderText ="DRIVER ADDRESS" DataField ="DRA_ADDRESS" />
            <asp:BoundField HeaderText ="DRIVING LICENSE POSSESSION" DataField ="DRIVING_LIC_POSSESSION" />
            <asp:BoundField HeaderText ="DRIVING LICENSE CATEGORY" DataField ="DRIVING_LIC_CATEGORY" />
            <asp:BoundField HeaderText ="DRIVING LICENSE NUMBER" DataField ="DRIVING_LIC_NUMBER" />
            <asp:BoundField HeaderText ="DRIVING LICENSE ENDORSEMENT" DataField ="DRIVING_LIC_ENDORSEMENT" />
            <asp:BoundField HeaderText ="DATE ISSUE" DataField ="DATE_ISSUE" />
            <asp:BoundField HeaderText ="DATE EXPIRY" DataField ="DATE_EXPIRY" />
            <asp:BoundField HeaderText ="PLACE ISSUE" DataField ="PLACE_ISSUE" />
            <asp:BoundField HeaderText ="LEARNERS PERMIT" DataField ="LEARNERS_PERMIT" />
            <asp:BoundField HeaderText ="NUMBER (IF YES)" DataField ="NUMBER_IFYES" />
            <asp:BoundField HeaderText ="PERIOD" DataField ="PERIOD" />
            <asp:BoundField HeaderText ="RELATION OF DRIVER INSURED" DataField ="RELATION_DRIVER_INSURED" />
            <asp:BoundField HeaderText ="EMPLOYMENT DURATION" DataField ="EMPLOYMENT_DURATION" />
            <asp:BoundField HeaderText ="VEHICLE POSSESSION" DataField ="DOES_DRIVER_VEHICLE" />
            <asp:BoundField HeaderText ="NAME OF INSURER" DataField ="NAME_INSURER" />
            <asp:BoundField HeaderText ="ADDRESS OF INSURER" DataField ="ADDRESS_INSURER" />
            <asp:BoundField HeaderText ="PARTICULAR DATE" DataField ="PARTICULAR_DATE" />
            <asp:BoundField HeaderText ="PARTICULAR TIME" DataField ="PARTICULAR_TIME" />
            <asp:BoundField HeaderText ="EXACT LOCATION" DataField ="EXACT_LOCATION" />
            <asp:BoundField HeaderText ="ROAD CONDITION" DataField ="ROAD_CONDITION" />
            <asp:BoundField HeaderText ="WEATHER CONDITION" DataField ="WEATHER_CONDITION" />
            <asp:BoundField HeaderText ="SPEED OF VEHICLE" DataField ="SPEED_VEHICLE" />
            <asp:BoundField HeaderText ="CONDITION OF BRAKES" DataField ="CONDITION_BRAKES" />
            <asp:BoundField HeaderText ="DIRECTION COLLIDED" DataField ="DIRECTION_COLLIDED" />
            <asp:BoundField HeaderText ="ADDRESS OF POLICE STATION" DataField ="ADDRESS_POLICESTATION" />
            <asp:BoundField HeaderText ="NUMBER OF INSURED VEHICLE" DataField ="NUMBER_INSUREDV" />
            <asp:BoundField HeaderText ="NUMBER OF OTHER VEHICLE" DataField ="NUMBER_OTHERV" />
            <asp:BoundField HeaderText ="DAMAGED PART" DataField ="DAMAGED_PART" />
            <asp:BoundField HeaderText ="PRESENT LOCATION OF VEHICLE" DataField ="PRESLOC_VEHICLE" />
            <asp:BoundField HeaderText ="ROUGHEST REPAIR" DataField ="ROUGHEST_REPAIR" />
            <asp:BoundField HeaderText ="REPAIRER NAME" DataField ="REPAIRER_NAME" />
            <asp:BoundField HeaderText ="REPAIRER ADDRESS" DataField ="REPAIRER_ADDRESS" />
            <asp:BoundField HeaderText ="INVENTORY OF DAMAGED PART" DataField ="INVENTORY_DAMPART" />
            <asp:BoundField HeaderText ="THDPTYNAME" DataField ="THDPTYNAME" />
            <asp:BoundField HeaderText ="THDPTYADDRESS" DataField ="THDPTYADDRESS" />
            <asp:BoundField HeaderText ="TYPE OF PROPERTY" DataField ="TYPE_PROPERTY" />
            <asp:BoundField HeaderText ="VEHICLE MAKE" DataField ="VEHICLE_MAKE" />
            <asp:BoundField HeaderText ="THIRD PARTY REG NO" DataField ="THDPTYREG_NO" />
            <asp:BoundField HeaderText ="THIRD PARTY YEAR OF MAKE" DataField ="THDPTYYEAR_MAKE" />
            <asp:BoundField HeaderText ="PRESENT LOCATION OF VEHICLE" DataField ="PRELOC_VEHICLE" />
            <asp:BoundField HeaderText ="OWNER INSURED" DataField ="OWNER_INSURED" />
            <asp:BoundField HeaderText ="POLL NO" DataField ="POLNO_IFYES" />
            <asp:BoundField HeaderText ="THIRD PARTY NAME INSURER" DataField ="THDPTYNAME_INSURER" />
            <asp:BoundField HeaderText ="THIRD PARTY ADDRESS OF INSURER" DataField ="THDPTYADDRESS_INSURER" />
              <asp:BoundField HeaderText ="STATUS OF SIGNATORY" DataField ="STATUSOFSIGNATORY" />    
        </Columns>
    </asp:GridView>
     
    </form>	
    </div>



    <script src="scripts/gridview/jquery-1.5.min.js"></script>
    <script src="scripts/DataTables/DataTables-1.10.20/js/jquery.dataTables.min.js" ></script>
    <script src="scripts/DataTables/Buttons-1.6.1/js/dataTables.buttons.min.js"></script>
    <script src="scripts/DataTables/Buttons-1.6.1/js/buttons.flash.min.js"></script>
    <script src="scripts/DataTables/JSZip-2.5.0/jszip.min.js"></script>
    <script src="scripts/DataTables/pdfmake-0.1.36/pdfmake.min.js"></script>
    <script src="scripts/DataTables/pdfmake-0.1.36/vfs_fonts.js"></script>
    <script src="scripts/DataTables/Buttons-1.6.1/js/buttons.html5.min.js"></script>
    <script src="scripts/DataTables/Buttons-1.6.1/js/buttons.print.min.js"></script>
</body>
</html>
