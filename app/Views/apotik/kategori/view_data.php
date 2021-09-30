<div class="table-responsive">
    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0"
        style="border-top: 2px solid black;">
        <thead>
            <tr>
                <th>No</th>
                <th>id</th>
                <th>Nama Kategori Obat</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>

            <?php $no = 1;
                foreach ($data_kategori_obat as $datas) : ?>
            <tr>
                <td width="1%"><?= $no++; ?></td>
                <td><?= $datas->id ?></td>
                <td><?= $datas->namakategoriobat?></td>
                <td class="text-center" width="20%">
                    <button class="btn btn-success btn-sm mb-1" onclick="edit('<?= $datas->id ?>')">
                        Update
                    </button>

                    <button class="btn btn-danger btn-sm mb-1" onclick="deletes('<?= $datas->id ?>')">
                        Delete
                    </button>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>

<script>
    $(document).ready(function () {
        $('#dataTable').DataTable();
    });

    function edit(id) {
        $.ajax({
            type: "post",
            url: "<?= base_url('/apotik/kategori/get_modal_edit'); ?>",
            data: {
                id: id
            },
            dataType: "json",
            success: function (response) {
                if (response.output) {
                    $('.view-modal').html(response.output).show();
                    $('#editModal').modal('show');
                }
            },
            error: function (xhr, ajaxOptions, thrownError) {
                alert(xhr.status + "\n" + xhr.responseText + "\n" + thrownError);
            }
        });
    }

    function deletes(id) {
        Swal.fire({
            title: 'Are you sure?',
            text: `You won't be able to revert this!`,
            icon: 'question',
            showCancelButton: true,
            confirmButtonColor: '#d33',
            cancelButtonColor: '#3085d6',
            confirmButtonText: 'Yes, delete it!',
            cancelButtonText: 'Cancel'
        }).then((result) => {
            if (result.value) {
                $.ajax({
                    type: "post",
                    url: "<?= base_url('/apotik/kategori/delete_data'); ?>",
                    data: {
                        id: id
                    },
                    dataType: "json",
                    success: function (response) {
                        if (response.output) {
                            Swal.fire({
                                icon: 'success',
                                title: 'Deleted',
                                text: response.output,
                            });
                            getProducts();
                        }
                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        alert(xhr.status + "\n" + xhr.responseText + "\n" + thrownError);
                    }
                });
            }
        });
    }
</script>