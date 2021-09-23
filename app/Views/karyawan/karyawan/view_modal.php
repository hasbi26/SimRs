<div class="modal fade" id="addModal" tabindex="-1" aria-labelledby="TambahModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl ">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="TambahModalLabel">Tambah Data Karyawan</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <?= form_open('karyawan/save_data', ['class' => 'form-add']); ?>
            <?= csrf_field(); ?>
            <div class="modal-body">

                <div class="row">
                    <div class="col-sm 6">

                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Nik</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="nik" name="nik">
                                <div class="invalid-feedback errorName">
                                </div>
                            </div>
                        </div>


                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Nama Karyawan</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="namakaryawan" name="namakaryawan">
                                <div class="invalid-feedback errorName">
                                </div>
                            </div>
                        </div>

                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Jabatan</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="jabatan" name="jabatan">
                                <div class="invalid-feedback errorName">
                                </div>
                            </div>
                        </div>

                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Divisi</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="divisi" name="divisi">
                                <div class="invalid-feedback errorName">
                                </div>
                            </div>
                        </div>

                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Jenis Kelamin</label>
                            <div class="col-sm-8">
                                <select class="form-select form-select-sm" aria-label=".form-select-sm example">
                                    <option selected>Pilih Jenis Kelamin</option>
                                    <option value="Pria">Pria</option>
                                    <option value="Wanita">Wanita</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Tempat Lahir</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="tempatlahir" name="tempatlahir">
                                <div class="invalid-feedback errorName">
                                </div>
                            </div>
                        </div>

                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Tanggal Lahir</label>
                            <div class="col-sm-8">
                                <input type="date" class="form-control" id="tanggallahir" name="tanggallahir">
                                <div class="invalid-feedback errorName">
                                </div>
                            </div>
                        </div>

                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Tanggal Masuk</label>
                            <div class="col-sm-8">
                                <input type="date" class="form-control" id="tanggalmasuk" name="tanggalmasuk">
                                <div class="invalid-feedback errorName">
                                </div>
                            </div>
                        </div>

                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Tanggal Keluar</label>
                            <div class="col-sm-8">
                                <input type="date" class="form-control" id="tanggalkeluar" name="tanggalkeluar">
                                <div class="invalid-feedback errorName">
                                </div>
                            </div>
                        </div>


                    </div>



                    <div class="col-sm 6">

                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Status</label>
                            <div class="col-sm-8">
                                <select class="form-select form-select-sm" aria-label=".form-select-sm example">
                                    <option selected>Pilih Status</option>
                                    <option value="Menikah">Menikah</option>
                                    <option value="Lajang">Lajang</option>
                                    <option value="Bercerai">Bercerai</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Telepon</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="tempatlahir" name="tempatlahir">
                                <div class="invalid-feedback errorName">
                                </div>
                            </div>
                        </div>

                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Alamat</label>
                            <div class="col-sm-8">
                                <textarea class="form-control" id="alamat" name="alamat" rows="3"></textarea>
                                <div class="invalid-feedback errorName">
                                </div>
                            </div>
                        </div>


                        <div class="mb-3">
                            <label for="formFileSm" class="form-label">Upload Foto</label>
                            <input class="form-control form-control-sm" id="formFileSm" type="file">
                        </div>
                    </div>

                </div>




            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Save changes</button>
            </div>
            <?= form_close(); ?>
        </div>
    </div>
</div>



<script>
    $(document).ready(function () {
        $('.form-add').submit(function (e) {
            e.preventDefault();
            $.ajax({
                type: "post",
                url: $(this).attr('action'),
                data: $(this).serialize(),
                dataType: "json",
                beforeSend: function () {
                    $('.btn-save').attr('disable', 'disabled');
                    $('.btn-save').html('<i class="fas fa-spin fa-spinner"></i>');
                },
                complete: function () {
                    $('.btn-save').removeAttr('disable');
                    $('.btn-save').html('Save');
                },
                success: function (response) {
                    if (response.error) {
                        if (response.error.nik) {
                            $('#nik').addClass('is-invalid');
                            $('.errorName').html(response.error.nik);
                        } else {
                            $('#nik').removeClass('is-invalid');
                            $('.errorName').html('');
                        }
                        if (response.error.namakaryawan) {
                            $('#namakaryawan').addClass('is-invalid');
                            $('.errorName').html(response.error.namakaryawan);
                        } else {
                            $('#namakaryawan').removeClass('is-invalid');
                            $('.errorName').html('');
                        }

                    } else {
                        Swal.fire({
                            icon: 'success',
                            title: 'Success',
                            text: response.success,
                            showConfirmButton: false,
                            timer: 1800
                        })

                        $('#addModal').modal('hide');
                        getProducts();
                    }
                },
                error: function (xhr, ajaxOptions, thrownError) {
                    alert(xhr.status + "\n" + xhr.responseText + "\n" + thrownError);
                }
            });
            return false;
        });
    });
</script>