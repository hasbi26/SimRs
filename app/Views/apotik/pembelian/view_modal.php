<div class="modal fade" id="addModal" tabindex="-1" aria-labelledby="TambahModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="TambahModalLabel">Tambah Data Pembelian</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>

            <?= form_open_multipart('/apotik/pembelian/save_data', ['class' => 'form-add']);   ?>
            <?= csrf_field(); ?>
            <div class="modal-body">
                <div class="row">
                    <div class="col-sm 6">

                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">No Faktur</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="kodeobat" name="kodeobat">
                                <div class="invalid-feedback errorKodeobat">
                                </div>
                            </div>
                        </div>

                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Suplier</label>
                            <div class="col-sm-8">
                                <select class="form-select form-select-sm" name="golongan" id="golongan"
                                    aria-label="form-select-sm example">
                                    <option value="" selected>Pilih Suplier</option>
                                    <?php foreach($datasuplier as $suplier):?>
                                    <option value="<?= $suplier['id']?>"><?= $suplier['namasuplierobat'] ?></option>
                                    <?php endforeach; ?>
                                </select>
                                <div class="invalid-feedback errorSuplier">
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="col-sm 6">

                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Tanggal Beli</label>
                            <div class="col-sm-8">
                                <input type="date" class="form-control" id="tanggalexpire" name="tanggalexpire">
                                <div class="invalid-feedback errorTanggalexpire">
                                </div>
                            </div>
                        </div>




                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Type</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="type" name="type">
                                <div class="invalid-feedback errorType">
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
                <hr>

                <div class="row">
                    <div class="col">
                        <div class="row align-items-start">
                            <div class="col">
                                Data obat
                            </div>
                            <div class="col-6">
                                <select class="search form-select" aria-label="Default select example" name="search"
                                    id="search" style="width: 100%">
                                    <option value='0'>-- Select Obat --</option>
                                </select>
                            </div>
                            <div class="col">
                                <!-- <form id="myForm1">

                                    <button type="submit" form="myForm1" class="btn-sm btn-success" onclick="fun()">+
                                        Tambah </button>
                                </form> -->
                            </div>
                        </div>

                    </div>

                    <div class="col-sm 4"></div>

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
                // data: $(this).serialize(),
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


    $(document).ready(function () {
        $('#search').select2({
            dropdownParent: $('#addModal'),
            ajax: {
                url: "/apotik/obat/select2obat",
                type: 'post',
                dataType: 'json',
                delay: 250,
                data: function (params) {
                    return {
                        query: params.term, // search term
                    };
                },
                processResults: function (response) {
                    return {
                        results: response.data
                    };
                },
                cache: true
            }
        });
    });

    function fun() {
        console.log("asdk")
    }
</script>