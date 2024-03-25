<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm2.aspx.vb" Inherits="PropertyTransfer.WebForm2" %>

 <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <title></title>
        <link href='https://fonts.googleapis.com/css?family=Great+Vibes' rel='stylesheet' type='text/css' />

        <style>
            body {
                /*background-image: url("https://img.freepik.com/free-vector/map-point-abstract-3d-polygonal-wireframe-airplane-blue-night-sky-with-dots-stars-illustration-background_587448-568.jpg");*/
                background-repeat: no-repeat;
                background-size: cover;
                background-position: center;
                max-width: max-content;
                margin: auto;
                margin-top: 20px;
                text-align: center;
            }

            .titles {
                font: Calibri;
                font-size: xx-large;
               /* color: #91c2c5;*/
               color:black;
               font-weight:bold;
            }

            #form1 {
                background: #FDC011;
                box-sizing: border-box;
                box-shadow: 0 15px 25px rgba(0, 0, 0, .7);
                border-radius: 10px;
            }

            .forms > td {
                border:none
            }

            .borderspace {
                border-spacing: 2em;
            }

            .lbl1 {
                background-color: beige;
            }

            .lbl2 {
                color: white;
            }

            .lbl3 {
                color: blue;

            }
            .lbl4{

             color:black;
            }
            .lbl5{
                color:black;
                border:3px solid black;
                padding:5px;
                margin:5px;


            }

            .pt {
                cursor: pointer;
                color: white;
            }

            .lblS {
                font: 400 130px/0.8 'Great Vibes', Helvetica, sans-serif;
                font-size: x-large;
                font-weight: 600;
                color: black;
            }

            .auto-style1 {
                margin-bottom: 0px;
                border: none;
            }

            :root {
                --arrow-bg: rgba(255, 255, 255, 0.3);
                --arrow-icon: url(https://upload.wikimedia.org/wikipedia/commons/9/9d/Caret_down_font_awesome_whitevariation.svg);
                --option-bg: white;
                --select-bg: rgba(255, 255, 255, 0.2);
            }
            select {
                /* Reset */
                text-align: center;
                -webkit-appearance: none;
                    -moz-appearance: none;
                      /*  appearance: none;*/
                border: 0;
                outline: 0;
                font: inherit;
                /* Personalize */
                width: 100%;
                height: 2.5rem;
                padding-right: 2.7rem;
                background: var(--arrow-icon) no-repeat right 0.8em center/1.4em, linear-gradient(to left, var(--arrow-bg) 3em, var(--select-bg) 3em);
                color: black;
                border-radius: 0.25em;
                box-shadow: 0 0 1em 0 rgba(0, 0, 0, 0.2);
                cursor: pointer;
                /* Remove IE arrow */
                /* Remove focus outline */
                /* <option> colors */
            }
            select::-ms-expand {
                display: none;
            }
            select:focus {
                outline: none;
            }
            select option {
                color: inherit;
                background-color: var(--option-bg);
            }
             .user-box1 {
                position: relative;
                font-display:inherit;
              

            }
            
            .user-box {
                position: relative;

            }
            .user-box input {
                width: 100%;
                padding: 10px 0;
                font-size: 20px;
                color: #000;
                border: none;
                border-bottom: 1px solid #000;
                outline: none;
                background: transparent;
                margin-left: 20px;
            }
            .user-box label {
                position: absolute;
                top:0;
                left: 0;
                padding: 10px 0;
                font-size: 20px;
                color: #000;
                pointer-events: none;
                transition: .5s;
                margin-left: 20px;
            }
            .user-box input:focus ~ label,
            .user-box input:valid ~ label {
                top: -20px;
                left: 0;
                color: rgb(0,2,103);
                font-size: 20px;
            }

            .shadowbutton {
                background-color: #003366;
                border: none;
                color: #d7d6d6;
                padding: 10px 15px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                margin: 4px 2px;
                cursor: pointer;
                -webkit-transition-duration: 0.4s; /* Safari */
                transition-duration: 0.4s;
                border-radius: 10px;
                box-shadow: 10px 5px 5px grey;

            }

            .shadowbutton:hover {
                box-shadow: 12px 7px 8px grey;
            }
        </style>
          <script src="https://momentjs.com/downloads/moment.min.js"></script>
          <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css" />
           <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
            <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
         


          <script type="text/javascript">

              function Validate() {

                  var required = '';
                  if (document.getElementById('txtDate').value == '') {

                      required = '- Please Enter Date\n';
                  }
                  
                  if (document.getElementById('txtInventory').value == '') {

                      required += '- Please Enter Inventory Number\n';
                  }

                  if (document.getElementById('txtItem').value == '') {

                      required += '- Please Enter Item\n';
                  }
                  
                  if (document.getElementById('txtSerialNo').value == '') {

                      required += '- Pleae Enter Serial number\n';
                  }

                  if (document.getElementById('txtNameofPerson').value == '') {

                      required += '- Pleae Enter Name of Person\n';
                  }

                  if (document.getElementById('txtCourier').value == '') {

                      required += '- Pleae Enter Courier\n';
                  }

                  if (document.getElementById('txtResponsiblePerson').value == '') {

                      required += '- Pleae Enter Responsible Person\n';
                  }
                  
                  if (document.getElementById('DropDownList1').value == '') {

                      required += '- Pleae Enter DropDownList1 Value\n';
                  }
                  
                  if (document.getElementById('ddTransferFrom').value == '') {

                      required += '- Pleae select Transferred From\n';
                  }

                  if (document.getElementById('DropDownList3').value == '') {

                      required += '- Pleae Enter DropDownList3 Value\n';
                  }

                  if (document.getElementById('DropDownList4').value == '') {

                      required += '- Pleae Enter DropDownList4 Value\n';
                  }

                  if (document.getElementById('DropDownList5').value == '') {

                      required += '- Pleae Enter DropDownList5 Value\n';
                  }

                  if (required != '') {
                      alert(required);
                      return false;

                  }


              }


          </script>


    </head>

    <body>
        <label class="titles" runat="server"><strong> Property Transfer/Location Change </strong></label>
        <form id="form1" runat="server">
            <div>
                <asp:Table runat="server" Width="848px" Height="713px" CssClass="auto-style1">

                    <asp:TableRow CssClass="forms">
                        <asp:TableCell ColumnSpan="4" Height="3em">
                            &nbsp;&nbsp;&nbsp;
                            <asp:Table runat="server">
                                <asp:TableRow>          
                                    <asp:TableCell CssClass="user-box1">
                                        
                                        <asp:TextBox ID="txtDate" runat="server"  Type="date"  BackColor="#FDC011"  name="" required=""></asp:TextBox>
                                        <label>Date</label>
                                     &nbsp;&nbsp;&nbsp;   
                                    </asp:TableCell>
                                </asp:TableRow>

                            </asp:Table>

                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow CssClass="forms">
                        <asp:TableCell ColumnSpan="4">
                            <asp:Label ID="lalDescription" runat="server" Text="Description of Property" Font-Size="20"
                                Font-Underline="true" CssClass="lbl4">
                            </asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>



                    <asp:TableRow CssClass="forms">
                        <asp:TableCell ColumnSpan="4" Height="3em">
                            &nbsp;&nbsp;&nbsp;
                            <asp:Table runat="server">
                                <asp:TableRow>          
                                    <asp:TableCell CssClass="user-box" Width="395px">
                                        <asp:TextBox ID="txtInventory" runat="server" name="" required=""></asp:TextBox>
                                        <label>Inventory No</label>
                                    </asp:TableCell>
                                    <asp:TableCell CssClass="user-box" Width="395px">
                                        <asp:TextBox ID="txtItem" runat="server" name="" required=""></asp:TextBox>
                                        <label>Item</label>
                                    </asp:TableCell>
                                </asp:TableRow>

                            </asp:Table>
                        </asp:TableCell>
                    </asp:TableRow>

                    <%--doing Make dropdown list--%>
                        <asp:TableRow CssClass="forms">
                            <asp:TableCell ColumnSpan="4">
                                <asp:Table runat="server">
                                    <asp:TableRow>
                                        <asp:TableCell Width="390px">
                                          &nbsp;&nbsp; &nbsp;&nbsp; <asp:Label ID="lblmake" runat="server" Text="Make:" Font-Size="12" CssClass="lbl4">
                                                </asp:Label>
                                                &nbsp;&nbsp;
                                                <asp:DropDownList ID="DropDownList1" Width="300px" runat="server" Font-Size="12"
                                                    CssClass="">
                                                    <asp:ListItem Value=""></asp:ListItem>
                                                    <asp:ListItem Value="China da zhong"></asp:ListItem>
                                                    <asp:ListItem Value="Toyato"></asp:ListItem>
                                                    <asp:ListItem Value="USA"></asp:ListItem>
                                                    <asp:ListItem Value="Germen"></asp:ListItem>
                                                </asp:DropDownList>
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="user-box" Width="395px">
                                            <asp:TextBox ID="txtSerialNo" runat="server" name="" required=""></asp:TextBox>
                                            <label>Serial No</label>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>                              
                            </asp:TableCell>                          
                        </asp:TableRow>


                        <%-- Transfered From--%>
                            <asp:TableRow CssClass="forms">
                                <asp:TableCell ColumnSpan="4">
                                    &nbsp;
                                    <asp:Label ID="Label1" runat="server" Text="Transferred From :" Font-Size="12"
                                        CssClass="lbl4"></asp:Label>
                                    &nbsp; &nbsp;
                                    <asp:DropDownList ID="ddTransferFrom" runat="server" Width="320" BorderStyle="Inset"
                                        Font-Size="12" CssClass="">

                                        <asp:ListItem Value=""></asp:ListItem>
                                        <asp:ListItem Value="China"> </asp:ListItem>
                                        <asp:ListItem Value="Japan"> </asp:ListItem>
                                        <asp:ListItem Value="England"> </asp:ListItem>
                                        <asp:ListItem Value="German"> </asp:ListItem>
                                        <asp:ListItem Value="Tai Wan"> </asp:ListItem>
                                    </asp:DropDownList>
                                    &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                    <asp:Label ID="Lcode" runat="server" Text="Location Code :" Font-Size="12"
                                        CssClass="lbl4"></asp:Label>
                                    &nbsp;&nbsp;<asp:DropDownList ID="DropDownList3" runat="server" Width="120"
                                        BorderStyle="Inset" Font-Size="12" CssClass="">
                                        <asp:ListItem Value=""></asp:ListItem>
                                        <asp:ListItem Value="Fe1000"></asp:ListItem>
                                        <asp:ListItem Value="Fe1001"></asp:ListItem>
                                        <asp:ListItem Value="Fe1002"></asp:ListItem>
                                        <asp:ListItem Value="Fe1003"></asp:ListItem>
                                    </asp:DropDownList>
                                </asp:TableCell>
                            </asp:TableRow>

                            <%-- Transferred To :--%>
                                <asp:TableRow CssClass="forms">
                                    <asp:TableCell ColumnSpan="4" Height="3em">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label4"
                                            runat="server" Text="Transfered To :" Font-Size="12" CssClass="lbl4">
                                        </asp:Label>&nbsp;&nbsp;&nbsp;
                                        &nbsp;
                                        <asp:DropDownList ID="DropDownList5" runat="server" Width="320"
                                            BorderStyle="Inset" Font-Size="12" CssClass="">
                                            <asp:ListItem Value=""></asp:ListItem>
                                            <asp:ListItem Value="USA"> </asp:ListItem>
                                            <asp:ListItem Value="France"> </asp:ListItem>
                                            <asp:ListItem Value="England"> </asp:ListItem>
                                            <asp:ListItem Value="Italy"> </asp:ListItem>
                                            <asp:ListItem Value="Canada"></asp:ListItem>
                                        </asp:DropDownList>
                                        &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="LdlCode2" runat="server" Text="Location Code :" Font-Size="12"
                                            CssClass="lbl4"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList4" runat="server"
                                            Width="120" BorderStyle="Inset" Font-Size="12" CssClass="">
                                            <asp:ListItem Value=""></asp:ListItem>
                                            <asp:ListItem Value="">Me1000</asp:ListItem>
                                            <asp:ListItem Value="">Me1001</asp:ListItem>
                                            <asp:ListItem Value="">Me1002</asp:ListItem>
                                            <asp:ListItem Value="">Me1003</asp:ListItem>
                                        </asp:DropDownList>

                                    </asp:TableCell>

                                </asp:TableRow>

                                <asp:TableRow CssClass="forms">
                                    <asp:TableCell ColumnSpan="4" Height="3em">
                                        <asp:Table runat="server">
                                              <asp:TableRow>
                                                  <asp:TableCell>
                                            &nbsp;<asp:Label ID="Label3" runat="server" width="250"
                                            Text="Transfer Authorized By Signature:" CssClass="lbl4" Font-Size="12"> </asp:Label>
                                               </asp:TableCell>
                                                  <asp:TableCell>
                                                    <asp:Label ID="Labelserver" runat="server" width="150" Text="Sign here"
                                            CssClass="lbl3" Font-Size="12"><a href="https://google.com">Sign here</a></asp:Label>


                                                  </asp:TableCell>

                                             </asp:TableRow>
                                          </asp:Table>

                                    
                                    </asp:TableCell>

                                </asp:TableRow>

                                <%-- Name of Person Transporting Property --%>

                                    <asp:TableRow CssClass="forms">
                                        <asp:TableCell ColumnSpan="4" Height="3em">
                                            &nbsp;&nbsp;&nbsp;
                                            <asp:Table runat="server">
                                                <asp:TableRow>          
                                                    <asp:TableCell CssClass="user-box" Width="395px">
                                                        <asp:TextBox ID="txtNameofPerson" runat="server" name="" required=""></asp:TextBox>
                                                        <label>Name of Person Transporting Property</label>
                                                    </asp:TableCell>
                                                    <asp:TableCell CssClass="user-box" Width="395px">
                                                        <asp:TextBox ID="txtCourier" runat="server" name="" required=""></asp:TextBox>
                                                        <label>Courier</label>
                                                    </asp:TableCell>
                                                </asp:TableRow>

                                            </asp:Table>
                                        </asp:TableCell>

                                    </asp:TableRow>

                                    <%-- Responsible Person Authorization --%>

                                        <asp:TableRow CssClass="forms">
                                            <asp:TableCell ColumnSpan="4">
                                                &nbsp;&nbsp;&nbsp;
                                                <asp:Table runat="server">
                                                    <asp:TableRow>          
                                                        <asp:TableCell CssClass="user-box" Width="795px">
                                                            <asp:TextBox ID="txtResponsiblePerson" runat="server" name="" required=""></asp:TextBox>
                                                            <label>Responsible Person Authorized</label>
                                                        </asp:TableCell>
                                                    </asp:TableRow>

                                                </asp:Table>
                                            </asp:TableCell>
                                        </asp:TableRow>

                                        <asp:TableRow CssClass="forms">
                                            <asp:TableCell ColumnSpan="4" Height="3em">
                                                <asp:Label ID="lblReceipt" runat="server" Text="Receipt of Transfer"
                                                    Font-Size="20" Font-Underline="true" CssClass="lbl4"></asp:Label>
                                            </asp:TableCell>

                                        </asp:TableRow>

                                        <%-- I acknowledge receipt --%>

                                            <asp:TableRow CssClass="forms">
                                                <asp:TableCell ColumnSpan="4">
                                                    &nbsp;&nbsp; <asp:Label ID="lblacknow" runat="server" width="700"
                                                        Text="I acknowledge receipt of the above descripted property and accept the responsibility thereof"
                                                        CssClass="lbl4" Font-Size="12"></asp:Label>&nbsp;
                                                </asp:TableCell>
                                            </asp:TableRow>

                                            <%--area --%>
                                                <asp:TableRow CssClass="forms">
                                                    <asp:TableCell ColumnSpan="4">
                                                        <asp:Table runat="server">
                                                            <asp:TableRow>
                                                                <asp:TableCell>
                                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    <asp:Label ID="lblCom" runat="server"
                                                                        width="" Text="Comments:" CssClass="lbl4"
                                                                        Font-Size="12"></asp:Label>
                                                                </asp:TableCell>

                                                                <asp:TableCell>
                                                                    
                                                                    <textarea rows="10" cols="80" id="txtComment"
                                                                        runat="server"
                                                                        style="background-color:snow" class="lbl5"></textarea>
                                                                </asp:TableCell>
                                                            </asp:TableRow>
                                                        </asp:Table>
                                                    </asp:TableCell>
                                                </asp:TableRow>

                                                <%-- Button --%>
                                                    <asp:TableRow CssClass="forms">
                                                        <asp:TableCell ColumnSpan="4">
                                                            <asp:Table runat="server">
                                                                <asp:TableRow runat="server">
                                                                    <asp:TableCell>
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <asp:Button ID="Button1" runat="server"
                                                                            Text="Reset" Font-Size="14"
                                                                            Font-Bold="true" CssClass="shadowbutton"/>
                                                                    </asp:TableCell>
                                                                    <asp:TableCell>
                                                                        &nbsp;&nbsp
                                                                        <asp:Button ID="btnSubmit" runat="server"
                                                                            Text="Submitted" Font-Size="14"
                                                                            Font-Bold="true" CssClass="shadowbutton" OnClientClick="return Validate()"/>
                                                                    </asp:TableCell>

                                                                </asp:TableRow>

                                                            </asp:Table>

                                                          </asp:TableCell>
                                                    </asp:TableRow>
                </asp:Table>
            </div>
        </form>
    </body>
    </html>