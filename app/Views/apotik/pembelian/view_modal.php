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
                                <input type="text" class="form-control" id="nofaktur" name="header">
                                <div class="invalid-feedback errorKodeobat">
                                </div>
                            </div>
                        </div>

                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Suplier</label>
                            <div class="col-sm-8">
                                <select class="form-select form-select-sm" name="header" id="suplier"
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
                                <input type="date" class="form-control" id="tanggalbeli" name="header">
                                <div class="invalid-feedback errorTanggalexpire">
                                </div>
                            </div>
                        </div>




                        <div class="form-group row mb-1">
                            <label for="labelname" class="col-sm-3 col-form-label">Type</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="type" name="header">
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
                                <form id="myForm1">
                                    <button type="submit" form="myForm1" class="btn-sm btn-success"
                                        onclick="cobaTambah()">+
                                        Tambah </button>
                                </form>
                            </div>
                        </div>

                    </div>

                    <div class="col-sm 4"></div>

                </div>
                <div class="row">
                    <p></p>
                    <div id="table"></div>

                    <table class='table table-bordered' id="tabelpembelian">
                        <thead>

                            <td>no</td>
                            <td>actions</td>
                            <td>id Obat</td>
                            <td>nama</td>
                            <td>jumlah</td>
                            <td>harga</td>
                            <td>total</td>
                        </thead>
                        <tbody class="load_content">


                        </tbody>
                    </table>


                </div>
                <div class="row">
                    <hr>
                    <div class="col-5">
                    </div>
                    <div class="col-3">
                    </div>
                    <div class="col-4">
                        <!-- sub total : <input type="text" class="form-control" id="type" name="type"
                            style="height: 30px; width: 50%"> -->
                        <div class="form-group">
                            <label for="subtotal">Sub Total : </label>
                            <input type="text" name="subtotal" id="subtotal" style="height: 30px; width:75% "
                                disabled />
                        </div>
                    </div>
                </div>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="submit" id="submit" class="btn btn-primary">Save changes</button>
            </div>
            <?= form_close(); ?>
        </div>
    </div>
</div>



<script defer>
    // $(document).ready(function () {
    //     $('.form-add').submit(function (e) {
    //         e.preventDefault();
    //         var formData = new FormData(this);
    //         console.log("form", fromData)
    //         $.ajax({
    //             type: "post",
    //             url: $(this).attr('action'),
    //             // data: $(this).serialize(),
    //             data: formData,
    //             processData: false,
    //             contentType: false,
    //             dataType: "json",
    //             beforeSend: function () {
    //                 $('.btn-save').attr('disable', 'disabled');
    //                 $('.btn-save').html('<i class="fas fa-spin fa-spinner"></i>');
    //             },
    //             complete: function () {
    //                 $('.btn-save').removeAttr('disable');
    //                 $('.btn-save').html('Save');
    //             },
    //             success: function (response) {
    //                 if (response.error) {
    //                     if (response.error.kodeobat) {
    //                         $('#kodeobat').addClass('is-invalid');
    //                         $('.errorKodeobat').html(response.error.kodeobat);
    //                     } else {
    //                         $('#kodeobat').removeClass('is-invalid');
    //                         $('.errorKodeobat').html('');
    //                     }



    //                 } else {
    //                     Swal.fire({
    //                         icon: 'success',
    //                         title: 'Success',
    //                         text: response.success,
    //                         showConfirmButton: false,
    //                         timer: 1800
    //                     })

    //                     $('#addModal').modal('hide');
    //                     getProducts();
    //                 }
    //             },
    //             error: function (xhr, ajaxOptions, thrownError) {
    //                 // alert(xhr.status + "\n" + xhr.responseText + "\n" + thrownError);
    //             }
    //         });
    //         return false;
    //     });
    // });

    $('#nofaktur').keyup(function () {
        console.log(this.value)

        $.ajax({
            headers: {
                'X-Requested-With': 'XMLHttpRequest'
            },
            type: "POST",
            url: "/apotik/pembelian/checkfaktur",
            contentType: "application/json; charset=utf-8",

            // dataType: "json",
            data: {
                'nofaktur': this.value
            },
            complete: function (data) {
                console.log(data)
                if (data.responseText === "NULL\n") {
                    console.log("kosong")

                } else {
                    Swal.fire({
                        icon: 'error',
                        title: 'Ooops',
                        text: "No Faktur Sudah Ada Silahkan Ganti",
                        showConfirmButton: false,
                        timer: 2300
                    })

                    $('#nofaktur').val(null)
                }
            }


        })
    })

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
        var id = $('#search').val()
        var text = $('#search').select2('data')[0]['text'];
        console.log(id)
        if (id != 0) {
            // console.log("id = ", id, "oldid =", sessionStorage.getItem('idobat' + id))
            if (sessionStorage.getItem('idobat' + id) !== null) {
                // console.log("sudah ada")
            } else {
                // console.log("belum ada")
                sessionStorage.setItem('idobat' + id, id);
                var table = createTable(id, text);
                document.getElementById("table").innerHTML = table;
                cobaTambah();
            }
        }
    }


    // const obj = {}
    var nomor = 1;
    var idxArr = 0;
    // let index = 0;
    // const objObat = [{}]
    objArr = []
    arrBaru = []


    function cobaTambah() {


        var text = $('#search').select2('data')[0]['text'];
        var textsplit = text.split("-", 2)
        var idObat = textsplit[0];
        // console.log("id nya", idObat)
        var namaObat = textsplit[1];
        const load = document.querySelector('.load_content');
        const row = document.createElement("tr");
        row.id = 'row' + nomor
        const no = document.createElement("td");
        const deleteRow = document.createElement("td");
        const id = document.createElement("td");
        // id.className = 'idnama'
        const nama = document.createElement("td");
        const jumlah = document.createElement("td");
        const harga = document.createElement("td");
        const total = document.createElement("td");


        if ($('#search').val() != 0) {


            let Objekobat = {
                id: idObat,
                namaObat: namaObat,
                jumlah: jumlah,
                harga: harga,
                total: total
            }

            let result = false
            for (let i = 0; i < objArr.length; i++) {
                console.log(objArr[i].id.includes(Objekobat.id))
                result = objArr[i].id.includes(Objekobat.id)
                if (result === true)
                    break
            }

            if (result === false) {

                load.appendChild(row);
                load.appendChild(no);
                load.appendChild(deleteRow)
                load.appendChild(id)
                load.appendChild(nama);
                load.appendChild(jumlah)
                load.appendChild(harga)
                load.appendChild(total)


                const deleteButton = document.createElement("button")
                deleteButton.type = "button"
                deleteButton.className = 'deleteDep'
                deleteButton.innerHTML = '<i data-feather="trash" style="stroke: red;" ></i>';
                deleteButton.onclick = delete_function(objArr.id, nomor);
                // deleteButton.addEventListener("change", delete_function(nomor))

                const text_nama = document.createTextNode(namaObat)
                text_nama.class = "namaid"
                const text_id = document.createTextNode(idObat)
                text_id.class = "id"
                id.id = 'idobat' + nomor
                id.className = 'nameid'
                nama.id = 'namaobat' + nomor
                nama.className = 'namaobat'
                const text_no = document.createTextNode(nomor)
                const input_jumlah = document.createElement("input")
                input_jumlah.className = "form-control";
                input_jumlah.type = "number";
                input_jumlah.min = "0";
                input_jumlah.style.textAlign = "center";
                input_jumlah.style.height = '30px'
                input_jumlah.style.width = '80%'
                input_jumlah.style.padding = '.5em 1em;'
                // input_jumlah.setAttribute("onchange", calculateStuff())
                //  input_jumlah.addEventListener("change", calculateStuff.bind(1))
                input_jumlah.addEventListener("change", some_function())
                input_jumlah.id = 'jumlah' + nomor
                input_jumlah.name = 'jumlah'



                const input_harga = document.createElement("input")
                input_harga.className = "form-control";
                input_harga.type = "number";
                input_harga.min = "0";
                input_harga.style.textAlign = "center";
                input_harga.style.height = '30px'
                input_harga.style.width = '80%'
                input_harga.style.padding = '.5em 1em;'
                input_harga.addEventListener("change", some_function(nomor))
                // input_harga.addEventListener("change", calculateStuff.bind(6))
                input_harga.id = 'harga' + nomor
                input_harga.name = 'harga'



                const input_total = document.createElement("input")
                input_total.className = "form-control";
                input_total.type = "number";
                input_total.min = "0";
                input_total.style.textAlign = "center";
                input_total.id = "total" + nomor
                input_total.style.height = '30px'
                input_total.style.width = '80%'
                input_total.style.padding = '.5em 1em;'
                input_total.name = "total"



                // console.log()

                row.appendChild(no)
                row.appendChild(deleteRow)
                row.appendChild(id)
                row.appendChild(nama)
                row.appendChild(jumlah)
                row.appendChild(harga)
                row.appendChild(total)


                no.appendChild(text_no)
                id.appendChild(text_id);
                nama.appendChild(text_nama)
                jumlah.appendChild(input_jumlah);
                harga.appendChild(input_harga);
                total.appendChild(input_total);
                deleteRow.appendChild(deleteButton);


                $("input#total" + nomor).prop('disabled', true);
                nomor++
                idxArr++


                objArr.push(Objekobat)

                console.log("data masuk =", objArr)
                feather.replace()

            }
        }

    }






    var delete_function = (i, n) => {
        return (e) => {

            var hapusRow = $('tr#row' + n).attr("id")
            var hapus = $('td#idobat' + n).text()

            const index = objArr.findIndex((element, index) => {
                if (element.id === hapus) {
                    return true
                }
            })


            objArr.splice(index, 1)
            var table = document.getElementById("tabelpembelian");
            var row = document.getElementById(hapusRow)
            row.parentNode.removeChild(row)

            mencari_total()
        }
    }




    var some_function = (some_var) => {
        return (e) => {


            let jumlah = $('input#jumlah' + some_var).val()
            let harga = $('input#harga' + some_var).val()
            let total = parseInt(jumlah) * parseInt(harga)
            $('input#total' + some_var).val(total)
            mencari_total()


        }
    }

    var mencari_total = () => {


        var arr = document.getElementsByName('total');
        var tot = 0;
        for (var i = 0; i < arr.length; i++) {
            if (parseInt(arr[i].value))
                tot += parseInt(arr[i].value);
        }
        $('input#subtotal').val(tot)

    }



    // var element = {},
    //     cart = [];

    $("button#submit").click(function () {
        // console.log("ini name", $("[name='jumlah']"))

        var nofaktur = $('input#nofaktur').val()
        var suplier = $('#suplier').val()
        var tanggal = $('#tanggalbeli').val()
        var type = $('#type').val()
        var total = $('#subtotal').val()
        var isValid = true

        let datadetail = []

        $("[name='header']").each(function () {
            var element = $(this);
            // console.log("element", element)
            if (element.val() == "") {
                isValid = false;
                element.css("border", "1px solid red");
                element.focus();
            } else {
                element.css("border", "1px solid green");
            }
        });


        $("[name='jumlah']").each(function () {
            var element = $(this);
            if (element.val() == "") {
                isValid = false;
                element.css("border", "1px solid red");
                element.focus();
            } else {
                element.css("border", "1px solid green");
            }
        });

        $("[name='harga']").each(function () {
            var element = $(this);
            if (element.val() == "") {
                isValid = false;
                element.css("border", "1px solid red");
                element.focus();
            } else {
                element.css("border", "1px solid green");
            }
        });

        console.log("valid = ", isValid)
        if (isValid) {

            var data1 = [{
                'no_faktur': nofaktur,
                'id_suplier': suplier,
                'tgl_beli': tanggal,
                'type': type,
                'total_harga': total
            }]
            console.log("DATA HEADER =", data1)

            $(".load_content").find('tr').each(function () {

                var col2 = $(this).find("td:eq(2)").text();
                var col3 = $(this).find("td:eq(3)").text();
                var col4 = $(this).find("td:eq(4) input").val();
                var col5 = $(this).find("td:eq(5) input").val();
                var col6 = $(this).find("td:eq(6) input").val();


                var objek = {
                    id: col2,
                    nama: col3,
                    jumlah: col4,
                    harga: col5,
                    total: col6
                }

                datadetail.push(objek)

            })

            console.log("siap data1 ", data1)
            console.log("siap kirims", datadetail)

            $.ajax({
                type: 'POST',
                url: '/apotik/pembelian/save_data',
                headers: {
                    'X-Requested-With': 'XMLHttpRequest'
                },
                data: {
                    data1,
                    datadetail
                },
                dataType: 'json',
                contentType: "application/json; charset=utf-8",

                success: function (data) {
                    Swal.fire({
                        icon: 'success',
                        title: 'Success',
                        text: data.success,
                        showConfirmButton: false,
                        timer: 1800
                    })
                    $('#addModal').modal('hide');
                    getProducts();

                },
                error: function (err) {
                    // $('#addModal').modal('hide');
                    console.log("error", err)
                    alert(err)
                }
            })


        }

    })
</script>