<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>VISA pending students</title>

 
  <link href="../static/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="../static/admin/css/sb-admin-2.css" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="../static/admin/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
</head>

<body id="page-top">



  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">VISA Administrator</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item">
        <a class="nav-link" href="visa_dashboard.html">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Dashboard</span></a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="visa_pending_students.html">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Pending Students</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="index.html">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>VISA processing Section</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="index.html">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>VISA verifed</span></a>
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
              

            <!-- Nav Item - Messages -->
             

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
          <h1 class="h3 mb-2 text-gray-800">Update VISA Application Form Details</h1>
         
          <form  class="was-validated" method="post" action="updatevisa">

            <div class="form-row">
                <div class="col-md-3 mb-3">
                    <label for="validationTooltipUsername">Student ID</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="validationTooltipUsernamePrepend">@</span>
                      </div>
                      <input name="id" type="text" value="${pendingvisa.id}" class="form-control" id="validationTooltipUsername" aria-describedby="validationTooltipUsernamePrepend"  readonly="readonly">
                      <div class="invalid-tooltip">
                        Please choose a unique and valid username.
                      </div>
                    </div>
                  </div>
            </div>

            <div class="form-row">
              <div class="col-md-6 mb-3">
                <label for="validationTooltip01">First name</label>
                <input name="fname" type="text" class="form-control" id="firstname" value="${pendingvisa.fname}" placeholder="First name"  required/>
                <div class="valid-tooltip">
                  Looks good!
                </div>
              </div>
              <div class="col-md-6 mb-3">
                <label for="validationTooltip02">Last name</label>
                <input name="lname" type="text" class="form-control" id="lastname" placeholder="Last name" value="${pendingvisa.lname}"  required>
                <div class="valid-tooltip">
                  Looks good!
                </div>
              </div>
              
            </div>

            <div class="form-row">
                <div class="col-md-6 mb-3 mt-3">
                    <label for="validationTooltipUsername">Personal Email for VISA Process</label>
                    <div class="input-group">
                      <input name="email" type="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"  class="form-control" id="visaemail"  placeholder="student@gmail.com" value="${pendingvisa.email}" aria-describedby="validationTooltipUsernamePrepend" required>
                      <div class="invalid-tooltip">
                        Please Enter Valid Email.
                      </div>
                    </div>
                  </div>
            </div>
                
            <div class="form-row">

                <div class="col-md-6 mb-3 mt-3">
                    <label for="validationTooltipUsername">Gender</label>
                    <div class="input-group">

                        <select class="custom-select" id="gender" name="gender" required>
                            <option value="${pendingvisa.gender}">${pendingvisa.gender}</option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                            <option value="Other">Other</option>
                          </select>
                    </div>
                  </div>

                  <div class="col-md-6 mb-3 mt-3">
                    <label for="validationTooltipUsername">Select Date Of Birth</label>
                    <div class="input-group">
                      <input type="date" class="form-control" name="dob" value="${pendingvisa.dob}" id="dateofbirth"  value="09/02/1998" aria-describedby="validationTooltipUsernamePrepend" required>
                      <div class="invalid-tooltip">
                        Please Slect Date Of Birth.
                      </div>
                    </div>
                  </div>

            </div>

            <label for="validationTooltip03 mt-1">Place Of Birth</label>

            <div class="form-row ">
              <div class="col-md-6 mb-3">
                <input type="text" class="form-control" name="city" value="${pendingvisa.city}" id="city" placeholder="City"  required>
                <div class="invalid-tooltip">
                  Please provide a valid city.
                </div>
              </div>
              <div class="col-md-3 mb-3 ">
                <input type="text" class="form-control" name="state" id="state" value="${pendingvisa.state}" placeholder="State"   required>
                <div class="invalid-tooltip">
                  Please provide a valid state.
                </div>
              </div>
              <div class="col-md-3 mb-3 ">
                <input type="text" class="form-control" name="zip" id="zip" placeholder="Zip" value="${pendingvisa.zip}"  required>
                <div class="invalid-tooltip">
                  Please provide a valid zip.
                </div>
              </div>
            </div>

            <div class="form-row">

                <div class="col-md-6 mb-2 mt-3">
                    <label for="validationTooltipUsername">Current Martial Status</label>
                    <div class="input-group">

                        <select class="custom-select" id="marrage" name="marrage"  required>
                            <option value="${pendingvisa.marrage}">${pendingvisa.marrage}</option>
                            <option value="Married">Married</option>
                            <option value="Engaged">Engaged</option>
                            <option value="Not-Married">Not-Married</option>
                          </select>
                    </div>
                  </div>
                </div> 

                  <div class="col-md-6 mb-2 mt-3">
                    <label for="validationTooltip01">Country Of Current Residence</label>
                    <input type="text" class="form-control" id="currentResidence" name="country"  placeholder="Country Name" value="${pendingvisa.country}" required>
            	</div>
			
			<input type="submit" class="btn btn-primary mt-4" value="Update"/>
            <button class="btn btn-secondary mt-4 ml-4" type="submit" id="cancel">Cancel</button>
          </form>
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
            <span aria-hidden="true">×</span>
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
  
  <script>

  function editText() {
	    document.getElementById('firstname').removeAttribute('readonly');
	    document.getElementById('lastname').removeAttribute('readonly');
	    document.getElementById('visaemail').removeAttribute('readonly');
	    document.getElementById('gender').removeAttribute('disabled');
	    document.getElementById('dateofbirth').removeAttribute('readonly');
	    document.getElementById('city').removeAttribute('readonly');
	    document.getElementById('state').removeAttribute('readonly');
	    document.getElementById('zip').removeAttribute('readonly');
	    document.getElementById('marrage').removeAttribute('disabled');
	    document.getElementById('currentResidence').removeAttribute('readonly');

	    document.getElementById('updateText').innerText = "Save";
	    document.getElementById('cancel').removeAttribute('hidden');
	}

  </script>
  
  <!-- Bootstrap core JavaScript-->
  <script src="../static/admin/vendor/jquery/jquery.min.js"></script>
  <script src="../static/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="../static/admin/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="../static/admin/js/sb-admin-2.min.js"></script>

<script src="../static/admin/js/view.js"></script>

</body>

</html>