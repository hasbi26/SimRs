<div class="modal fade" id="editModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl ">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel"><i class="fas fa-edit"></i> Edit Obat</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <?= form_open_multipart('/apotik/obat/update_data', ['class' => 'form-edit']);   ?>
            <?= csrf_field(); ?>
            <div class="modal-body">
                <div class="row">
                    <div class="col-sm 6">
                        <input type="hidden" name="id" value="<?=$id?>">
                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Kode Obat</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="kodeobat" name="kodeobat"
                                    value="<?=$kodeobat?>">
                                <div class="invalid-feedback errorKodeobat">
                                </div>
                            </div>
                        </div>


                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Nama Obat</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="namaobat" name="namaobat"
                                    value="<?=$namaobat?>">
                                <div class="invalid-feedback errorNamaobat">
                                </div>
                            </div>
                        </div>

                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Golongan</label>
                            <div class="col-sm-8">
                                <select class="form-select form-select-sm" name="golongan" id="golongan"
                                    aria-label="form-select-sm example">
                                    <?php foreach($datagolongan as $datagolongan):?>
                                    <option <?php if ($datagolongan['id'] == $golongan )
                                        {echo 'selected="selected"' ;} ?> value="<?= $datagolongan['id']; ?>">
                                        <?=$datagolongan['namagolonganobat'] ?></option>
                                    <?php endforeach; ?>

                                </select>
                                <div class="invalid-feedback errorGolongan">
                                </div>
                            </div>
                        </div>

                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Kategori</label>
                            <div class="col-sm-8">
                                <select class="form-select form-select-sm" name="kategori" id="kategori"
                                    aria-label="form-select-sm example">
                                    <?php foreach($datakategori as $datakategori):?>
                                    <option <?php if ($datakategori['id'] == $kategori )
                                        {echo 'selected="selected"' ;} ?> value="<?= $datakategori['id']; ?>">
                                        <?=$datakategori['namakategoriobat'] ?></option>
                                    <?php endforeach; ?>
                                </select>
                                <div class="invalid-feedback errorKategori">
                                </div>
                            </div>
                        </div>


                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Jenis Obat</label>
                            <div class="col-sm-8">
                                <select class="form-select form-select-sm" name="jenis" id="jenis"
                                    aria-label="form-select-sm example">
                                    <?php foreach($datajenis as $datajenis):?>
                                    <option <?php if ($datajenis['id'] == $jenis )
                                        {echo 'selected="selected"' ;} ?> value="<?= $datajenis['id']; ?>">
                                        <?=$datajenis['namajenisobat'] ?></option>
                                    <?php endforeach; ?>
                                </select>
                                <div class="invalid-feedback errorJenis">
                                </div>
                            </div>
                        </div>


                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Satuan Obat</label>
                            <div class="col-sm-8">
                                <select class="form-select form-select-sm" name="satuan" id="satuan"
                                    aria-label="form-select-sm example">
                                    <?php foreach($datasatuan as $datasatuan):?>
                                    <option <?php if ($datasatuan['id'] == $satuan )
                                        {echo 'selected="selected"' ;} ?> value="<?= $datasatuan['id']; ?>">
                                        <?=$datasatuan['namasatuanobat'] ?></option>
                                    <?php endforeach; ?>
                                </select>
                                <div class="invalid-feedback errorSatuan">
                                </div>
                            </div>
                        </div>


                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Tanggal Expire</label>
                            <div class="col-sm-8">
                                <input type="date" class="form-control" id="tanggalexpire" name="tanggalexpire"
                                    value="<?=$tanggalexpire?>">
                                <div class="invalid-feedback errorTanggalexpire">
                                </div>
                            </div>
                        </div>

                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Minimal Stok</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="minimalstok" name="minimalstok"
                                    value="<?=$minimalstok?>">
                                <div class="invalid-feedback errorMinimalstok">
                                </div>
                            </div>
                        </div>

                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Kandungan</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="kandungan" name="kandungan"
                                    value="<?=$kandungan?>">
                                <div class="invalid-feedback errorKandungan">
                                </div>
                            </div>
                        </div>
                    </div>



                    <div class="col-sm 6">

                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Dosis</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="dosis" name="dosis" value="<?=$dosis?>">
                                <div class="invalid-feedback errorDosis">
                                </div>
                            </div>
                        </div>

                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Efek Samping</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="efeksamping" name="efeksamping"
                                    value="<?=$efeksamping?>">
                                <div class="invalid-feedback errorEfeksamping">
                                </div>
                            </div>
                        </div>

                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Deskripsi</label>
                            <div class="col-sm-8">
                                <textarea class="form-control" id="deskripsi" name="deskripsi"
                                    rows="3"> <?=$deskripsi?> </textarea>
                                <div class="invalid-feedback errorDeskripsi">
                                </div>
                            </div>
                        </div>

                        <input type="hidden" name="potolama" value="<?=$potoobat?>">


                        <div class="form-group row mb-3">
                            <label for="poto" class="form-label">Upload Foto</label>
                            <input class="form-control" title=" " id="poto" name="poto" type="file"
                                onchange="previewImageFile(event)" accept="image/*">
                            <div class="invalid-feedback errorPoto">
                            </div>
                        </div>

                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Preview</label>
                            <div class="col-sm-8">

                                <img <?php if ($potoobat == "default.jpg") :?> src="/img/<?=$potoobat;?>"
                                    <?php  else : ?> src="/img/fotoobat/<?=$potoobat;?>" <?php endif?>
                                    alt="Image preview" id="preview-image" style=" width : 100px">

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
        $('.form-edit').submit(function (e) {
            e.preventDefault();
            var formData = new FormData(this);
            $.ajax({
                type: "post",
                url: $(this).attr('action'),
                data: formData,
                processData: false,
                contentType: false,
                dataType: "json",
                beforeSend: function () {
                    $('.btn-update').attr('disable', 'disabled');
                    $('.btn-update').html('<i class="fas fa-spin fa-spinner"></i>');
                },
                complete: function () {
                    $('.btn-update').removeAttr('disable');
                    $('.btn-update').html('Update');
                },
                success: function (response) {
                    if (response.error) {
                        if (response.error.kodeobat) {
                            $('#kodeobat').addClass('is-invalid');
                            $('.errorKodeobat').html(response.error.kodeobat);
                        } else {
                            $('#kodeobat').removeClass('is-invalid');
                            $('.errorKodeobat').html('');
                        }
                        if (response.error.namaobat) {
                            $('#namaobat').addClass('is-invalid');
                            $('.errorNamaobat').html(response.error.namaobat);
                        } else {
                            $('#namaobat').removeClass('is-invalid');
                            $('.errorNamaobat').html('');
                        }
                        if (response.error.golongan) {
                            $('#golongan').addClass('is-invalid');
                            $('.errorGolongan').html(response.error.golongan);
                        } else {
                            $('#golongan').removeClass('is-invalid');
                            $('.errorGolongan').html('');
                        }
                        if (response.error.kategori) {
                            $('#kategori').addClass('is-invalid');
                            $('.errorKategori').html(response.error.kategori);
                        } else {
                            $('#kategori').removeClass('is-invalid');
                            $('.errorKategori').html('');
                        }
                        if (response.error.jenis) {
                            $('#jenis').addClass('is-invalid');
                            $('.errorJenis').html(response.error.jenis);
                        } else {
                            $('#jenis').removeClass('is-invalid');
                            $('.errorJenis').html('');
                        }
                        if (response.error.satuan) {
                            $('#satuan').addClass('is-invalid');
                            $('.errorSatuan').html(response.error.satuan);
                        } else {
                            $('#satuan').removeClass('is-invalid');
                            $('.errorSatuan').html('');
                        }
                        if (response.error.tanggalexpire) {
                            $('#tanggalexpire').addClass('is-invalid');
                            $('.errorTanggalexpire').html(response.error.tanggalexpire);
                        } else {
                            $('#tanggalexpire').removeClass('is-invalid');
                            $('.errorTanggalexpire').html('');
                        }
                        if (response.error.minimalstok) {
                            $('#minimalstok').addClass('is-invalid');
                            $('.errorMinimalstok').html(response.error.minimalstok);
                        } else {
                            $('#minimalstok').removeClass('is-invalid');
                            $('.errorMinimalstok').html('');
                        }
                        if (response.error.poto) {
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
</script>