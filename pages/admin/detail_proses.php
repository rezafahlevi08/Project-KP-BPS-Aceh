<?php 
$id_bantuan = $_GET['id_bantuan'];
$conn = new mysqli("localhost", "root", "", "projectkp");

$query_calon_penerima = "SELECT * FROM tb_calon_penerima WHERE id_bantuan = '$id_bantuan'";
$calon_penerima = mysqli_query($conn, $query_calon_penerima);
$no = 1;

$query_bantuan = "SELECT * FROM tb_bantuan WHERE id_bantuan = '$id_bantuan'";
$bantuan = mysqli_query($conn, $query_bantuan);
$det_bantuan = mysqli_fetch_array($bantuan);
 ?> 

                    <nav
            class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
            id="layout-navbar"
          >
            <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
              <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
                <i class="bx bx-menu bx-sm"></i>
              </a>
            </div>

            <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
              <!-- Search -->
              <div class="navbar-nav align-items-center">
                <div class="nav-item d-flex align-items-center">
                  <i class="bx bx-search fs-4 lh-0"></i>
                  <input
                    type="text"
                    class="form-control border-0 shadow-none"
                    placeholder="Search..."
                    aria-label="Search..."
                  />
                </div>
              </div>
              <!-- /Search -->

              
            </div>
          </nav>

          <!-- Isi -->

          <div class="content-wrapper">
            <!-- Content -->
            <div class="container-xxl flex-grow-1 container-p-y">
             

              <div class="card">
                <h5 class="card-header">
                	Daftar Rangking <?= $det_bantuan['berapa_besar']; ?> Besar Desa <strong><?= $det_bantuan['desa']; ?></strong> <i> (kode bantuan <?= $det_bantuan['id_bantuan']; ?>)</i><br>
					<div  style="font-size: 15px; position: relative; right: 19px;">
	                	<a href="" class="nav-link" style="float:left;">Download Data Nama Calon Penerima Untuk Pendamping</a>
	                	<a href="" class="nav-link" >Lihat Proposal</a>
                	</div>
                </h5>
                <form>
                <div class="table-responsive text-nowrap">
                  <table class="table">
                    <thead class="table-light">
                      <tr>
                      	<th class="text-center">No</th>
                        <th style="padding-left: 3.5%;">Kepala Keluarga</th>
                        <th>NIK</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody class="table-border-bottom-0">

                      <?php  while($dt_calon_penerima = mysqli_fetch_array($calon_penerima)):?>
                        <tr>
                        	<td class="text-center"><?= $no ?></td>
                          <td><i class="fab fa-angular fa-lg text-danger me-3"></i><?= $dt_calon_penerima['kepala_keluarga']; ?></td>
                          <td><?= $dt_calon_penerima['nik']; ?></td>
                          <td>
                          	<div class="form-check">
                              <input class="form-check-input" type="checkbox" value="" id="defaultCheck3" unchecked />
                            </div>
  						          </td>
                      <?php 
                        $no++;
                        endwhile 
                      ?>

                    </tbody>
                  </table>
                </div>
              </div>

			  <button class="btn btn-primary mt-4" style="float:right;">Pilih Keluarga Penerima Bantuan</button>
			  </form>

