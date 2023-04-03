<?php 
$conn = new mysqli("localhost", "root", "", "projectkp");

$query = "SELECT * FROM tb_bantuan";
$data = mysqli_query($conn, $query);

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
                <h5 class="card-header">Daftar Desa Penerima Bantuan</h5> 
                <div class="table-responsive text-nowrap">

                  <table class="table">
                    <thead class="table-light">
                      <tr>
                        <th style="padding-left: 3.5%;">Kabupaten/desa</th>
                        <th>Sumber Dana</th>
                        <th>Status</th>
                        <th style="text-align: center;">Monitoring</th>
                      </tr>
                    </thead>
                    <tbody class="table-border-bottom-0">

                      <tr>
                        <td><i class="fab fa-angular fa-lg text-danger me-3"></i> <strong>Banda Aceh, Limpok</strong></td>
                        <td>Bank Syariah Indonesia</td>
                        <td><span class="badge bg-label-primary me-1">Active</span></td>
                        <td>
                          <a class="dropdown-item" href="layoutAdmin.php?page=admin/detail_aktif.php" style="text-align: center;">Lihat</a>
                        </td>
                      </tr>

                      <?php  while($bantuan = mysqli_fetch_array($data)):?>
                        <tr>
                          <td><i class="fab fa-angular fa-lg text-danger me-3"></i> <strong><?= $bantuan['kabupaten']; ?>, <?= $bantuan['desa']; ?></strong></td>
                          <td><?= $bantuan['donatur']; ?></td>
                          <td><span class="badge bg-label-warning me-1">Proses</span></td>
                          <td>
                            <a class="dropdown-item" href="layoutAdmin.php?page=admin/detail_proses.php&id_bantuan=<?= $bantuan['id_bantuan']; ?>" style="text-align: center;">Lihat</a>
                          </td>
                        </tr>
                      <?php endwhile ?>

                    </tbody>
                  </table>
                </div>
              </div>


        <!-- / Content -->
        <br>
        <!-- Footer -->
        <footer class="content-footer footer bg-footer-theme">
            <div class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
                <div class="mb-2 mb-md-0">
                    © Copyright 2023
                </div>
            </div>
        </footer>
        <!-- / Footer -->

        <div class="content-backdrop fade"></div>
    </div>