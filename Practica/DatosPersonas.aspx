<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DatosPersonas.aspx.cs" Inherits="Practica.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
<div>       
        
        <br />
        <asp:Label ID="Label12" runat="server" Text="Todos los campos (*) son obligatorios" ></asp:Label>
        <hr />
        <table style="width:100%;">
            
            <asp:Label ID="Label13" runat="server" Text="Datos personales" Font-Size="X-Large"></asp:Label>
            <br />
            <asp:Label ID="mensaje" runat="server" Text="" ></asp:Label>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Rut *"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtRut" runat="server" Width="236px" required="required" MaxLength="50" ></asp:TextBox>
                </td>
                 
           
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Nombres *"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtNombres" runat="server" Width="236px" required="required" AutoCompleteType="FirstName" MaxLength="100"></asp:TextBox>
                </td>
                
            </tr>
            
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label4" runat="server" Text="Email *"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtemail" runat="server" Width="236px" AutoCompleteType="Email" required="required" MaxLength="100"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label5" runat="server" Text="Fecha Nacimiento *"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtfNacimiento" runat="server" Width="236px" required="required" MaxLength="20"></asp:TextBox>
                </td>
                
             
                <td class="auto-style6">
                    <asp:Label ID="Label3" runat="server" Text="Edad *" ></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEdad" runat="server" Width="50px" required="required" MaxLength="3"></asp:TextBox>
                </td>

                <td>
                    <asp:Label ID="Label26" runat="server" Text="Avatar"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FUAvatar" runat="server" required="required" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label6" runat="server" Text="Región *" required="required"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtRegion" runat="server" Width="236px" required="required" MaxLength="50"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label7" runat="server" Text="Profesión *"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtprofesion" runat="server" Width="236px" required="required" MaxLength="80"></asp:TextBox>
                </td>
            
                <td class="auto-style6">
                    <asp:Label ID="Label8" runat="server" Text="Num. Semestres *"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtNumSemestre" runat="server" Width="50px" MaxLength="2" ValidateRequestMode="Enabled" required="required"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label9" runat="server" Text="Dirección"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtDireccion" runat="server" Width="236px" MaxLength="50"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label10" runat="server" Text="Teléfono" ></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtTelefono" runat="server" Width="236px" MaxLength="15"></asp:TextBox>
                </td>
                
            
                <td class="auto-style6">
                    <asp:Label ID="Label11" runat="server" Text="Celular"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCelular" runat="server" Width="236px" MaxLength="15"></asp:TextBox>
                </td>
                
            </tr>
        </table>
        <hr />
        <asp:Label ID="Label14" runat="server" Text="Antecedentes academicos" Font-Size="X-Large" ></asp:Label>
        <table style="width:100%;">
            <tr>
                <td class="auto-style7" style="width: 128px">
                    <asp:Label ID="Label15" runat="server" Text="Institución"></asp:Label>
                &nbsp;*</td>
                <td class="auto-style4" style="width: 254px">
                    <asp:TextBox ID="txtinstitucionantecedente" runat="server" Width="236px" required="required" Height="22px"></asp:TextBox>
                </td>
                <td class="auto-style8" style="width: 65px"></td>
            
            </tr>
            <tr>
                <td class="auto-style7" style="width: 128px">
                    <asp:Label ID="Label16" runat="server" Text="N° Semestres"></asp:Label>
                &nbsp;*</td>
                <td class="auto-style4" style="width: 254px">
                    <asp:TextBox ID="txtnumsemestresantecedente" runat="server" Width="50px" required="required"></asp:TextBox>
                </td>
                <td class="auto-style8" style="width: 65px">
                    <asp:Label ID="Label17" runat="server" Text="Título"></asp:Label>
&nbsp;*</td>
                 <td>
                     <asp:TextBox ID="txttituloantecedente" runat="server" Width="232px" required="required"></asp:TextBox>
                </td>
            </tr>
        </table>

         <hr />
        <asp:Label ID="Label18" runat="server" Text="Experiencia laboral" Font-Size="X-Large" ></asp:Label>
        <table style="width:100%;">
            <tr>
                <td class="auto-style7" style="width: 124px">
                    <asp:Label ID="Label19" runat="server" Text="Institución"></asp:Label>
                &nbsp;*</td>
                <td class="auto-style4" style="width: 272px">
                    <asp:TextBox ID="txtinstitucionesperiencia" runat="server" Width="236px" required="required"></asp:TextBox>
                </td>
                <td class="auto-style8" style="width: 66px"></td>
            
            </tr>
            <tr>
                <td class="auto-style7" style="width: 124px">
                    <asp:Label ID="Label20" runat="server" Text="Cargo"></asp:Label>
                &nbsp;*</td>
                <td class="auto-style4" style="width: 272px">
                    <asp:TextBox ID="txtcargoexperiencia" runat="server" Width="237px" required="required"></asp:TextBox>
                </td>
                <td class="auto-style8" style="width: 66px">
                    <asp:Label ID="Label21" runat="server" Text="Periodo"></asp:Label>
&nbsp;*</td>
                 <td>
                     <asp:TextBox ID="txtperiodoexperiencia" runat="server" Width="232px" required="required"></asp:TextBox>
                </td>
            </tr>
        </table>
         <hr />
        <asp:Label ID="Label22" runat="server" Text="Capacitación" Font-Size="X-Large" ></asp:Label>
        <table style="width:100%;">
            <tr>
                <td class="auto-style7" style="width: 118px">
                    <asp:Label ID="Label23" runat="server" Text="Institución"></asp:Label>
                &nbsp;*</td>
                <td class="auto-style4" style="width: 266px">
                    <asp:TextBox ID="txtintitucioncapasitacion" runat="server" Width="236px" required="required"></asp:TextBox>
                </td>
                <td class="auto-style9" style="width: 167px"></td>
            
            </tr>
            <tr>
                <td class="auto-style7" style="width: 118px">
                    <asp:Label ID="Label24" runat="server" Text="Nombre curso"></asp:Label>
                &nbsp;*</td>
                <td class="auto-style4" style="width: 266px">
                    <asp:TextBox ID="txtnombrecurso" runat="server" Width="237px" required="required"></asp:TextBox>
                </td>
                <td class="auto-style9" style="width: 167px">
                    <asp:Label ID="Label25" runat="server" Text="N° horas academicas"></asp:Label>
&nbsp;*</td>
                 <td>
                     <asp:TextBox ID="txthorasacademicas" runat="server" Width="50px" required="required"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="btnguardar" runat="server" OnClick="btnguardar_Click" Text="Guardar " Width="156px" />
        <br />
        <br />
     </div>
</asp:Content>
