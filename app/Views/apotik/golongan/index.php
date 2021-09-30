<?= $this->extend('layout/template'); ?>


<?= $this->section('content');?>


<div id="layoutSidenav_content">
    <main>
        <div class="card mb-4">
            <div class="card-header">
                <i class="fas fa-table mr-1"></i>
                <a href="" class="btn btn-primary btn-sm mb-2 add-modal"><i class="fas fa-plus-square"></i> Add
                    data</a>
            </div>
            <div class="card-body">
                <!-- <a href="" class="btn btn-primary btn-sm mb-2 add-modal"><i class="fas fa-plus-square"></i> Add data</a> -->

                <!-- Get Data -->
                <div class="table-responsive view-data">

                </div>
            </div>
        </div>
</div>
</main>

<!-- Get Modal -->
<div class="view-modal" style="display: none;"></div>


<script type="text/javascript">
    // Function get product ajax
    function getProducts() {
        $.ajax({
            url: "<?= base_url('/apotik/golongan/get_data') ?>",
            dataType: "json",
            success: function (response) {
                $('.view-data').html(response.output);
            },
            error: function (xhr, ajaxOptions, thrownError) {
                alert(xhr.status + "\n" + xhr.responseText + "\n" + thrownError);
            }
        })
    }

    // view output
    $(document).ready(function () {
        getProducts();

        $('.add-modal').click(function (e) {
            e.preventDefault();
            $.ajax({
                url: "<?= base_url('/apotik/golongan/get_modal'); ?>",
                dataType: "json",
                success: function (response) {
                    $('.view-modal').html(response.output).show();

                    $('#addModal').modal('show')
                },
                error: function (xhr, ajaxOptions, thrownError) {
                    alert(xhr.status + "\n" + xhr.responseText + "\n" + thrownError);
                }
            });
        });
    });
</script>




<?= $this->endSection(); ?>