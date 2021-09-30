<div class="modal fade" id="addModal" tabindex="-1" aria-labelledby="TambahModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="TambahModalLabel">Tambah Data Suplier Obat</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <?= form_open('/apotik/suplier/save_data', ['class' => 'form-add']); ?>
            <?= csrf_field(); ?>
            <div class="modal-body">
                <div class="form-group row">
                    <label for="labelname" class="col-sm-4 col-form-label">Nama </label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="idinputsuplierobat" name="name">
                        <div class="invalid-feedback errorName">
                        </div>
                    </div>
                </div>
            </div>

            <div class="modal-body">
                <div class="form-group row">
                    <label for="labelname" class="col-sm-4 col-form-label">Alamat </label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="alamat" name="alamat">
                        <div class="invalid-feedback errorAlamat">
                        </div>
                    </div>
                </div>
            </div>

            <div class="modal-body">
                <div class="form-group row">
                    <label for="labelname" class="col-sm-4 col-form-label">Telepon </label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="telepon" name="telepon">
                        <div class="invalid-feedback errorTelepon">
                        </div>
                    </div>
                </div>
            </div>

            <div class="modal-body">
                <div class="form-group row">
                    <label for="labelname" class="col-sm-4 col-form-label">Email </label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="email" name="email">
                        <div class="invalid-feedback errorEmail">
                        </div>
                    </div>
                </div>
            </div>


            <div class="modal-body">
                <div class="form-group row">
                    <label for="labelname" class="col-sm-4 col-form-label">Keterangan </label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="keterangan" name="keterangan">
                        <div class="invalid-feedback errorKeterangan">
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
                    $('.btn-save').html(
                        '<i class="fas fa-spin fa-spinner"></i>');
                },
                complete: function () {
                    $('.btn-save').removeAttr('disable');
                    $('.btn-save').html('Save');
                },
                success: function (response) {
                    if (response.error) {
                        if (response.error.name) {
                            $('#idinputsuplierobat').addClass('is-invalid');
                            $('.errorName').html(response.error.name);
                        } else {
                            $('#idinputsuplierobat').removeClass('is-invalid');
                            $('.errorName').html('');
                        }
                        if (response.error.alamat) {
                            $('#alamat').addClass('is-invalid');
                            $('.errorAlamat').html(response.error.alamat);
                        } else {
                            $('#alamat').removeClass('is-invalid');
                            $('.errorAlamat').html('');
                        }
                        if (response.error.telepon) {
                            $('#telepon').addClass('is-invalid');
                            $('.errorTelepon').html(response.error.telepon);
                        } else {
                            $('#telepon').removeClass('is-invalid');
                            $('.errorTelepon').html('');
                        }
                        if (response.error.email) {
                            $('#email').addClass('is-invalid');
                            $('.errorEmail').html(response.error.email);
                        } else {
                            $('#email').removeClass('is-invalid');
                            $('.errorEmail').html('');
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
                    alert(xhr.status + "\n" + xhr.responseText + "\n" +
                        thrownError);
                }
            });
            return false;
        });
    });
</script>