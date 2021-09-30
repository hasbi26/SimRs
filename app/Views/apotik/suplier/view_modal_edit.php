<div class="modal fade" id="editModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel"><i class="fas fa-edit"></i> Edit Suplier Obat</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <?= form_open('/apotik/suplier/update_data', ['class' => 'form-edit']); ?>
            <?= csrf_field(); ?>
            <div class="modal-body">
                <input type="hidden" class="form-control" id="id" name="id" value="<?= $id; ?>">
                <div class="form-group row">
                    <label for="labelname" class="col-sm-2 col-form-label">Nama Suplier</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="name" name="name" value="<?= $name; ?>">
                        <div class="invalid-feedback errorName">
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-body">
                <div class="form-group row">
                    <label for="labelname" class="col-sm-2 col-form-label">Alamat</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="alamat" name="alamat" value="<?= $alamat; ?>">
                        <div class="invalid-feedback errorName">
                        </div>
                    </div>
                </div>
            </div>

            <div class="modal-body">
                <div class="form-group row">
                    <label for="labelname" class="col-sm-2 col-form-label">Telepon</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="telepon" name="telepon" value="<?= $telepon; ?>">
                        <div class="invalid-feedback errorName">
                        </div>
                    </div>
                </div>
            </div>

            <div class="modal-body">
                <div class="form-group row">
                    <label for="labelname" class="col-sm-2 col-form-label">Email</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="email" name="email" value="<?= $email; ?>">
                        <div class="invalid-feedback errorName">
                        </div>
                    </div>
                </div>
            </div>


            <div class="modal-body">
                <div class="form-group row">
                    <label for="labelname" class="col-sm-2 col-form-label">Keterangan</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="keterangan" name="keterangan"
                            value="<?= $keterangan; ?>">
                        <div class="invalid-feedback errorName">
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
            $.ajax({
                type: "post",
                url: $(this).attr('action'),
                data: $(this).serialize(),
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
                        if (response.error.name) {
                            $('#name').addClass('is-invalid');
                            $('.errorName').html(response.error.name);
                        } else {
                            $('#name').removeClass('is-invalid');
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
</script>