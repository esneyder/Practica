<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DatoTrabajador.aspx.cs" Inherits="Practica.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br /><br />
    <asp:Label ID="Label9" runat="server" Font-Size="X-Large" Text="Datos trabajador" CssClass="label label-info"></asp:Label>
    <asp:Label ID="msg" runat="server"></asp:Label>
&nbsp;<br /><br />
     <asp:Label ID="Label10" runat="server" Text="Todos los campos (*) son requeridos"></asp:Label>
    <hr />
    <table style="width:100%;">
        <tr>
            <td style="width: 101px; height: 24px">
                <asp:Label ID="Label1" runat="server" Text="Rut *"></asp:Label>
            </td>
            <td style="height: 24px; width: 242px;">
                <asp:TextBox ID="txtrut" runat="server" Width="231px" required="required" ></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btnconsultar" runat="server" Text="Consultar" CssClass="btn btn-info" OnClick="btnconsultar_Click"/>
            </td>
        </tr>
        <tr>
            <td style="width: 101px">
                <asp:Label ID="Label2" runat="server" Text="Nombres *"></asp:Label>
            </td>
            <td style="width: 242px">
                <asp:TextBox ID="txtnombres" runat="server" Width="230px" ></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td style="width: 101px">
                <asp:Label ID="Label3" runat="server" Text="Dirección *"></asp:Label>
            </td>
            <td style="width: 242px">
                <asp:TextBox ID="txtdireccion" runat="server" Width="230px" ></asp:TextBox>
            </td>
           
        </tr>
        <tr>
            <td style="width: 101px">
                <asp:Label ID="Label4" runat="server" Text="Días Trabajados *"></asp:Label>
            </td>
            <td style="width: 242px">
                <asp:TextBox ID="txtdiastrabajados" runat="server" Width="50px" ></asp:TextBox>
            </td>
           
        </tr>
        <tr>
            <td style="width: 101px">
                <asp:Label ID="Label5" runat="server" Text="Horas Extras "></asp:Label>
            </td>
            <td style="width: 242px">
                <asp:TextBox ID="txthorasextras" runat="server" Width="50px" Text="0"></asp:TextBox>
            </td>
           
        </tr>
         <tr>
            <td style="width: 101px">
                <asp:Label ID="Label6" runat="server" Text="Estado Civil *"></asp:Label>
            </td>
            <td style="width: 242px">
                <asp:DropDownList ID="ddlgenero" runat="server" required="required">
                    <asp:ListItem Text="Seleccione el estado" Value="Ninguno"></asp:ListItem>
                <asp:ListItem Text="Soltero" Value="Soltero"></asp:ListItem>
                <asp:ListItem Text="Casado" Value="Casado"></asp:ListItem>
                </asp:DropDownList>
            </td>
           
        </tr> 

         <tr>
            <td style="width: 101px">
                <asp:Label ID="Label7" runat="server" Text="Sumido Base "></asp:Label>
            </td>
            <td style="width: 242px">
                <asp:TextBox ID="txtsumidobase" runat="server" Width="230px"></asp:TextBox>
            </td>
           
        </tr>
         <tr>
            <td style="width: 101px">
                <asp:Label ID="Label8" runat="server" Text="Nro. Carga Fam "></asp:Label>
            </td>
            <td style="width: 242px">
                <asp:TextBox ID="txtnrocargafam" runat="server" Width="230px"></asp:TextBox>
            </td>
           
        </tr>
        
    </table>
    <br />
    <asp:Button ID="btnguardar" runat="server" Text="Guardar" CssClass="btn btn-primary" OnClick="btnguardar_Click" />
    <asp:Button ID="Button1" runat="server" Text="Actualizar"  CssClass="btn btn-info" OnClick="Button1_Click"/>
    <asp:Button ID="btneliminar" runat="server" Text="Eliminar"  CssClass="btn btn-danger" OnClick="btneliminar_Click"/>
    <br />
    <br />
    <asp:GridView ID="dgvtrabajador" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
    <br />
</asp:Content>
