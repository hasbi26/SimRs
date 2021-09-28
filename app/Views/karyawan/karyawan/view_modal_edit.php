<div class="modal fade" id="editModal" tabindex="-1" aria-labelledby="TambahModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl ">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="TambahModalLabel">Edit Data Karyawan</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <?= form_open_multipart('karyawan/update_data', ['class' => 'form-add']);  ?>
            <?= csrf_field(); ?>
            <div class="modal-body">
                <div class="row">
                    <div class="col-sm 6">
                        <input type="hidden" name="id" value="<?=$id?>">
                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Nik</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="nik" name="nik" value="<?= $nik; ?>">
                                <div class=" invalid-feedback errorNik">
                                </div>
                            </div>
                        </div>


                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Nama Karyawan</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="namakaryawan" name="namakaryawan"
                                    value="<?= $name; ?>">
                                <div class="invalid-feedback errorName">
                                </div>
                            </div>
                        </div>

                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Jabatan</label>
                            <div class="col-sm-8">
                                <select class="form-select form-select-sm" name="jabatan" id="jabatan"
                                    aria-label="form-select-sm example">

                                    <?php foreach($datajabatan as $datajabatan):?>
                                    <option <?php if ($datajabatan['id'] == $idjabatan )
                                        {echo 'selected="selected"' ;} ?> value="<?= $datajabatan['id']; ?>">
                                        <?=$datajabatan['namajabatan'] ?></option>

                                    <?php endforeach; ?>
                                </select>
                                <div class="invalid-feedback errorJabatan">
                                </div>
                            </div>
                        </div>


                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Divisi</label>
                            <div class="col-sm-8">
                                <select class="form-select form-select-sm" name="divisi" id="divisi"
                                    aria-label="form-select-sm example">
                                    <?php foreach($datadivisi as $datadivisi):?>
                                    <option <?php if ($datadivisi['id'] == $iddivisi )
                                        {echo 'selected="selected"' ;} ?> value="<?= $datadivisi['id']; ?>">
                                        <?=$datadivisi['namadivisi'] ?></option>
                                    <?php endforeach; ?>
                                </select>
                                <div class="invalid-feedback errorDivisi">
                                </div>
                            </div>
                        </div>

                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Jenis Kelamin</label>
                            <div class="col-sm-8">
                                <select class="form-select form-select-sm" name="jeniskelamin" id="jeniskelamin"
                                    aria-label="form-select-sm example">
                                    <?php foreach($jk as $jks):?>
                                    <option <?php if ($jks == $jeniskelamin )
                                        {echo 'selected="selected"' ;} ?> value="<?= $jks; ?>">
                                        <?=$jks ?></option>
                                    <?php endforeach; ?>
                                </select>
                                <div class="invalid-feedback errorJeniskelamin">
                                </div>
                            </div>
                        </div>

                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Tempat Lahir</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="tempatlahir" name="tempatlahir"
                                    value="<?= $tempatlahir;?>">
                                <div class="invalid-feedback errorTempatlahir">
                                </div>
                            </div>
                        </div>

                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Tanggal Lahir</label>
                            <div class="col-sm-8">
                                <input type="date" class="form-control" id="tanggallahir" name="tanggallahir"
                                    value="<?=$tanggallahir?>">
                                <div class="invalid-feedback errorTanggallahir">
                                </div>
                            </div>
                        </div>

                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Tanggal Masuk</label>
                            <div class="col-sm-8">
                                <input type="date" class="form-control" id="tanggalmasuk" name="tanggalmasuk"
                                    value="<?=$tanggalmasuk?>">
                                <div class="invalid-feedback errorTanggalmasuk">
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
                                <select class="form-select form-select-sm" name="status" id="status"
                                    aria-label=".form-select-sm example"><?php if ($statusmenikah) : ?>
                                    <?php foreach ($statusList as $statusLists):?>
                                    <option <?php if($statusLists == $statusmenikah) {echo 'selected="selected"';} ?>
                                        value="<?=$statusLists?>"><?=$statusLists?></option>
                                    <?php endforeach?>
                                    <?php else : ?>
                                    <option value="" selected>Pilih Status</option>
                                    <option value="Menikah">Menikah</option>
                                    <option value="Lajang">Lajang</option>
                                    <option value="Bercerai">Bercerai</option>
                                    <?php endif?>
                                </select>
                            </div>
                        </div>

                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Telepon</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="telepon" name="telepon"
                                    value="<?=$telepon?>">
                                <div class="invalid-feedback errorTelepon">
                                </div>
                            </div>
                        </div>

                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Alamat</label>
                            <div class="col-sm-8">
                                <textarea class="form-control" id="alamat" name="alamat"
                                    rows="3"><?=$alamat?></textarea>
                                <div class="invalid-feedback errorAlamat">
                                </div>
                            </div>
                        </div>

                        <div class="form-group row mb-3">
                            <label for="poto" class="form-label">Upload Foto</label>
                            <input class="form-control " id="poto" name="poto" type="file"
                                onchange="previewImageFile(event)" accept="image/*" value="<?=$poto;?>">
                            <div class="invalid-feedback errorPoto">
                            </div>
                        </div>
                        <input type="hidden" name="potolama" value="<?=$poto?>">
                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Preview</label>
                            <div class="col-sm-8">

                                <img <?php if ($poto == "default.jpg") :?> src="/img/<?=$poto;?>" <?php  else : ?>
                                    src="/img/fotokaryawan/<?=$poto;?>" <?php endif?> alt="Image preview"
                                    id="preview-image" style=" width : 100px">

                            </div>
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

            var formData = new FormData(this);


            $.ajax({
                type: "post",
                url: $(this).attr('action'),
                // data: $(this).serialize() + '&namaFoto=' + setName(),
                data: formData,
                processData: false,
                contentType: false,
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
                            $('.errorNik').html(response.error.nik);
                        } else {
                            $('#nik').removeClass('is-invalid');
                            $('.errorNik').html('');
                        }
                        if (response.error.namakaryawan) {
                            $('#namakaryawan').addClass('is-invalid');
                            $('.errorName').html(response.error.namakaryawan);
                        } else {
                            $('#namakaryawan').removeClass('is-invalid');
                            $('.errorName').html('');
                        }
                        if (response.error.jabatan) {
                            $('#jabatan').addClass('is-invalid');
                            $('.errorJabatan').html(response.error.jabatan);
                        } else {
                            $('#jabatan').removeClass('is-invalid');
                            $('.errorJabatan').html('');
                        }
                        if (response.error.divisi) {
                            $('#divisi').addClass('is-invalid');
                            $('.errorDivisi').html(response.error.divisi);
                        } else {
                            $('#divisi').removeClass('is-invalid');
                            $('.errorDivisi').html('');
                        }
                        if (response.error.jeniskelamin) {
                            $('#jeniskelamin').addClass('is-invalid');
                            $('.errorJeniskelamin').html(response.error.jeniskelamin);
                        } else {
                            $('#jeniskelamin').removeClass('is-invalid');
                            $('.errorJeniskelamin').html('');
                        }
                        if (response.error.tempatlahir) {
                            $('#tempatlahir').addClass('is-invalid');
                            $('.errorTempatlahir').html(response.error.tempatlahir);
                        } else {
                            $('#tempatlahir').removeClass('is-invalid');
                            $('.errorTempatlahir').html('');
                        }
                        if (response.error.tanggallahir) {
                            $('#tanggallahir').addClass('is-invalid');
                            $('.errorTanggallahir').html(response.error.tanggallahir);
                        } else {
                            $('#tanggallahir').removeClass('is-invalid');
                            $('.errorTanggallahir').html('');
                        }
                        if (response.error.tanggalmasuk) {
                            $('#tanggalmasuk').addClass('is-invalid');
                            $('.errorTanggalmasuk').html(response.error.tanggalmasuk);
                        } else {
                            $('#tanggalmasuk').removeClass('is-invalid');
                            $('.errorTanggalmasuk').html('');
                        }
                        if (response.error.telepon) {
                            $('#telepon').addClass('is-invalid');
                            $('.errorTelepon').html(response.error.telepon);
                        } else {
                            $('#telepon').removeClass('is-invalid');
                            $('.errorTelepon').html('');
                        }
                        if (response.error.alamat) {
                            $('#alamat').addClass('is-invalid');
                            $('.errorAlamat').html(response.error.alamat);
                        } else {
                            $('#alamat').removeClass('is-invalid');
                            $('.errorAlamat').html('');
                        }
                        if (response.error.poto) {
                            console.log("ee")
                            $('#poto').addClass('is-invalid');
                            $('.errorPoto').html(response.error.poto);
                        } else {
                            $('#poto').removeClass('is-invalid');
                            $('.errorPoto').html('');
                        }

                    } else {
                        Swal.fire({
                            icon: 'success',
                            title: 'Success',
                            text: response.success,
                            showConfirmButton: false,
                            timer: 1800
                        })

                        $('#editModal').modal('hide');
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

    // Image preview
    var previewImageFile = function (event) {
        var output = document.getElementById('preview-image');
        output.removeAttribute("class");
        output.src = URL.createObjectURL(event.target.files[0]);
        output.onload = function () {
            URL.revokeObjectURL(output.src)
        }
        var namePict = document.getElementById("poto").files[0].name
        console.log(namePict);

    };

    function setName() {
        return document.getElementById("poto").files[0].name
    }
</script>