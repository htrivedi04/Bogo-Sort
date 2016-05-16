<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BogoSort.aspx.cs" Inherits="TestProj_BogoSort" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" lang="javascript">
        shuffle = function (v) {
            for (var j, x, i = v.length; i; j = Math.floor(Math.random() * i), x = v[--i], v[i] = v[j], v[j] = x);
            return v;
        };

        isSorted = function (v) {
            for (var i = 1; i < v.length; i++) {
                if (v[i - 1] > v[i]) { return false; }
            }
            return true;
        }

        bogosort = function () {
            var v = [23, 79, 7, 90, 12, 51, 36, 75];
            var sorted = false;
            while (sorted == false) {
                v = shuffle(v);
                sorted = isSorted(v);
            }
            //return v;
            alert("Sorted Array :" + v);
            return true;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2><u>BogoSort</u></h2>            
            <asp:Label ID="lblUnsorted" CssClass="Grey" ClientIDMode="AutoID" runat="server" Text=""></asp:Label><br />
            <asp:Button ID="btnShow" Text="Show" runat="server" OnClientClick="return bogosort();" />
            <asp:Label ID="lblSorted" CssClass="Grey" ClientIDMode="AutoID" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
