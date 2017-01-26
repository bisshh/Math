<!--   Core JS Files   -->
   <script src="lib/assets/js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="lib/assets/js/bootstrap.min.js" type="text/javascript"></script>

<!--  Checkbox, Radio & Switch Plugins -->
<script src="lib/assets/js/bootstrap-checkbox-radio.js"></script>

<!--  Charts Plugin -->
<script src="lib/assets/js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="lib/assets/js/bootstrap-notify.js"></script>

<!--  Google Maps Plugin    -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>

<!-- Paper Dashboard Core javascript and methods for Demo purpose -->
<script src="lib/assets/js/paper-dashboard.js"></script>

<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
<script src="lib/assets/js/demo.js"></script>

<script>
$(document).ready(function() {
	var currUrl = window.location.pathname.replace('/Math/', '');
	var menuChildren = $('a[href="' + currUrl + '"]');
	var submenu = menuChildren.closest('li');
	//menuChildren.addClass('active');
	submenu.closest('li').addClass('active');
});
</script>