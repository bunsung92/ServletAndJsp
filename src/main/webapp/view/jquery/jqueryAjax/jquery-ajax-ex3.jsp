<%--
  Created by IntelliJ IDEA.
  User: jian
  Date: 2023/04/28
  Time: 11:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>jQuery UI Accordion - Default functionality</title>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
    <script>
      $(function () {
        $("#accordion").accordion();

        function ajaxProcess(type, url, dataType, primaryId) {
          $.ajax({
            type: type,
            url: url,
            dataType: dataType,
            error: function () {
              alert('Ajax Error');
            },

            success: function (data) {

              if (primaryId === "p1") {
                $("div#accordion > div p#p1").html(data);
              }

              if (primaryId === "p2") {
                $("div#accordion > div p#p2").html(data);
              }
            }
          })
        }

        $("h3").click(function() {
          var p_id = $(this).next().find("p").attr("id");

          console.log(p_id);

          if (p_id === "p1") {
            ajaxProcess('GET', '/view/jquery/jquery-data/jquery-data1.jsp', 'text', p_id);
          }

          if (p_id === "p2") {
            ajaxProcess('GET', '/view/jquery/jquery-data/jquery-data2.jsp', 'text', p_id);
          }
        });

      });
    </script>
</head>
<body>

<div id="accordion">
    <h3>
        Section 1
    </h3>
    <div>
        <p id="p1">
            Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer
            ut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sit
            amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo ut
            odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.
        </p>
    </div>
    <h3>Section 2</h3>
    <div>
        <p id="p2">
            Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet
            purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor
            velit, faucibus interdum tellus libero ac justo. Vivamus non quam. In
            suscipit faucibus urna.
        </p>
    </div>
    <h3>Section 3</h3>
    <div>
        <p id="p3">
            Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis.
            Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero
            ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis
            lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.
        </p>
        <ul>
            <li>List item one</li>
            <li>List item two</li>
            <li>List item three</li>
        </ul>
    </div>
    <h3>Section 4</h3>
    <div>
        <p>
            Cras dictum. Pellentesque habitant morbi tristique senectus et netus
            et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in
            faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia
            mauris vel est.
        </p>
        <p>
            Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus.
            Class aptent taciti sociosqu ad litora torquent per conubia nostra, per
            inceptos himenaeos.
        </p>
    </div>
</div>


</body>
</html>
