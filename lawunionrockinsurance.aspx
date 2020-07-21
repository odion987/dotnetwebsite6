<%@ Page Language="VB" AutoEventWireup="false" CodeFile="lawunionrockinsurance.aspx.vb" Inherits="lawunionrockinsurance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
	<meta name="format" content="text/html" />
	<meta name="language" content="en-us" />
    
    
    <link href="scripts/timepicker/jquery.timepicker.min.css" type="text/css" rel="stylesheet" />
    <link href="cssNet/common.css" type="text/css" rel="stylesheet" />
	<link href="cssNet/sideNav.css" type="text/css" rel="stylesheet" />
	<link href="cssNet/custom.css" type="text/css" rel="stylesheet" />
	<script src="scripts/menu.js" type="text/javascript"></script>
    <script src="scripts/jquery-3.0.0.js" type="text/javascript"></script>
	<script src="scripts/global.js" type="text/javascript"></script>
    <script language="vbscript" src="scripts/CEMCSSvr.VBS" Runat="Server"></script>
    
    

    <link rel="stylesheet" href="cssHome/css/pikaday.css" type="text/css"/>
    
    

    <script type="text/javascript">
        $(document).ready(function () {

            $("#Table2").on("click", ".OccBtnMinus", deleteOccupantRow);
            var check;
            $("#commercial").on("click", function () {
                check = $("#commercial").prop("checked");
                if (check) {
                    $("#commercialselect").prop("disabled", false);
                } else {
                    $("#commercialselect").prop("disabled", true);
                    $("#commercialselect").val('1');
                    $("#passengerstaxibus").prop("disabled", true);
                    $("#passengerstaxibus").val('');
                }
            });
            $("#commercialselect").change(function () {
                if ($(this).val() == 5) {
                    $("#passengerstaxibus").removeAttr("disabled");
                    $("#passengerstaxibus").focus();
                }
                else {
                    $("#passengerstaxibus").attr("disabled", "disabled");
                    $("#passengerstaxibus").val('');
                }
            });
            $('#drivinglicensepossession input').change(function () {
                var selectedvalue = $(this).val();
                if (selectedvalue === "1") {
                    $("#driverlicensecategory").attr('disabled', 'disabled');
                    $("#drivinglicenseno").attr('disabled', 'disabled');
                    $("#driverlicensecategory").val('');
                    $("#drivinglicenseno").val('');
                }
                else if (selectedvalue === "0") {
                    $("#driverlicensecategory").removeAttr('disabled');
                    $("#drivinglicenseno").removeAttr('disabled');
                    $("#driverlicensecategory").focus();
                }
            });
            $('#learnerpermit input').change(function () {
                var selectedvalue = $(this).val();
                if (selectedvalue === "1") {
                    $("#numberifyes").attr('disabled', 'disabled');
                    $("#numberifyes").val('');
                }
                else if (selectedvalue === "0") {
                    $("#numberifyes").removeAttr('disabled');
                    $("#numberifyes").focus();
                }
            });
            $('#drivervehicle input').change(function () {
                var selectedvalue = $(this).val();
                if (selectedvalue === "1") {
                    $("#nameofinsurer").attr('disabled', 'disabled');
                    $("#addressofinsurer").attr('disabled', 'disabled');
                    $("#nameofinsurer").val('');
                    $("#addressofinsurer").val('');
                }
                else if (selectedvalue === "0") {
                    $("#nameofinsurer").removeAttr('disabled');
                    $("#addressofinsurer").removeAttr('disabled');
                    $("#nameofinsurer").focus();
                }
            });
            $('#vehiclemake input').change(function () {
                var selectedvalue = $(this).val();
                if (selectedvalue === "1") {
                    $("#thirdpartyregno").attr('disabled', 'disabled');
                    $("#thirdpartyregno").val('');
                }
                else if (selectedvalue === "0") {
                    $("#thirdpartyregno").removeAttr('disabled');
                    $("#thirdpartyregno").focus();
                }
            });
            $('#ownerinsured input').change(function () {
                var selectedvalue = $(this).val();
                if (selectedvalue === "1") {
                    $("#Policyno").attr('disabled', 'disabled');
                    $("#Policyno").val('');
                }
                else if (selectedvalue === "0") {
                    $("#Policyno").removeAttr('disabled');
                    $("#Policyno").focus();
                }
            });

            function deleteOccupantRow(button) {
                var par = $(this).parent().parent();
                var row = $(button).closest("TR");
                var name = $("TD", row).eq(0).html();
                if (confirm("Do you want to delete: " + name)) {
                    par.remove();
                }
            };
            function deleteWitnessRow(button) {
                var par = $(this).parent().parent();
                var row = $(button).closest("TR");
                var name = $("TD", row).eq(0).html();
                if (confirm("Do you want to delete: " + name)) {
                    par.remove();
                }
            };

            $("#Table1").on("click", ".BtnMinus", deleteWitnessRow);



            var pickerWeekNums = new Pikaday({
                showWeekNumber: true,
                field: document.getElementById('inceptiondate'),
                firstDay: 1,
                minDate: new Date(1905, 0, 1),
                maxDate: new Date(2020, 12, 31),
                yearRange: [1905, 2020]
            });


            var pickerWeekNums = new Pikaday({
                showWeekNumber: true,
                field: document.getElementById('dateofissue'),
                firstDay: 1,
                minDate: new Date(1905, 0, 1),
                maxDate: new Date(2020, 12, 31),
                yearRange: [1905, 2020]
            });

            var pickerWeekNums = new Pikaday({
                showWeekNumber: true,
                field: document.getElementById('dateofexpiry'),
                firstDay: 1,
                minDate: new Date(1905, 0, 1),
                maxDate: new Date(2020, 12, 31),
                yearRange: [1905, 2020]
            });


            var pickerWeekNums = new Pikaday({
                showWeekNumber: true,
                field: document.getElementById('partdate'),
                firstDay: 1,
                minDate: new Date(1905, 0, 1),
                maxDate: new Date(2020, 12, 31),
                yearRange: [1905, 2020]
            });

            $('#partime').timepicker({
                timeFormat: 'h:mm p',
                interval: 5,
                scrollbar: true,
                minTime: '0',
                maxTime: '23:55'
            });




            $('#Button1').click(function () {
                var hasError = false;
                var errorMesage = "";

                var nameinsuredjs = $("#nameinsured").val();
                var addressmotorjs = $("#addressmotor").val();
                var occupationjs = $("#occupation").val();
                var mobilephonejs = $("#mobilephone").val();
                var telephonenojs = $("#Telephone").val();
                var inceptiondatejs = $("#inceptiondate").val();
                var branchjs = $("#branch").val();
                var makejs = $("#make").val();
                var regnojs = $("#regno").val();
                var ccjs = $("#cc").val();
                var yearofmakejs = $("#yearofmake").val();
                var engnojs = $("#engno").val();
                var chasisnojs = $("#chasisno").val();
                var mileagecoveredjs = $("#mileagecovered").val();
                var purposebeingusedjs = $("#purposebeingused").val();
                var dranamejs = $("#drivername").val();
                var draagejs = $("#age").val();
                var draaddressnamejs = $("#address").val();
                var drivliccatjs = $("#driverlicensecategory").val();
                var drivlicnojs = $("#drivinglicenseno").val();
                var dateofissuejs = $("#dateofissue").val();
                var dateofexpiryjs = $("#dateofexpiry").val();
                var placeofissuejs = $("#placeofissue").val();
                var learnerpermitjs = $("#learnerpermit").val();
                var numberifyesjs = $("#numberifyes").val();
                var periodjs = $("#period").val();
                var relationtodriverjs = $("#relationtodriver").val();
                var employmentdurationjs = $("#employmentduration").val();
                var nameofinsurerjs = $("#nameofinsurer").val();
                var addressofinsurerjs = $("#addressofinsurer").val();
                var partdatejs = $("#partdate").val();
                var partimejs = $("#partime").val();
                var exactlocationjs = $("#exactlocationaccident").val();
                var roadconditionjs = $("#roadcondition").val();
                var weatherconditionjs = $("#weathercondition").val();
                var speedofvehiclejs = $("#speedofvehicle").val();
                var conditionofbrakesjs = $("#Conditionofbrakes").val();
                var directionofcollidedobjectjs = $("#directionofcollidedobject").val();
                var addresspolicestationjs = $("#addresspolicestation").val();
                var insuredvehiclejs = $("#insuredvehicle").val();
                var othervehiclejs = $("#othervehicle").val();
                var fulldetailsdamagedjs = $("#fulldetailsdamaged").val();
                var presentlocdamagedjs = $("#presentlocdamaged").val();
                var roughestrepairjs = $("#roughestrepair").val();
                var repairernamejs = $("#repairername").val();
                var repaireraddressjs = $("#repaireraddress").val();
                var inventorydampartjs = $("#inventorydampart").val();
                var thirdpartynamejs = $("#thirdpartyname").val();
                var thirdpartyaddressjs = $("#thirdpartyaddress").val();
                var typeofpropertyjs = $("#typeofproperty").val();
                var thirdpartyregnojs = $("#thirdpartyregno").val();
                var presentlocationvehiclejs = $("#presentlocationvehicle").val();
                var policynojs = $("#policyno").val();
                var thirdpartynameofinsurerjs = $("#thirdpartynameofinsurer").val();
                var thirdpartyaddressofinsurerjs = $("#thirdpartyaddressofinsurer").val();
                var statusofsignatoryjs = $("#statusofsignatory").val();
                var yearofmakejs = $("#yearofmake").val();
                var commercialselectjs = $("#commercialselect").val();
                var thirdpartyyearofmakejs = $("#thirdpartyyearofmake").val();
                //var $witnamejs = $(':text.witnessname');
                //var $emptywitness = $witnamejs.filter('[value=""]');
                var num = $('.clonedAddress').length;
                var newNum = num + 1;

                if (!$emptywitness.length == '') {
                    hasError = true;
                    errorMesage += "witness name required.\n";
                }
                if (nameinsuredjs == '') {
                    hasError = true;
                    errorMesage += "Name insured required.\n";
                    $('#nameinsured').addclass('invalid-input');
                }
                if (addressmotorjs == '') {
                    hasError = true;
                    errorMesage += "Motor Accident Address required.\n";
                }
                if (occupationjs == '') {
                    hasError = true;
                    errorMesage += "Occupation required.\n";
                }
                if (mobilephonejs == '') {
                    hasError = true;
                    errorMesage += "Mobile Phone  Number required.\n";
                }
                else if (isNaN(mobilephonejs)) {
                    hasError = true;
                    errorMesage += "Mobile Phone Number must be numeric.\n";
                }

                if (telephonenojs == '') {
                    hasError = true;
                    errorMesage += "Telephone Number required.\n";
                }
                else if (isNaN(telephonenojs)) {
                    hasError = true;
                    errorMesage += "Telephone Number must be numeric.\n";
                }
                if (inceptiondatejs == '') {
                    hasError = true;
                    errorMesage += "Inception Date required.\n";
                }
                if (branchjs == '') {
                    hasError = true;
                    errorMesage += "Branch Details required.\n";
                }
                if (makejs == '') {
                    hasError = true;
                    errorMesage += "Make required.\n";
                }
                if (regnojs == '') {
                    hasError = true;
                    errorMesage += "Registration Number required.\n";
                }
                if (ccjs == '') {
                    hasError = true;
                    errorMesage += "CC required.\n";
                }
                if (yearofmakejs == 'Year of Make') {
                    hasError = true;
                    errorMesage += "Please Select Year of Make.\n";
                }
                if (engnojs == '') {
                    hasError = true;
                    errorMesage += "Engine Number required.\n";
                }
                if (chasisnojs == '') {
                    hasError = true;
                    errorMesage += "Chasis Number required.\n";
                }
                if (mileagecoveredjs == '') {
                    hasError = true;
                    errorMesage += "Mileage covered required.\n";
                }
                if (purposebeingusedjs == '') {
                    hasError = true;
                    errorMesage += "Purpose being used required.\n";
                }
                if (dranamejs == '') {
                    hasError = true;
                    errorMesage += "Driver Name required.\n";
                }
                if (draagejs == '') {
                    hasError = true;
                    errorMesage += "Driver Age required.\n";
                }
                else if (isNaN(draagejs)) {
                    hasError = true;
                    errorMesage += "Driver's Age must be numeric.\n";
                }
                if (draaddressnamejs == '') {
                    hasError = true;
                    errorMesage += "Driver Address required.\n";
                }
                if (drivliccatjs == '') {
                    hasError = true;
                    errorMesage += "Driver License Category required.\n";
                }
                if (drivlicnojs == '') {
                    hasError = true;
                    errorMesage += "Driver License Number required.\n";
                }
                if (dateofissuejs == '') {
                    hasError = true;
                    errorMesage += "Date of Issue required.\n";
                }
                if (dateofexpiryjs == '') {
                    hasError = true;
                    errorMesage += "Date of Expiry required.\n";
                }
                if (placeofissuejs == '') {
                    hasError = true;
                    errorMesage += "Place of Issue required.\n";
                }
                if (numberifyesjs == '') {
                    hasError = true;
                    errorMesage += "Learner's Permit Number required.\n";
                }
                if (periodjs == '') {
                    hasError = true;
                    errorMesage += "Period of Accident required.\n";
                }
                if (relationtodriverjs == '') {
                    hasError = true;
                    errorMesage += "Relation to Driver required.\n";
                }
                if (employmentdurationjs == '') {
                    hasError = true;
                    errorMesage += "Employment Duration required.\n";
                }
                if (nameofinsurerjs == '') {
                    hasError = true;
                    errorMesage += "Name of Insurer required.\n";
                }
                if (addressofinsurerjs == '') {
                    hasError = true;
                    errorMesage += "Address of Insurer required.\n";
                }
                if (partimejs == '') {
                    hasError = true;
                    errorMesage += "Particular Time of Accident required.\n";
                }
                if (exactlocationjs == '') {
                    hasError = true;
                    errorMesage += "Exact Location of Accident required.\n";
                }
                if (roadconditionjs == '') {
                    hasError = true;
                    errorMesage += "Details of Road Condition required.\n";
                }
                if (weatherconditionjs == '') {
                    hasError = true;
                    errorMesage += "Details of Weather Condition required.\n";
                }
                if (speedofvehiclejs == '') {
                    hasError = true;
                    errorMesage += "Speed of Vehicle required.\n";
                }
                if (conditionofbrakesjs == '') {
                    hasError = true;
                    errorMesage += "Condition of Brakes required.\n";
                }
                if (directionofcollidedobjectjs == '') {
                    hasError = true;
                    errorMesage += "Direction of Collided Objects required.\n";
                }
                if (addresspolicestationjs == '') {
                    hasError = true;
                    errorMesage += "Address of Police Station required.\n";
                }
                if (insuredvehiclejs == '') {
                    hasError = true;
                    errorMesage += "Number of Persons in Insured Vehicle required.\n";
                }
                if (othervehiclejs == '') {
                    hasError = true;
                    errorMesage += "Number of Persons in Other Vehicle required.\n";
                }
                if (fulldetailsdamagedjs == '') {
                    hasError = true;
                    errorMesage += "Full Details of Damaged Part required.\n";
                }
                if (presentlocdamagedjs == '') {
                    hasError = true;
                    errorMesage += "Present Location of Vehicle required.\n";
                }
                if (roughestrepairjs == '') {
                    hasError = true;
                    errorMesage += "Roughest Repair required.\n";
                }
                if (repairernamejs == '') {
                    hasError = true;
                    errorMesage += "Repairer Name required.\n";
                }
                if (repaireraddressjs == '') {
                    hasError = true;
                    errorMesage += "Repairer Address required.\n";
                }
                if (inventorydampartjs == '') {
                    hasError = true;
                    errorMesage += "Inventory of Damaged Part required.\n";
                }
                if (thirdpartynamejs == '') {
                    hasError = true;
                    errorMesage += "Third Party Name required.\n";
                }
                if (thirdpartyaddressjs == '') {
                    hasError = true;
                    errorMesage += "Third Party Address required.\n";
                }
                if (typeofpropertyjs == '') {
                    hasError = true;
                    errorMesage += "Type of Property required.\n";
                }
                if (thirdpartyregnojs == '') {
                    hasError = true;
                    errorMesage += "Third Party Registration Number required.\n";
                }

                if (thirdpartyyearofmakejs == 'Select Year of Make') {
                    hasError = true;
                    errorMesage += "Please Select Third Party Year of Make.\n";
                }
                if (presentlocationvehiclejs == '') {
                    hasError = true;
                    errorMesage += "Present Location of Vehicle required.\n";
                }
                if (policynojs == '') {
                    hasError = true;
                    errorMesage += "Policy Number required.\n";

                }
                if (thirdpartynameofinsurerjs == '') {
                    hasError = true;
                    errorMesage += "Third Party Name of Insurer required.\n";
                }
                if (thirdpartyaddressofinsurerjs == '') {
                    hasError = true;
                    errorMesage += "Third Party Address of Insurer required.\n";
                }
                if (statusofsignatoryjs == '') {
                    hasError = true;
                    errorMesage += "Status of Signatory required.\n";
                }

                if (hasError) {
                    alert(errorMesage);
                    return false;
                }



            });
        });

        </script>


    <style type="text/css">
        .invalid-input{
            border-color:red;
            border: solid 2px;
        }
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
.witnessname{
    width:100%;
    padding:12px 20px;
    margin:8px 0;
    box-sizing:border-box;
}

.witnessaddress{
    width:100%;
    padding:12px 20px;
    margin:8px 0;
    box-sizing:border-box;
}

.occupantname{
    width:100%;
    padding:12px 20px;
    margin:8px 0;
    box-sizing:border-box;
}


.occupantaddress{
    width:100%;
    padding:12px 20px;
    margin:8px 0;
    box-sizing:border-box;
}


table {	font-size: 1em;
            margin-top: 0px;
        }

p {	margin-top: 0; }

        .auto-style2 {
            width: 7%;
        }
        .auto-style4 {
            width: 86%;
        }
        .auto-style5 {
            height: 33px;
            width: 7%;
        }
        .auto-style6 {
            width: 45%;
            height: 33px;
        }
        .auto-style9 {
        }
        .auto-style10 {
            width: 444px;
        }
        .auto-style12 {
            width: 208px;
            height: 15px;
        }
        .auto-style13 {
            width: 208px;
            height: 25px;
        }
        .auto-style58 {
            height: 32px;
        }
        .auto-style59 {
            height: 25px;
        }
        .auto-style62 {
            width: 213px;
        } 
        .addauto-style68 {
            width: 30px;
        }  
        .auto-style68 {
            width: 65px;
        }
        .auto-btnstyle68 {
            width: 60px;
        }
        .auto-style80 {
            height: 32px;
        }
        .auto-style82 {
            width: 172px;
        }
        .auto-style83 {
            width: 178px;
        }
        .auto-style84 {
            width: 258px;
        }
        .auto-style85 {
            width: 208px;
        }
        .auto-style86 {
            width: 100%;
        }
        .auto-style87 {
            width: 2px;
        }
        .auto-style93 {
            width: 159px;
        }
        .auto-style94 {
            width: 222px;
        }
        .container {
            width: 100%;
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

    <table  style ="border-spacing: 1px; padding:1px; width:100%; text-align:center;" border="1"> 
<tr><td  style="text-align:left; width:auto; ">

<table style ="border-spacing: 1px; padding:1px; width:100%;">
    <tr>
    <td style="text-align: center; color:#bb0000;"   class="auto-style4"><b>LAW UNION MOTOR CLAIM</b></td>
</tr>
<tr>
    <td  style="text-align: left; color:#bb0000;" class="auto-style4"><b>MOTOR ACCIDENT REPORT FORM</b></td>
</tr>

</table>
    
<table style ="border-spacing: 1px; padding:1px; width:100%; color:#001188;" >

    <tr><td class="auto-style5" > 
        <asp:Label ID="Label1" runat="server" Text="Name of Insured" CssClass="label"></asp:Label>
    </td>
    <td class="auto-style6">   <asp:TextBox ID="nameinsured" runat="server" Width="273px"  CssClass="input-field"></asp:TextBox>
        </td>
</tr>

<tr><td  class="auto-style2" ><asp:Label ID="Label2" runat="server" Text="Address" CssClass="label"></asp:Label>
    </td><td  style="width: 45%">
    <asp:TextBox ID="addressmotor" runat="server" Width="278px" CssClass="input-field"></asp:TextBox>
    </td>
    </tr>



<tr><td style="text-align:left;" class="auto-style2"><asp:Label ID="Label3" runat="server" Text="Occupaton" CssClass="label"></asp:Label>
      </td>
<td style=" color:#001188;">
     <asp:TextBox ID="occupation" runat="server" Width="278px" CssClass="input-field"></asp:TextBox></td></tr>

<tr><td style="text-align:left; color:#001188;"class="auto-style2"> 
     <asp:Label ID="Label4" runat="server" Text="Mobile Phone No" CssClass="label"></asp:Label>
    </td>
     <td style="text-align:left;"><asp:TextBox ID="mobilephone" runat="server" Width="278px" CssClass="input-field"></asp:TextBox>&nbsp;</td>
</tr>

    <tr><td style="text-align:left;" class="auto-style2">
        <asp:Label ID="Label5" runat="server" Text="Telephone No" CssClass="label"></asp:Label>
        </td>
     <td style="text-align:left;"><asp:TextBox ID="Telephone" runat="server" Width="278px" CssClass="input-field"></asp:TextBox>&nbsp;</td>
</tr>
    <tr><td style="text-align:left; vertical-align:text-top;color:#001188;" class="auto-style2"> 
        <asp:Label ID="Label6" runat="server" Text="Inception Date" CssClass="label"></asp:Label>
        </td>
     <td style="text-align:left;"><asp:TextBox ID="inceptiondate" runat="server" Width="278px" CssClass="input-field" ></asp:TextBox></td>
</tr>

       <tr><td style="text-align:left; color:#001188;" class="auto-style2"> 
           <asp:Label ID="Label7" runat="server" Text="Branch" CssClass="label"></asp:Label>
           </td>
     <td style="text-align:left;"><asp:TextBox ID="branch" runat="server" Width="278px" CssClass="input-field" ></asp:TextBox>&nbsp;</td>
</tr>

</table>

    
<br/>
        <table style="border-spacing: 1px; padding:1px; width:100%;">
            <tr>
                <td  style="text-align:left; color:#bb0000">
         <b>VEHICLE INSURED PARTICULARS</b> </td>
     </td>
    </tr>
        </table>
        <table style ="border-spacing: 1px; padding:1px; width:100%; color:#001188;" border="1">
            <tr><td style="text-align:left; vertical-align:text-top "  class="auto-style68"><asp:Label ID="Label8" runat="server" Text="Make" CssClass="label"></asp:Label>
                </td>
                <td style="text-align:left; vertical-align:text-top;"   class="auto-style68"><asp:Label ID="Label9" runat="server" Text="Reg. No." CssClass="label"></asp:Label>
                </td>
                 <td style="text-align:left; vertical-align:text-top;"   class="auto-style68"><asp:Label ID="Label10" runat="server" Text="C.C" CssClass="label"></asp:Label>
                </td>
                <td style="text-align:left; vertical-align:text-top;"   class="auto-style68"><asp:Label ID="Label11" runat="server" Text="Year of make" CssClass="label"></asp:Label>
                    &nbsp;</td>
                 <td style="text-align:left; vertical-align:text-top;"   class="auto-style68"><asp:Label ID="Label12" runat="server" Text="Eng. No." CssClass="label"></asp:Label>
                </td>
                <td style="text-align:left; vertical-align:text-top;"   class="auto-style68"><asp:Label ID="Label13" runat="server" Text="Chasis No." CssClass="label"></asp:Label>
                </td>
                 <td style="text-align:left; vertical-align:text-top;"   class="auto-style68"><asp:Label ID="Label14" runat="server" Text="Mileage Covered"></asp:Label>
                </td>
                <td style="text-align:left; vertical-align:text-top;"   class="auto-style68"><asp:Label ID="Label15" runat="server" Text="Purpose being used" CssClass="label"></asp:Label>
                </td>
</tr>
              <tr><td style="text-align:left; vertical-align:text-top;color=#001188;"   ><asp:TextBox ID="make" runat="server" Width="100%" CssClass="input-field"></asp:TextBox>
                  </td>
                <td style="text-align:left; vertical-align:text-top;"   >

    <asp:TextBox ID="regno" runat="server" Width="100%" CssClass="input-field"></asp:TextBox>
                  </td>
                 <td style="text-align:left; vertical-align:text-top; color:#001188" >

    <asp:TextBox ID="cc" runat="server" Width="100%" CssClass="input-field"></asp:TextBox>
                  </td>
                <td style="text-align:left; vertical-align:text-top;color=#001188;">

   
    <asp:DropDownList CssClass="select-field" ID="yearofmake" runat="server" Width="100%">
                                            <asp:ListItem>Year of Make</asp:ListItem>
                                        <asp:ListItem>2020</asp:ListItem>
                                        <asp:ListItem>2019</asp:ListItem>
                                        <asp:ListItem>2018</asp:ListItem>
                                        <asp:ListItem>2017</asp:ListItem>
                                        <asp:ListItem>2016</asp:ListItem>
                                        <asp:ListItem>2015</asp:ListItem>
                                        <asp:ListItem>2014</asp:ListItem>
                                        <asp:ListItem>2013</asp:ListItem>
                                        <asp:ListItem>2012</asp:ListItem>
                                        <asp:ListItem>2011</asp:ListItem>
                                        <asp:ListItem>2010</asp:ListItem>
                                        <asp:ListItem>2009</asp:ListItem>
                                        <asp:ListItem>2008</asp:ListItem>
                                        <asp:ListItem>2007</asp:ListItem>
                                        <asp:ListItem>2006</asp:ListItem>
                                        <asp:ListItem>2005</asp:ListItem>
                                        <asp:ListItem>2004</asp:ListItem>
                                        <asp:ListItem>2003</asp:ListItem>
                                        <asp:ListItem>2002</asp:ListItem>
                                        <asp:ListItem>2001</asp:ListItem>
                                        <asp:ListItem>2000</asp:ListItem>
                                        <asp:ListItem>1999</asp:ListItem>
                                        <asp:ListItem>1998</asp:ListItem>
                                        <asp:ListItem>1997</asp:ListItem>
                                        <asp:ListItem>1996</asp:ListItem>
                                        <asp:ListItem>1995</asp:ListItem>
                                        <asp:ListItem>1994</asp:ListItem>
                                        <asp:ListItem>1993</asp:ListItem>
                                        <asp:ListItem>1992</asp:ListItem>
                                        <asp:ListItem>1991</asp:ListItem>
                                        <asp:ListItem>1990</asp:ListItem>
                                        <asp:ListItem>1989</asp:ListItem>
                                        <asp:ListItem>1988</asp:ListItem>
                                        <asp:ListItem>1987</asp:ListItem>
                                        <asp:ListItem>1986</asp:ListItem>
                                        <asp:ListItem>1985</asp:ListItem>
                                        <asp:ListItem>1984</asp:ListItem>
                                        <asp:ListItem>1983</asp:ListItem>
                                        <asp:ListItem>1982</asp:ListItem>
                                        <asp:ListItem>1981</asp:ListItem>
                                        <asp:ListItem>1980</asp:ListItem>
                                        <asp:ListItem>1979</asp:ListItem>
                                        <asp:ListItem>1978</asp:ListItem>
                                        <asp:ListItem>1977</asp:ListItem>
                                        <asp:ListItem>1976</asp:ListItem>
                                        <asp:ListItem>1975</asp:ListItem>
                                        <asp:ListItem>1974</asp:ListItem>
                                        <asp:ListItem>1973</asp:ListItem>
                                        <asp:ListItem>1972</asp:ListItem>
                                        <asp:ListItem>1971</asp:ListItem>
                                        <asp:ListItem>1970</asp:ListItem>
                                        <asp:ListItem>1969</asp:ListItem>
                                        <asp:ListItem>1968</asp:ListItem>
                                        <asp:ListItem>1967</asp:ListItem>
                                        <asp:ListItem>1966</asp:ListItem>
                                        <asp:ListItem>1965</asp:ListItem>
                                        <asp:ListItem>1964</asp:ListItem>
                                        <asp:ListItem>1963</asp:ListItem>
                                        <asp:ListItem>1962</asp:ListItem>
                                       <asp:ListItem>1961</asp:ListItem>
                                        <asp:ListItem>1960</asp:ListItem>
                                        <asp:ListItem>1959</asp:ListItem>
                                        <asp:ListItem>1958</asp:ListItem>
                                        <asp:ListItem>1957</asp:ListItem>
                                        <asp:ListItem>1956</asp:ListItem>
                                        <asp:ListItem>1955</asp:ListItem>
                                        <asp:ListItem>1954</asp:ListItem>
                                        <asp:ListItem>1953</asp:ListItem>
                                        <asp:ListItem>1952</asp:ListItem>
                                        <asp:ListItem>1951</asp:ListItem>
                                        <asp:ListItem>1950</asp:ListItem>
                                        <asp:ListItem>1949</asp:ListItem>
                                        <asp:ListItem>1948</asp:ListItem>
                                        <asp:ListItem>1947</asp:ListItem>
                                        <asp:ListItem>1946</asp:ListItem>
                                        <asp:ListItem>1945</asp:ListItem>
                                        <asp:ListItem>1944</asp:ListItem>
                                        <asp:ListItem>1943</asp:ListItem>
                                        <asp:ListItem>1942</asp:ListItem>
                                        <asp:ListItem>1941</asp:ListItem>
                                        <asp:ListItem>1940</asp:ListItem>
                                        <asp:ListItem>1939</asp:ListItem>
                                        <asp:ListItem>1938</asp:ListItem>
                                        <asp:ListItem>1937</asp:ListItem>
                                        <asp:ListItem>1936</asp:ListItem>
                                        <asp:ListItem>1935</asp:ListItem>
                                        <asp:ListItem>1934</asp:ListItem>
                                        <asp:ListItem>1933</asp:ListItem>
                                        <asp:ListItem>1932</asp:ListItem>
                                        <asp:ListItem>1931</asp:ListItem>
                                        <asp:ListItem>1930</asp:ListItem>
                                        <asp:ListItem>1929</asp:ListItem>
                                        <asp:ListItem>1928</asp:ListItem>
                                        <asp:ListItem>1927</asp:ListItem>
                                        <asp:ListItem>1926</asp:ListItem>
                                        <asp:ListItem>1925</asp:ListItem>
                                        <asp:ListItem>1924</asp:ListItem>
                                        <asp:ListItem>1923</asp:ListItem>
                                        <asp:ListItem>1922</asp:ListItem>
                                        <asp:ListItem>1921</asp:ListItem>
                                        <asp:ListItem>1920</asp:ListItem>
                                        <asp:ListItem>1919</asp:ListItem>
                                        <asp:ListItem>1918</asp:ListItem>
                                        <asp:ListItem>1917</asp:ListItem>
                                        <asp:ListItem>1916</asp:ListItem>
                                        <asp:ListItem>1915</asp:ListItem>
                                        <asp:ListItem>1914</asp:ListItem>
                                        <asp:ListItem>1913</asp:ListItem>
                                        <asp:ListItem>1912</asp:ListItem>
                                        <asp:ListItem>1911</asp:ListItem>
                                        <asp:ListItem>1910</asp:ListItem>
                                        <asp:ListItem>1909</asp:ListItem>
                                        <asp:ListItem>1908</asp:ListItem>
                                        <asp:ListItem>1907</asp:ListItem>
                                        <asp:ListItem>1906</asp:ListItem>
                                        <asp:ListItem>1905</asp:ListItem>
                                         </asp:DropDownList>
                  </td>
                 <td style="text-align:left; vertical-align:text-top;color:#001188;">

    <asp:TextBox ID="engno" runat="server" Width="100%" CssClass="input-field"></asp:TextBox>
                  </td>
                <td style="text-align:left; vertical-align:text-top;" class="auto-style58" >

    <font color=#001188 face='sans-serif' size=2>
    <asp:TextBox ID="chasisno" runat="server" Width="100%" CssClass="input-field"></asp:TextBox>
                  </td>
                 <td style="text-align:left; vertical-align:text-top;">
    <asp:TextBox ID="mileagecovered" runat="server" Width="100%" CssClass="input-field"></asp:TextBox>
                  </td>
                <td style="text-align:left; vertical-align:text-top;"><asp:TextBox ID="purposebeingused" runat="server" Width="100%" CssClass="input-field"></asp:TextBox></td>
           
                   </tr>
            
               </table>
        <br/><br/>
         

        <table style ="border-spacing: 1px; padding:1px; width:100%;" border="1">
            <tr><td style="text-align:left;color:#001188;" class="auto-style86" colspan="3"><asp:CheckBox ID="commercial" runat="server" Checked="false" AutoPostBack="false"  Text="If Commercial" CssClass="checkbox" ></asp:CheckBox> 
                </td>
                </tr>
            <tr><td style="text-align:left; vertical-align:text-top; color:#001188;"   class="auto-style87" >
                <asp:Label ID="Label16" runat="server" Text="Commercial" CssClass="label"></asp:Label>
                </td>
                <td style="text-align:left; vertical-align:text-top;" class="auto-style93"> <asp:DropDownList CssClass="select-field" ID="commercialselect" AutoPostBack="false"  runat="server" Enabled="False" onchange = "EnableDisableTextBox(this)">
                                            <asp:ListItem Value ="1" Text="Commercial type of use"/>
                                            <asp:ListItem Value ="2" Text="Own Goods"/>
                                            <asp:ListItem Value ="3" Text="Goods Only"/>
                                            <asp:ListItem Value ="4" Text="General Cartage"/>
                                            <asp:ListItem Value ="5" Text="Taxi/Bus"/>
                                        </asp:DropDownList>
                </td>
                <td style="text-align:left; vertical-align:text-top; color:#001188;" class="auto-style62"><asp:Label ID ="passengerslabel" runat  ="server" Text="No of Passenger" CssClass ="label"></asp:Label>
                    <asp:TextBox ID ="passengerstaxibus" runat ="server" width="100%" CssClass ="input-field " Enabled="False"></asp:TextBox>
                </td>
                 </tr>
              
	 <tr>
     <td colspan="5" style="text-align:left;">
         </td>
    </tr>
			</table>

        <table style ="border-spacing: 1px; padding:1px; width:100%; color:#001188;" >
            <tr><td  style="text-align:left; color:#bb0000;" class="auto-style86"><b>DRIVER AT THE TIME OF ACCIDENT</b> </td>
</tr>
            </table>

        <table style ="border-spacing: 1px; padding:1px; width:100%; color:#001188;" >
<tr>
     <td style="text-align:left; " class="auto-style94"><asp:Label ID="Label21" runat="server" Text="Name" CssClass="label"></asp:Label>
     </td>
     <td style="text-align:left; vertical-align:text-top;color:#001188;" >
      &nbsp;&nbsp;
     <asp:TextBox ID="drivername" runat="server" Width="278px" CssClass="input-field"></asp:TextBox>
         </td>
</tr>
<tr>
     <td style="text-align:left;" class="auto-style94"><asp:Label ID="Label22" runat="server" Text="Age" CssClass="label"></asp:Label>
     </td>
     <td style="text-align:left; color:#001188;" >
      &nbsp;&nbsp;
     <asp:TextBox ID="age" runat="server" Width="278px" CssClass="input-field"></asp:TextBox>
         </td>
</tr>
<tr>
     <td style="text-align:left; " class="auto-style94"><asp:Label ID="Label23" runat="server" Text="Address"></asp:Label>
     </td>
     <td style="text-align:left;color:#001188;" >
      &nbsp;&nbsp;
     <asp:TextBox ID="address" runat="server" Width="278px" CssClass="input-field"></asp:TextBox>
         </td>
</tr>
            <tr>
     <td style="text-align:left; color:#001188;"  class="auto-style94">&nbsp;<asp:Label ID="Label24" runat="server" Text="Driving License Possession" CssClass="label"></asp:Label>
                </td>
     <td style="text-align:left;">
         &nbsp; &nbsp;<asp:RadioButtonList ID="drivinglicensepossession" runat ="server"  RepeatDirection="Horizontal" AutoPostBack="false" RepeatLayout="Flow">
             <asp:ListItem Value="0">Yes</asp:ListItem>
             <asp:ListItem Value="1">No</asp:ListItem>
         </asp:RadioButtonList>  
         </td>
</tr>
<tr>
     <td style="text-align:left; " class="auto-style94">&nbsp;<asp:Label ID="Label25" runat="server" Text="Driving License Category" CssClass="label"></asp:Label>
     </td>
     <td style="text-align:left; ">
         &nbsp;
     <asp:TextBox ID="driverlicensecategory" runat="server" Width="278px" CssClass="input-field" Enabled="False"></asp:TextBox>
         </td>
</tr>
<tr>
     <td style="text-align:left;"  class="auto-style94"><asp:Label ID="Label26" runat="server" Text="Driving License No" CssClass="label"></asp:Label>
     </td>
     <td style="text-align:left;color:#001188;">&nbsp;&nbsp;<asp:TextBox ID="drivinglicenseno" runat="server" Width="278px" CssClass="input-field" Enabled="False"></asp:TextBox>
         </td>
</tr>
          <tr>
     <td style="text-align:left; color:#001188;" class="auto-style94">&nbsp;<asp:Label ID="Label27" runat="server" Text="Driving License Endorsement" CssClass="label"></asp:Label>
              </td>
     <td style="text-align:left;">
        &nbsp; &nbsp; <asp:RadioButtonList ID="drivinglicenseendorsement" runat ="server"   RepeatDirection="Horizontal"  RepeatLayout="Flow" ClientIDMode="Static">
             <asp:ListItem Value="0">Yes</asp:ListItem>
             <asp:ListItem Value="1">No</asp:ListItem>
         </asp:RadioButtonList>
     </td>
</tr>
                      <tr>
     <td style="text-align:left; " class="auto-style94"><asp:Label ID="Label28" runat="server" Text="Date of Issue" CssClass="label"></asp:Label>
                          </td>
     <td style="text-align:left; color:#001188;">
      &nbsp;&nbsp;<asp:TextBox ID="dateofissue" runat="server" Width="278px" CssClass="input-field"></asp:TextBox>
         </td>
</tr>
                      <tr>
     <td style="text-align:left;" class="auto-style94"><asp:Label ID="Label29" runat="server" Text="Date of Expiry"></asp:Label>
                          </td>
     <td style="text-align:left; color=:001188;">
      &nbsp;&nbsp;<asp:TextBox ID="dateofexpiry" runat="server" Width="278px" CssClass="input-field"></asp:TextBox>
         </td>
</tr>
          <tr>
     <td style="text-align:left; "  class="auto-style94"><asp:Label ID="Label30" runat="server" Text="Place of Issue" CssClass="label"></asp:Label>
              </td>
     <td style="text-align:left; color=:001188;" >
      &nbsp;&nbsp;<asp:TextBox ID="placeofissue" runat="server" Width="278px" CssClass="input-field"></asp:TextBox>
         </td>
</tr>
 <tr>
     <td style="text-align:left; "  class="auto-style94"><asp:Label ID="Label31" runat="server" Text="Learners' permit?" CssClass="label"></asp:Label>
     </td>
     <td style="text-align:left; ">
        &nbsp; &nbsp; <asp:RadioButtonList ID="learnerpermit" runat ="server"  RepeatDirection="Horizontal" RepeatLayout="Flow" ClientIDMode="Static">
             <asp:ListItem Value="0">Yes</asp:ListItem>
             <asp:ListItem Value="1">No</asp:ListItem>
         </asp:RadioButtonList>
     </td>
</tr>
<tr>
     <td style="text-align:left; " class="auto-style94"><asp:Label ID="Label32" runat="server" Text="Number (if yes)" CssClass="label"></asp:Label>
     </td>
     <td style="text-align:left; color:#001188;">
      &nbsp;&nbsp;<asp:TextBox ID="numberifyes" runat="server" Width="278px" CssClass="input-field" Enabled="False"></asp:TextBox>
        </td>
</tr>
<tr>
     <td style="text-align:left;" class="auto-style94"><asp:Label ID="Label33" runat="server" Text="Period" CssClass="label"></asp:Label>
     </td>
     <td style="text-align:left; color:#001188;">
      &nbsp;&nbsp;<asp:TextBox ID="period" runat="server" Width="278px" CssClass="input-field"></asp:TextBox>
        </td>
</tr>
            <tr>
     <td style="text-align:left; " class="auto-style94"><asp:Label ID="Label34" runat="server" Text="Relation of Driver to insured" CssClass="label"></asp:Label>
                </td>
     <td style="text-align:left; color:#001188;">
      &nbsp;&nbsp;<asp:TextBox ID="relationtodriver" runat="server" Width="278px" CssClass="input-field"></asp:TextBox>
        </td>
</tr>
     <tr>
     <td style="text-align:left; " class="auto-style94"><asp:Label ID="Label35" runat="server" Text="Employment Duration (if paid)" CssClass="label"></asp:Label>
         </td>
     <td style="text-align:left; color=#001188;">
      &nbsp;&nbsp;<asp:TextBox ID="employmentduration" runat="server" Width="278px" CssClass="input-field"></asp:TextBox>
        </td>
</tr>
<tr>
     <td style="text-align:left;"  class="auto-style94"><asp:Label ID="Label36" runat="server" Text="Does Driver own a vehicle?" CssClass="label"></asp:Label>
     </td>
     <td style="text-align:left;" class="auto-style10">
         &nbsp; &nbsp;<asp:RadioButtonList ID="drivervehicle" runat ="server"  RepeatDirection="Horizontal" RepeatLayout="Flow" ClientIDMode="Static">
             <asp:ListItem Value="0">Yes</asp:ListItem>
             <asp:ListItem Value="1">No</asp:ListItem>
         </asp:RadioButtonList>
     </td>
</tr>
<tr>
     <td style="text-align:left;" class="auto-style94"><asp:Label ID="Label37" runat="server" Text="Name of Insurer" CssClass="label"></asp:Label>
     </td>
     <td style="text-align:left; color=#001188;">
      &nbsp;&nbsp;<asp:TextBox ID="nameofinsurer" runat="server" Width="278px" CssClass="input-field" Enabled="False"></asp:TextBox>
        </td>
</tr>
<tr>
     <td style="text-align:left;" class="auto-style94"><asp:Label ID="Label38" runat="server" Text="Address of Insurer" CssClass="label"></asp:Label>
     </td>
     <td style="text-align:left; color=#001188;">
      &nbsp;&nbsp;<asp:TextBox ID="addressofinsurer" runat="server" Width="278px" CssClass="input-field" Enabled="False"></asp:TextBox>
        </td>
</tr>
<tr>
     <td style="text-align:left; " class="auto-style94">&nbsp; </td>
     <td style="text-align:left; ">&nbsp;</td>
</tr>

</table>
   <table style ="border-spacing: 1px; padding:1px; width:100%; color:#001188;"  >
       <tr>
     <td style="text-align:left; color:#bb0000;" class="auto-style9" colspan="2">&nbsp;<b>PARTICULAR OF ACCIDENT</b></td>
</tr>
       </table>
   <table style ="border-spacing: 1px; padding:1px; width:100%; color:#001188;"  >
       <tr>
     <td style="text-align:left; " class="auto-style85"><asp:Label ID="Label39" runat="server" Text="Date of Accident" CssClass="label"></asp:Label>
           </td>
     <td style="text-align:left; color=#001188;">
      &nbsp;&nbsp;<asp:TextBox ID="partdate" runat="server" Width="278px" CssClass="input-field"  ></asp:TextBox>
        </td>
</tr>
 <tr>
     <td style="text-align:left;" class="auto-style85"><asp:Label ID="Label40" runat="server" Text="Time" CssClass="label"></asp:Label>
     </td>
     <td style="text-align:left; color:#001188;">
      &nbsp;&nbsp;<asp:TextBox ID="partime" runat="server" Width="278px" CssClass="input-field"></asp:TextBox>
        </td>
</tr>
        <tr>
     <td style ="text-align:left;" class="auto-style85"><asp:Label ID="Label41" runat="server" Text="Exact Location of Accident" CssClass="label"></asp:Label>
            </td>
     <td style="text-align:left;color:#001188;" >
      &nbsp;&nbsp;<asp:TextBox ID="exactlocationaccident" runat="server" Width="278px" CssClass="input-field"></asp:TextBox>
        </td>
</tr>
 <tr>
     <td style="text-align:left; " class="auto-style85"><asp:Label ID="Label42" runat="server" Text="Road Condition" CssClass="label"></asp:Label>
     </td>
     <td style="text-align:left; color:#001188;">
      &nbsp;&nbsp;<asp:TextBox ID="roadcondition" runat="server" Width="278px" CssClass="input-field"></asp:TextBox>
        </td>
</tr>
<tr>
     <td style="text-align:left; " class="auto-style85"><asp:Label ID="Label43" runat="server" Text="Weather Condition" CssClass="label"></asp:Label>
     </td>
     <td style="text-align:left; color:#001188;">
      &nbsp;&nbsp;<asp:TextBox ID="weathercondition" runat="server" Width="278px" CssClass="input-field"></asp:TextBox>
        </td>
</tr>
<tr>
     <td style="text-align:left; "class="auto-style85"><asp:Label ID="Label44" runat="server" Text="Speed of your Vehicle" CssClass="label"></asp:Label>
     </td>
     <td style="text-align:left; color:#001188;">
      &nbsp;&nbsp;<asp:TextBox ID="speedofvehicle" runat="server" Width="278px" CssClass="input-field"></asp:TextBox>
        </td>
</tr>
<tr>
     <td style="text-align:left;" class="auto-style85"><asp:Label ID="Label45" runat="server" Text="Condition of brakes" CssClass="label"></asp:Label>
     </td>
     <td style="text-align:left;color:#001188;">
      &nbsp;&nbsp;<asp:TextBox ID="Conditionofbrakes" runat="server" Width="278px" CssClass="input-field"></asp:TextBox>
        </td>
</tr>
       <tr>
     <td style="text-align:left; " class="auto-style85"><asp:Label ID="Label46" runat="server" Text="If Object collided what was moving, what direction was it going?"></asp:Label>
           </td>
     <td style="text-align:left; color=#001188;">
      &nbsp;&nbsp;<asp:TextBox ID="directionofcollidedobject" runat="server" Width="278px" CssClass="input-field"></asp:TextBox>
        </td>
</tr>
 <tr>
     <td style="text-align:left; " class="auto-style85"><asp:Label ID="Label47" runat="server" Text="Address of Police Station Accident was reported"></asp:Label>
     </td>
     <td style="text-align:left; color:#001188;">
      &nbsp;&nbsp;<asp:TextBox ID="addresspolicestation" runat="server" Width="278px" CssClass="input-field"></asp:TextBox>
        </td>
</tr>
<tr>
     <td style="text-align:left; color:#bb0000;" class="auto-style12">&nbsp;<b>Number of Persons&nbsp; in</b></td>
     
</tr>
       <tr>
     <td style="text-align:left; " class="auto-style13"> <br><asp:Label ID="Label48" runat="server" Text="(i) Insured Vehicle" CssClass="label"></asp:Label>
           </td>
     <td style="text-align:left; color=#001188;"class="auto-style59">
      &nbsp;&nbsp;<asp:TextBox ID="insuredvehicle" runat="server" Width="278px" CssClass="input-field"></asp:TextBox>
        
        </td>
</tr>
         <tr><td class="auto-style85">
             (ii)<asp:Label ID="Label49" runat="server" Text="The other Vehicle" CssClass="label"></asp:Label>
             </td>
     <td style="text-align:left; color:#001188;" class="auto-style10">
      &nbsp;&nbsp;<asp:TextBox ID="othervehicle" runat="server" Width="278px" CssClass="input-field"></asp:TextBox>
        </td>
</tr>
  <tr><td class="auto-style85" style ="color:#001188;">
      <asp:Label ID="Label50" runat="server" Text="Full Description of Accident" CssClass="label"></asp:Label>
      </td>
     <td style =" text-align:left; color:#001188;" class="auto-style10">
      &nbsp;&nbsp;<asp:FileUpload ID="fulldescriptionacc" runat="server" Multiple="Multiple"/></td>
</tr>


   </table>
        
  <table style ="border-spacing: 1px; padding:1px; width:100%;">
      <tr>
     <td colspan="4" style ="text-align:left;"> 
         </td>
    </tr>
      <tr>
     <td colspan='2' style ="border-spacing: 1px; padding:1px; width:100%; text-align:left; color:#bb0000;"  class="auto-style86">
         &nbsp; <b>(A) Witness&nbsp; </b></td>
   </tr>
      </table>
        
        <table style ="border-spacing: 1px; padding:1px; width:100%;" border="1" id="Table1">
            <tbody>
        </tbody>
            <asp:PlaceHolder runat="server" ID="witnesspanel">
              <tfoot id="witnesstfoot">
                  
                   <tr>

                  <td  style="text-align:left; vertical-align:text-top; color:#001188;" class="addauto-style68" colspan ="3">
                      <input type="button" onclick="AddTextBox()" value="Add Witness"  id="addwitnessbtn"/>
                  </td>
            </tr>
            <tr ><td style="text-align:left; vertical-align:text-top; color:#001188;" class="auto-style80"><asp:Label ID="Label52" runat="server" Text="Name" CssClass="label"></asp:Label>
                </td>
                <td style="text-align:left; vertical-align:text-top;color:#001188;" class="auto-style80" colspan="2"><asp:Label ID="Label53" runat="server" Text="Address" CssClass="label"></asp:Label>
                </td>
                 </tr> 
                </tfoot> 
           </asp:PlaceHolder>
			</table>
        
        <br />

         <table style ="border-spacing: 1px; padding:1px; width:100%;">

         
             <tr>
     <td style="text-align:left; color:#bb0000;" class="auto-style86" colspan="3"><b>(A) Occupant   </b></td>
   </tr>
              </table>
        
        <table style ="border-spacing: 1px; padding:1px; width:100%;" border="1" id="Table2">
            <tbody>
        </tbody>
            <asp:PlaceHolder id="occupantpanel" runat="server">
              <tfoot id="occupanttfoot">
                 
                <tr>
                  <td style="text-align:left; vertical-align:top;" class="addauto-style68" colspan ="3">
                    <input type="button" onclick="AddOccTextBox()" value="Add Occupant" id="addoccupantbtn"/>
                  </td>  
            </tr>
            <tr ><td style="text-align:left; vertical-align:text-top; color:#001188;" class="auto-style80"><asp:Label ID="Label51" runat="server" Text="Name" CssClass="label"></asp:Label>
                </td>
                <td style="text-align:left; vertical-align:text-top; color:#001188;" class="auto-style80" colspan="2" ><asp:Label ID="Label54" runat="server" Text="Address" CssClass="label"></asp:Label>
                </td>
                 </tr>
          
                 </tfoot>
                </asp:PlaceHolder>
			</table>



<table style ="border-spacing: 1px; padding:1px; width:100%; color:#001188;">
     <tr>
     <td style="text-align:left;   color:#bb0000;" class="auto-style9" colspan="2">&nbsp;<b>DAMAGE TO INSURED VEHICLE</b></td>
</tr>
     <tr><td class="auto-style82" style=" color:#001188;">
    
    
         <asp:Label ID="Label56" runat="server" Text="Full details of Damaged Part " CssClass="label"></asp:Label>
         </td>
     <td style="text-align:left;" class="auto-style10">
      &nbsp;&nbsp;<asp:TextBox ID="fulldetailsdamaged" runat="server" Width="278px" CssClass="input-field" ></asp:TextBox>
        </td>
</tr>
        <tr><td class="auto-style82">
     
            <asp:Label ID="Label57" runat="server" Text="Present Location of Vehicle" CssClass="label"></asp:Label>
            </td>
     <td style="text-align:left;" class="auto-style10">
      &nbsp;&nbsp;<asp:TextBox ID="presentlocdamaged" runat="server" Width="278px" CssClass="input-field" ></asp:TextBox>
        </td>
</tr>
      <tr><td class="auto-style82">
          <asp:Label ID="Label58" runat="server" Text="Rough Estimate of Repair" CssClass="label"></asp:Label>
          </td>
     <td style="text-align:left;   color:#001188;" class="auto-style10">
      &nbsp;&nbsp;<asp:TextBox ID="roughestrepair" runat="server" Width="278px" CssClass="input-field" ></asp:TextBox>
        </td>
</tr>
      <tr><td class="auto-style82">
          <asp:Label ID="Label59" runat="server" Text="Repairer's Name " CssClass="label"></asp:Label>
          </td>
     <td style="text-align:left;" class="auto-style10">
      &nbsp;&nbsp;<asp:TextBox ID="repairername" runat="server" Width="278px" CssClass="input-field" ></asp:TextBox>
        </td>
</tr>
      <tr><td class="auto-style82">
          <asp:Label ID="Label60" runat="server" Text="Repairer Address "></asp:Label>
          </td>
     <td style="text-align:left;" class="auto-style10">
      &nbsp;&nbsp;<asp:TextBox ID="repaireraddress" runat="server" Width="278px" CssClass="input-field"></asp:TextBox>
        </td>
</tr>
     <tr><td class="auto-style82">
         <asp:Label ID="Label61" runat="server" Text="Inventory of Damaged Part " CssClass="label"></asp:Label>
         </td>
     <td style="text-align:left; color:#001188;" class="auto-style10">
      &nbsp;&nbsp;<asp:TextBox ID="inventorydampart" runat="server" Width="278px" CssClass="input-field"></asp:TextBox>
        </td>
</tr>
    </table>

 <table style ="border-spacing: 1px; padding:1px; width:100%;">
     <tr>
     <td style="text-align:left; color:#bb0000;" class="auto-style9" colspan="2" >&nbsp;<b>THIRD PARTY INVOLVED IN THE ACCIDENT&nbsp;&nbsp; </b>(Only fill when driver license, insurance certificate or means of identification of the negligent third party is received)</td>
</tr>
     <tr><td class="auto-style83" style="text-align:left;   color:#001188;">
         <asp:Label ID="Label62" runat="server" Text="Name" CssClass="label"></asp:Label>
         </td>
     <td style="text-align:left; color:#001188;" class="auto-style10">
      &nbsp;&nbsp;<asp:TextBox ID="thirdpartyname" runat="server" Width="278px" CssClass="input-field"></asp:TextBox>
        </td>
</tr>
        <tr><td class="auto-style83" style="text-align:left;   color:#001188;">
            <asp:Label ID="Label63" runat="server" Text="Address " CssClass="label"></asp:Label>
            </td>
     <td style="text-align:left; color:#001188;" class="auto-style10">
      &nbsp;&nbsp;<asp:TextBox ID="thirdpartyaddress" runat="server" Width="278px" CssClass="input-field"></asp:TextBox>
        </td>
</tr>
      <tr><td class="auto-style83" style="text-align:left;   color:#001188;">
    <asp:Label ID="Label64" runat="server" Text="Type of Property/Injury" CssClass="label"></asp:Label>
          </td>
     <td style="text-align:left;   color:#001188;" class="auto-style10">
      &nbsp;&nbsp;<asp:TextBox ID="typeofproperty" runat="server" Width="278px" CssClass="input-field"></asp:TextBox>
        </td>
</tr>
      <tr><td class="auto-style83" style="text-align:left;   color:#001188;">
    
          <asp:Label ID="Label65" runat="server" Text="Vehicle make? " CssClass="label"></asp:Label>
          </td>
     <td style="text-align:left;" class="auto-style10">
      &nbsp;&nbsp;<asp:RadioButtonList ID="vehiclemake" runat ="server"  RepeatDirection="Horizontal" RepeatLayout="Flow" ClientIDMode="Static" >
             <asp:ListItem Value="0">Yes</asp:ListItem>
             <asp:ListItem Value="1" >No</asp:ListItem>
         </asp:RadioButtonList>
        </td>
</tr>
      <tr><td class="auto-style83" style="text-align:left;   color:#001188;">
      <asp:Label ID="Label66" runat="server" Text="Reg No" CssClass="label"></asp:Label>
          </td>
     <td style ="text-align: left;" class="auto-style10">
      &nbsp;&nbsp;<asp:TextBox ID="thirdpartyregno" runat="server" Width="278px" CssClass="input-field" Enabled="False"></asp:TextBox>
        </td>
</tr>
     <tr><td class="auto-style83" style="text-align:left;   color:#001188;">
    <asp:Label ID="Label67" runat="server" Text="Year of make"></asp:Label>
         </td>
     <td style ="text-align: left;" class="auto-style10">
      &nbsp;&nbsp;<asp:DropDownList CssClass="select-field" ID="thirdpartyyearofmake" runat="server">
                                            <asp:ListItem>Select Year of Make</asp:ListItem>
                                           

                                        <asp:ListItem>2020</asp:ListItem>
                                        <asp:ListItem>2019</asp:ListItem>
                                        <asp:ListItem>2018</asp:ListItem>
                                        <asp:ListItem>2017</asp:ListItem>
                                        <asp:ListItem>2016</asp:ListItem>
                                        <asp:ListItem>2015</asp:ListItem>
                                        <asp:ListItem>2014</asp:ListItem>
                                        <asp:ListItem>2013</asp:ListItem>
                                        <asp:ListItem>2012</asp:ListItem>
                                        <asp:ListItem>2011</asp:ListItem>
                                        <asp:ListItem>2010</asp:ListItem>
                                        <asp:ListItem>2009</asp:ListItem>
                                        <asp:ListItem>2008</asp:ListItem>
                                        <asp:ListItem>2007</asp:ListItem>
                                        <asp:ListItem>2006</asp:ListItem>
                                        <asp:ListItem>2005</asp:ListItem>
                                        <asp:ListItem>2004</asp:ListItem>
                                        <asp:ListItem>2003</asp:ListItem>
                                        <asp:ListItem>2002</asp:ListItem>
                                        <asp:ListItem>2001</asp:ListItem>
                                        <asp:ListItem>2000</asp:ListItem>
                                        <asp:ListItem>1999</asp:ListItem>
                                        <asp:ListItem>1998</asp:ListItem>
                                        <asp:ListItem>1997</asp:ListItem>
                                        <asp:ListItem>1996</asp:ListItem>
                                        <asp:ListItem>1995</asp:ListItem>
                                        <asp:ListItem>1994</asp:ListItem>
                                        <asp:ListItem>1993</asp:ListItem>
                                        <asp:ListItem>1992</asp:ListItem>
                                        <asp:ListItem>1991</asp:ListItem>
                                        <asp:ListItem>1990</asp:ListItem>
                                        <asp:ListItem>1989</asp:ListItem>
                                        <asp:ListItem>1988</asp:ListItem>
                                        <asp:ListItem>1987</asp:ListItem>
                                        <asp:ListItem>1986</asp:ListItem>
                                        <asp:ListItem>1985</asp:ListItem>
                                        <asp:ListItem>1984</asp:ListItem>
                                        <asp:ListItem>1983</asp:ListItem>
                                        <asp:ListItem>1982</asp:ListItem>
                                        <asp:ListItem>1981</asp:ListItem>
                                        <asp:ListItem>1980</asp:ListItem>
                                        <asp:ListItem>1979</asp:ListItem>
                                        <asp:ListItem>1978</asp:ListItem>
                                        <asp:ListItem>1977</asp:ListItem>
                                        <asp:ListItem>1976</asp:ListItem>
                                        <asp:ListItem>1975</asp:ListItem>
                                        <asp:ListItem>1974</asp:ListItem>
                                        <asp:ListItem>1973</asp:ListItem>
                                        <asp:ListItem>1972</asp:ListItem>
                                        <asp:ListItem>1971</asp:ListItem>
                                        <asp:ListItem>1970</asp:ListItem>
                                        <asp:ListItem>1969</asp:ListItem>
                                        <asp:ListItem>1968</asp:ListItem>
                                        <asp:ListItem>1967</asp:ListItem>
                                        <asp:ListItem>1966</asp:ListItem>
                                        <asp:ListItem>1965</asp:ListItem>
                                        <asp:ListItem>1964</asp:ListItem>
                                        <asp:ListItem>1963</asp:ListItem>
                                        <asp:ListItem>1962</asp:ListItem>
                                       <asp:ListItem>1961</asp:ListItem>
                                        <asp:ListItem>1960</asp:ListItem>
                                        <asp:ListItem>1959</asp:ListItem>
                                        <asp:ListItem>1958</asp:ListItem>
                                        <asp:ListItem>1957</asp:ListItem>
                                        <asp:ListItem>1956</asp:ListItem>
                                        <asp:ListItem>1955</asp:ListItem>
                                        <asp:ListItem>1954</asp:ListItem>
                                        <asp:ListItem>1953</asp:ListItem>
                                        <asp:ListItem>1952</asp:ListItem>
                                        <asp:ListItem>1951</asp:ListItem>
                                        <asp:ListItem>1950</asp:ListItem>
                                        <asp:ListItem>1949</asp:ListItem>
                                        <asp:ListItem>1948</asp:ListItem>
                                        <asp:ListItem>1947</asp:ListItem>
                                        <asp:ListItem>1946</asp:ListItem>
                                        <asp:ListItem>1945</asp:ListItem>
                                        <asp:ListItem>1944</asp:ListItem>
                                        <asp:ListItem>1943</asp:ListItem>
                                        <asp:ListItem>1942</asp:ListItem>
                                        <asp:ListItem>1941</asp:ListItem>
                                        <asp:ListItem>1940</asp:ListItem>
                                        <asp:ListItem>1939</asp:ListItem>
                                        <asp:ListItem>1938</asp:ListItem>
                                        <asp:ListItem>1937</asp:ListItem>
                                        <asp:ListItem>1936</asp:ListItem>
                                        <asp:ListItem>1935</asp:ListItem>
                                        <asp:ListItem>1934</asp:ListItem>
                                        <asp:ListItem>1933</asp:ListItem>
                                        <asp:ListItem>1932</asp:ListItem>
                                        <asp:ListItem>1931</asp:ListItem>
                                        <asp:ListItem>1930</asp:ListItem>
                                        <asp:ListItem>1929</asp:ListItem>
                                        <asp:ListItem>1928</asp:ListItem>
                                        <asp:ListItem>1927</asp:ListItem>
                                        <asp:ListItem>1926</asp:ListItem>
                                        <asp:ListItem>1925</asp:ListItem>
                                        <asp:ListItem>1924</asp:ListItem>
                                        <asp:ListItem>1923</asp:ListItem>
                                        <asp:ListItem>1922</asp:ListItem>
                                        <asp:ListItem>1921</asp:ListItem>
                                        <asp:ListItem>1920</asp:ListItem>
                                        <asp:ListItem>1919</asp:ListItem>
                                        <asp:ListItem>1918</asp:ListItem>
                                        <asp:ListItem>1917</asp:ListItem>
                                        <asp:ListItem>1916</asp:ListItem>
                                        <asp:ListItem>1915</asp:ListItem>
                                        <asp:ListItem>1914</asp:ListItem>
                                        <asp:ListItem>1913</asp:ListItem>
                                        <asp:ListItem>1912</asp:ListItem>
                                        <asp:ListItem>1911</asp:ListItem>
                                        <asp:ListItem>1910</asp:ListItem>
                                        <asp:ListItem>1909</asp:ListItem>
                                        <asp:ListItem>1908</asp:ListItem>
                                        <asp:ListItem>1907</asp:ListItem>
                                        <asp:ListItem>1906</asp:ListItem>
                                        <asp:ListItem>1905</asp:ListItem>
                                         </asp:DropDownList>
        </td>
</tr>
  <tr><td class="auto-style83" style="text-align:left;   color:#001188;">
      <asp:Label ID="Label68" runat="server" Text="Present Location of Vehicle" CssClass="label"></asp:Label>
      </td>
     <td style ="text-align: left;" class="auto-style10">
      &nbsp;&nbsp;<asp:TextBox ID="presentlocationvehicle" runat="server" Width="278px" CssClass="input-field"></asp:TextBox>
        </td>
</tr>
 <tr><td class="auto-style83" style="text-align:left;   color:#001188;">
     <asp:Label ID="Label69" runat="server" Text="Owner insured? " CssClass="label"></asp:Label>
     </td>
     <td style="text-align:left;" class="auto-style10">
      &nbsp;&nbsp;<asp:RadioButtonList ID="ownerinsured" runat ="server"  RepeatDirection="Horizontal" RepeatLayout="Flow" ClientIDMode="Static" >
             <asp:ListItem Value="0">Yes</asp:ListItem>
             <asp:ListItem Value="1">No</asp:ListItem>
         </asp:RadioButtonList>
        </td>
</tr>
 <tr><td class="auto-style83" style="text-align:left;   color:#001188;">
     <asp:Label ID="Label70" runat="server" Text="Policy Number" CssClass="label"></asp:Label>
     </td>
     <td style ="text-align: left;" class="auto-style10">
      &nbsp;&nbsp;<asp:TextBox ID="Policyno" runat="server" Width="278px" CssClass="input-field" Enabled="False"></asp:TextBox>
        </td>
</tr>
     <tr><td class="auto-style83" style="text-align:left;   color:#001188;">
         <asp:Label ID="Label71" runat="server" Text="Name of Insurer" CssClass="label"></asp:Label>
         </td>
     <td style ="text-align: left;"" class="auto-style10">
      &nbsp;&nbsp;<asp:TextBox ID="thirdpartynameofinsurer" runat="server" Width="278px" CssClass="input-field"></asp:TextBox>
        </td>
</tr>
<tr><td class="auto-style83" style="text-align:left;   color:#001188;">
    <asp:Label ID="Label72" runat="server" Text="Address of Insurer" CssClass="label"></asp:Label>
    </td>
     <td style ="text-align: left;" class="auto-style10">
      &nbsp;&nbsp;<asp:TextBox ID="thirdpartyaddressofinsurer" runat="server" Width="278px" CssClass="input-field"></asp:TextBox>
        </td>
</tr>
    </table>
     <table  style ="border-spacing: 1px; padding:1px; width:100%;">
     <tr>
     <td style="text-align:left;   color:#bb0000;" class="auto-style9" colspan="2">&nbsp;<b>DECLARATION</b></td>
</tr>
         <tr>
     <td style="text-align:left;" class="auto-style9" colspan="2">&nbsp;<b>DRIVER</b> </td>
</tr>
     <tr><td class="auto-style84" style="text-align:left;   color:#001188;">
     
         <asp:Label ID="Label73" runat="server" Text="Signature of Driver" CssClass="label"></asp:Label>
         </td>
     <td style ="text-align: left;" class="auto-style10">
      &nbsp;&nbsp;<asp:FileUpload ID="signatureofdriver" runat="server" Multiple="Multiple"/>
        </td>
</tr>
  <tr>
     <td style ="text-align: left;" class="auto-style9" colspan="2">&nbsp;<b>INSURED</b></td>
</tr>
      <tr><td class="auto-style84" style="text-align:left;   color:#001188;">
    <asp:Label ID="Label75" runat="server" Text="Signature of Insured" CssClass="label"></asp:Label>
          </td>
     <td  class="auto-style10">
      &nbsp;&nbsp;<asp:FileUpload ID="signatureofinsured" runat="server" Multiple="Multiple"/>
        </td>
</tr>
      <tr><td class="auto-style84" style="text-align:left;   color:#001188;">
  
          <asp:Label ID="Label77" runat="server" Text="Label" CssClass="label"> Status of Signatory (Limited Company Only) </asp:Label>
          </td>
     <td class="auto-style10">
      &nbsp;&nbsp;<asp:TextBox ID="statusofsignatory" runat="server" Width="278px" CssClass="input-field"></asp:TextBox>
        </td>
</tr>

          <tr>
     <td  style ="text-align: center ;" colspan ="2" >
         <asp:Button ID="Button1" runat="server" Text="Save" />
        </td>
</tr>
    
    </table>
        </form>
    
     <%	
            Call footerWriter()
	    %>		
		
 </div>
    <script src="scripts/pikaday.js" type="text/javascript"></script>
    <script type="text/javascript" src ="scripts/AddField.js"></script>
    <script type="text/javascript" src ="scripts/timepicker/jquery.timepicker.min.js"></script>

</body>
</html>
