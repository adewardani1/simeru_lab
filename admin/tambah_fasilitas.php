      <!-- Main content -->
      <section class="content">
          <div class="container-fluid">
              <!-- /.row -->
              <div class="row">
                  <div class="col-12">
                      <div class="card">
                          <div class="card-header">
                              <h3 class="card-title">Tambah Fasilitas Lab</h3>
                          </div>
                          <!-- /.card-header -->
                          <!-- form start -->
                          <form id="quickForm" name="kirim" method="POST" action=''>
                              <div class="card-body">
                                  <div class="form-group">
                                      <label for="exampleInputEmail1">Nama Ruangan</label>
                                      <input type="text" name="nama" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Nama Ruang">
                                  </div>
                                  <div class="form-group">
                                      <label for="exampleInputPassword1">Deskripsi</label>
                                      <input type="text" name="deskripsi" class="form-control" id="exampleInputPassword1" placeholder="Masukkan Deskripsi">
                                  </div>
                                  <div class="form-group">
                                      <label for="exampleInputPassword1">Kapasitas</label>
                                      <input type="text" name="kapasitas" class="form-control" id="exampleInputPassword1" placeholder="Kapasitas Ruang">
                                  </div>
                                  <div class="form-group">
                                      <label for="exampleInputPassword1">Gambar</label>
                                      <input type="text" name="gambar" class="form-control" id="exampleInputPassword1" placeholder="Gambar">
                                  </div>
                                  <div class="form-group">
                                      <label for="exampleInputPassword1">Jumlah Ruang</label>
                                      <input type="text" name="status" class="form-control" id="exampleInputPassword1" placeholder="Jumlah Ruang">
                                  </div>
                              </div>
                              <!-- /.card-body -->
                              <div class="card-footer">
                                  <button type="submit" name="kirim" class="btn btn-primary">Kirim</button>
                              </div>
                          </form>
                          <!-- /.card-body -->
                          <?php

                            if (isset($_POST['kirim'])) {
                                $nama = htmlspecialchars($_POST['nama']);
                                $deskripsi = htmlspecialchars($_POST['deskripsi']);
                                $kapasitas = htmlspecialchars($_POST['kapasitas']);
                                $gambar = htmlspecialchars($_POST['gambar']);
                                $status = htmlspecialchars($_POST['status']);

                                $insert = mysqli_query($koneksi, "INSERT INTO ruang VALUES (NULL, '$nama', '$deskripsi', '$kapasitas', '$gambar', '$status')");

                                if ($insert) {
                                    echo "<div class='col-md-11 col-sm-12 col-xs-12'>";
                                    echo "<div class='alert alert-primary mt-4 ml-5' role='alert'>";
                                    echo "<p><center>Data Berhasil Masuk</center></p>";
                                    echo   "</div>";
                                    echo "</div>";
                                } else {
                                    echo "<div class='col-md-10 col-sm-12 col-xs-12'>";
                                    echo "<div class='alert alert-danger mt-4 ml-5' role='alert'>";
                                    echo "<p><center>Data Gagal Masuk</center></p>";
                                    echo   "</div>";
                                    echo "</div>";
                                }
                            }

                            ?>
                      </div>
                      <!-- /.card -->
                  </div>
              </div>
          </div><!-- /.container-fluid -->
      </section>
      <!-- /.content -->