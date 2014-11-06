<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RealizaReserva.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <script type="text/javascript">
        $(function () {
            $("#escolheData").datepicker();
        });

        $(function () {
            $("#areaComum").selectmenu();
        });

        $(function () {
            $('#tblAppendGrid').appendGrid({
                caption: 'Lista Convidados',
                initRows: 1,
                columns: [{ name: 'Nome', display: 'Nome', type: 'text', ctrlAttr: { maxlength: 100 }, ctrlCss: { width: '160px' } },
                        { name: 'Rg',   display: 'RG',   type: 'text', ctrlAttr: { maxlength: 100 }, ctrlCss: { width: '100px' } },]
            });
        });
        $("#btSalvar").click(function () {
            alert("teste");
        });
     </script>
     <style>
        fieldset {
          border: 0;
        }
        label {
          display: block;
          margin: auto 0 0 0;
        }
        select {
          width: 200px;
        }
        .overflow {
          height: 200px;
        }
         #tblAppendGrid {
             height: 23px;
             width: 146px;
         }
    </style>
    <label for="areaComum">Área Comum:<select name="areaComum" id="areaComum">
        <option selected="selected">Churrasqueira A</option>
        <option>Churrasqueira B</option>
        <option>Churrasqueira C</option>
    </select></label>&nbsp;
    <p>Datas Disponíveis: 
        <input type="text" id="escolheData" />
    </p>
    <table id="tblAppendGrid"></table>
    <asp:Button ID="btSalvar" runat="server" Text="Salvar" />
</asp:Content>

