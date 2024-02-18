<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Jeewa Education</title>

  <!-- Custom fonts for this template -->
  <link href="../static/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="../static/admin/css/sb-admin-2.css" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="../static/admin/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
  
<style>
div.search-bar-box{
	width: 60%; 
	background-color: white;
	padding: 13px;
	box-shadow: 0 0 13px 5px #0000000f;
	border-radius:0px;
	margin-top: 10px;
	margin-left:20%;
	font-family:-apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
}
input[type="button"]{
	width:15%;
	background-color:rgb(0, 123, 255);
	border-bottom-style:solid;
	border-bottom-width:1px;
	border-left-style:solid;
	border-left-width:1px;
	border-radius:4px;
	border-right-style:solid;
	border-right-width:1px;
	border-top-style:solid;
	border-top-width:1px;
	color:rgb(255, 255, 255);
	font-family:-apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
	font-size:15px;
}
input[type="text"]{
	width:55%;
	margin-bottom: .8rem;
	margin-right:.8rem;
}
button,input{
	padding: .375rem .75rem;
	
}

input[type="month"]{
	width:35%

}

div.report{
	width: 60%; 
	background-color: white;
	padding: 13px;
	border-style:groove;
	border-radius:0px;
	margin-top: 50px;
	margin-left:350px;
	margin-bottom:10px;
}
.limiter {
  width: 90%;
  margin: 0 auto; 
	background-color: white;
	padding: 13px;
	border-style:groove;
	border-color:#9e6300;
	border-radius:0px;
	margin-top: 50px;
	margin-left:50px;
}

.container-table100 {
  width: 100%;
  min-height: 50vh;
  background: #fff;

  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-wrap: wrap;
  padding: 33px 30px;
}

.wrap-table100 {
  width: 570px;
}

/*//////////////////////////////////////////////////////////////////
[ Table ]*/
.table100 {
  background-color: #fff;
}

table {
  width: 50%;
}

th, td {
  font-weight: unset;
  padding-right: 10px;
}

.column1 {
  width: 100%;
  padding-left: 40px;
}

.column2 {
  width: 100%;
  padding-left:40px;
}


.table100-head th {
  padding-top: 18px;
  padding-bottom: 18px;
}

.table100-body td {
  padding-top: 16px;
  padding-bottom: 16px;
}

/*==================================================================
[ Fix header ]*/
.table100 {
  position: relative;
  padding-top: 60px;
}

.table100-head {
  position: absolute;
  width: 100%;
  top: 0;
  left: 0;
  text-align:left;
}

.table100-body {
  max-height: 585px;
  overflow: auto;
 
}



/*==================================================================
[ Ver2 ]*/

.table100.ver2 .table100-head {
  box-shadow: 0 5px 20px 0px rgba(0, 0, 0, 0.1);
  -moz-box-shadow: 0 5px 20px 0px rgba(0, 0, 0, 0.1);
  -webkit-box-shadow: 0 5px 20px 0px rgba(0, 0, 0, 0.1);
  -o-box-shadow: 0 5px 20px 0px rgba(0, 0, 0, 0.1);
  -ms-box-shadow: 0 5px 20px 0px rgba(0, 0, 0, 0.1);
}

.table100.ver2 th {
  font-family: Lato-Bold;
  font-size: 18px;
  color: #fa4251;
  line-height: 1.4;

  background-color: transparent;
}

.table100.ver2 td {
  font-family: Lato-Regular;
  font-size: 15px;
  color: #808080;
  line-height: 1.4;
}

.table100.ver2 .table100-body tr {
  border-bottom: 1px solid #f2f2f2;
}

/*---------------------------------------------*/

.table100.ver2 {
  border-radius: 0px;
  overflow: hidden;
  box-shadow: 0 0px 40px 0px rgba(0, 0, 0, 0.15);
  -moz-box-shadow: 0 0px 40px 0px rgba(0, 0, 0, 0.15);
  -webkit-box-shadow: 0 0px 40px 0px rgba(0, 0, 0, 0.15);
  -o-box-shadow: 0 0px 40px 0px rgba(0, 0, 0, 0.15);
  -ms-box-shadow: 0 0px 40px 0px rgba(0, 0, 0, 0.15);
}

</style>
</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/admin/payment-dashboard">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Payment Administrator</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item">
        <a class="nav-link" href="/admin/payment-dashboard">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Dashboard</span></a>
      </li>
	  <li class="nav-item">
        <a class="nav-link" href="/admin/payment-VISA">
          <i class="fas fa-clipboard-list"></i>
          <span>VISA Payments</span></a>
      </li>
	  <li class="nav-item">
        <a class="nav-link" href="/admin/payment-FoundationBatch">
          <i class="fas fa-clipboard-list"></i>
          <span>Foundation Batch Payments</span></a>
      </li>
	  <li class="nav-item">
        <a class="nav-link" href="/admin/payment-Income-List">
          <i class="fas fa-dollar-sign"></i>
          <span>Income</span></a>
      </li>
	  <li class="nav-item">
        <a class="nav-link" href="/admin/payment-Expences-List">
          <i class="fas fa-dollar-sign"></i>
          <span>Expences</span></a>
      </li>
	  <li class="nav-item">
        <a class="nav-link" href="/admin/payment-report">
          <i class="fas fa-calendar"></i>
          <span>Report</span></a>
      </li>
      
      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
       <div id="content" style="
    background-color: #ace8ac;
">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow" style="
    background-color: #bbf0ba !important;
">

          <!-- Sidebar Toggle (Topbar) -->
          <form class="form-inline">
            <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
              <i class="fa fa-bars"></i>
            </button>
          </form>

          <!-- Topbar Search -->
           

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto w-100 navbar-search">
                  <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                      <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </li>

            <!-- Nav Item - Alerts -->
              

           

            <div class="topbar-divider d-none d-sm-block"></div>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Valerie Luna</span>
                <img class="img-profile rounded-circle" src="https://cdn2.iconfinder.com/data/icons/web-solid/32/user-512.png">
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#">
                  <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                  Profile
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                  Settings
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                  Activity Log
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">Report</h1>

		<!-- Report search -->
			<div class="search-bar-box">
              <h6 class="m-0 font-weight-bold text-primary">Search For Previous Reports</h6>
            <br>
		<center>
		<form>
			<br> <input type="month" name="month" />
			<input type="button" name="search-month" value="Search" />
		</form>
		</center>
	</div><br>

          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Financial Report</h6>
            </div>
            <div class="card-body">
            <div class="container-table100">
			<div class="wrap-table100">
				
				<div class="table100 ver2 m-b-110">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
									<th class="cell100 column1">Income</th>
									<th class="cell100 column2"></th>
								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll">
						<table>
							<tbody>

								<tr class="row100 body">
									<td class="cell100 column1">Like a butterfly</td>
									<td class="cell100 column2">Boxing</td>
								</tr>

								<tr class="row100 body">
									<td class="cell100 column1">Mind & Body</td>
									<td class="cell100 column2">Yoga</td>
									
								</tr>

								<tr class="row100 body">
									<td class="cell100 column1">Crit Cardio</td>
									<td class="cell100 column2">Gym</td>
									
								</tr>

							</tbody>
						</table>
					</div>
					</div>
					<div class="table100 ver2 m-b-110">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
									<th class="cell100 column1">Expences</th>
									<th class="cell100 column2"></th>
								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll">
						<table>
							<tbody>

								<tr class="row100 body">
									<td class="cell100 column1">Like a butterfly</td>
									<td class="cell100 column2">Boxing</td>
								</tr>

								<tr class="row100 body">
									<td class="cell100 column1">Mind & Body</td>
									<td class="cell100 column2">Yoga</td>
									
								</tr>

								<tr class="row100 body">
									<td class="cell100 column1">Crit Cardio</td>
									<td class="cell100 column2">Gym</td>
									
								</tr>

							</tbody>
						</table>
					</div>
					
				</div>

<div class="table100 ver2 m-b-110">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
									<th class="cell100 column1">Total</th>
									<th class="cell100 column2"></th>
								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll">
						<table>
							<tbody>

								<tr class="row100 body">
									<td class="cell100 column1">Total income</td>
									<td class="cell100 column2">Boxing</td>
								</tr>

								<tr class="row100 body">
									<td class="cell100 column1">Total Expence</td>
									<td class="cell100 column2">Yoga</td>
									
								</tr>

								<tr class="row100 body">
									<td class="cell100 column1">Profit</td>
									<td class="cell100 column2">Gym</td>
									
								</tr>

							</tbody>
						</table>
					</div>
					
				</div>
				
				
			</div>
		</div>
            </div>
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white" style="
    background-color: #bbf0ba !important;
">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
             
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">�</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="../adminAssets/vendor/jquery/jquery.min.js"></script>
  <script src="../adminAssets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="../adminAssets/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="../adminAssets/js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="../adminAssets/vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="../adminAssets/vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="../adminAssets/js/demo/datatables-demo.js"></script>

</body>
</html>