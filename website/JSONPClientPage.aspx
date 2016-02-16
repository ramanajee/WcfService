<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>JSONP Service Client Page</title>
    <script src="JS/JQuery.js" type="text/javascript"></script>
    <script type="text/javascript">

        $(document).ready(
         function () {
             try {
                 $.ajax({
                     url: 'http://localhost:52136/Service1.svc/GetCustomer',
                     type: 'GET',
                     dataType:'jsonp',
                     success: function (response) {
                         console.log(response);
                         debugger;
                     },
                     error: function (error) {
                         debugger;
                     }
                 });

             } catch (exception) { }
         }
);
    </script>

</head>
<body>
    <form id="form1" runat="server"> 
    <asp:ScriptManager ID="ScriptManager1" runat="server">
        <Services>
            <asp:ServiceReference Path="http://localhost:52136/service1.svc" />
        </Services>
    </asp:ScriptManager>
    <h1>
        JSONP Service Client Page</h1>
    </form>
</body>
</html>
