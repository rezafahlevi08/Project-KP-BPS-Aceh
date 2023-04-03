 
          <!-- Isi -->

          <div class="content-wrapper">
            <!-- Content -->
            <div class="container-xxl flex-grow-1 container-p-y">
             
<div class="card mb-4">
                    <div class="card-header d-flex justify-content-between align-items-center">
                      <h5 class="mb-0">Tambah Calon Penerima Bantuan Provinsi Aceh</h5>
                    </div>
                    <div class="card-body">
                      <form method="POST" action="layoutAdmin.php?page=../proses/algoritma_proses_data.php">
                      
                      <div class="mb-3">
                        <input type="hidden" name="id_bantuan" value="KB">

                        <label for="exampleFormControlSelect1" class="form-label">Kabupaten</label>
                        <select class="form-select" id="exampleFormControlSelect1" aria-label="Default select example" name="kabupaten">
                          <option selected>Pilih Kabupaten</option>
                          <option value="Banda Aceh">Banda Aceh</option>
                        </select>
                      </div>

                      <div class="mb-3">
                        <label for="exampleFormControlSelect1" class="form-label">Desa</label>
                        <select class="form-select" id="exampleFormControlSelect1" aria-label="Default select example" name="desa">
                          <option selected>Pilih Desa</option>
                          <option value="Rukoh">Rukoh</option>
                          <option value="Limpok">Limpok</option>
                          <option value="Pango">Pango</option>
                          <option value="Tungkop">Tungkop</option>
                          <option value="Lamgugop">Lamgugop</option>
                          <option value="Lamreung">Lamreung</option>
                        </select>
                      </div>

                      <div class="mb-3 row">
                        <label for="html5-number-input" class="col-md-2 col-form-label" require>Berapa Besar</label>
                        <div class="col-md-10">
                          <input class="form-control" type="number" id="html5-number-input" name="berapa_besar"/>
                        </div>
                      </div>

                        <div class="mb-3">
                          <label class="form-label" for="basic-default-fullname">Donatur</label>
                          <input type="text" class="form-control" id="basic-default-fullname" name="donatur" placeholder="Input Donatur"/>
                        </div>

                        <div class="mb-3">
                          <label class="form-label" for="basic-default-phone">Nominal Uang</label>
                          <input type="text" id="basic-default-phone" class="form-control phone-mask" placeholder="Nominal Uang" name="nominal_uang" />
                        </div>

                        <div class="mb-3 row">
                        <label for="html5-datetime-local-input" class="col-md-2 col-form-label">Datetime</label>
                        <div class="col-md-10">
                          <input class="form-control" type="datetime-local" value="2021-06-18T12:30:00" id="html5-datetime-local-input" name="tanggal_disumbangkan" />
                        </div>
                      </div>
                        
                        <button type="submit" class="btn btn-primary">Proses</button>
                      </form>
                    </div>
                  </div>
                </div>
              
			</div>
          </div>


    </div>