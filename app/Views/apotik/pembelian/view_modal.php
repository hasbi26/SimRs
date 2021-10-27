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
                    <div class="col">
                        <p></p>
                        <div id="table"></div>

                        <table class='table table-striped'>
                            <thead>
                                <tr>

                                    <td>no</td>
                                    <td>id Obat</td>
                                    <td>nama</td>
                                    <td>jumlah</td>
                                    <td>harga</td>
                                    <td>total</td>
                                </tr>
                            </thead>
                            <tbody class="load_content">
                                <tr>

                                </tr>

                            </tbody>
                        </table>


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



<script defer>
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
    let objArr = []
    var nomor = 1;
    // let index = 0;
    // const objObat = [{}]


    function cobaTambah() {


        var text = $('#search').select2('data')[0]['text'];
        var textsplit = text.split("-", 2)
        var idObat = textsplit[0];
        // console.log("id nya", idObat)
        var namaObat = textsplit[1];
        const load = document.querySelector('.load_content');
        const row = document.createElement("tr");
        const no = document.createElement("td");
        const id = document.createElement("td");
        const nama = document.createElement("td");
        const jumlah = document.createElement("td");
        const harga = document.createElement("td");
        const total = document.createElement("td");

        
        if ($('#search').val() != 0) {

            let Objekobat = {
                id: idObat,
                namaObat: namaObat
            }
            
            let result = false            
            for (let i = 0; i < objArr.length; i++) {
                console.log(objArr[i].id.includes(Objekobat.id))
                result = objArr[i].id.includes(Objekobat.id)
                if (result === true)
                break
                }
                
                if (result === false){

                    load.appendChild(row);
                    load.appendChild(no);
                    load.appendChild(id)
                    load.appendChild(nama);
                    load.appendChild(jumlah)
                    load.appendChild(harga)
                    load.appendChild(total)
                    
                    const text_nama = document.createTextNode(namaObat)
                    const text_id = document.createTextNode(idObat)
                    const text_no = document.createTextNode(nomor)
                    const input_jumlah = document.createElement("input")
                    input_jumlah.className = "form-control";
                    input_jumlah.type = "number";
                    input_jumlah.min= "0";
                    input_jumlah.style.textAlign = "center";

                    const input_harga = document.createElement("input")
                    input_harga.className = "form-control";
                    input_harga.type = "number";
                    input_harga.min= "0";
                    input_harga.style.textAlign = "center";

                    const input_total = document.createElement("input")
                    input_total.className = "form-control";
                    input_total.type = "number";
                    input_total.min= "0";
                    input_total.style.textAlign = "center";
                    input_total.disabled

                    
                    no.appendChild(text_no)
                    id.appendChild(text_id);
                    nama.appendChild(text_nama)
                    jumlah.appendChild(input_jumlah);
                    harga.appendChild(input_harga);
                    total.appendChild(input_total);
                    objArr.push(Objekobat)
        
                    console.log("data masuk =", objArr)
                    nomor++
                }
        }

    }





    function createTable(a, b) {
        var jumlah = 10;
        var row = 2;
        var total = jumlah;
        var table = "<table class='table table-striped'>";
        table += "<tbody class='load_content' >"
        table += "<tr>";
        table += "<th><center>No</center></th>";
        table += "<th><center>Nama</center></th>";
        table += "<th><center>Harga</center></th>";
        table += "<th><center>Jumlah</center></th>";
        table += "<th><center>Total</center></th>";
        table += "</tr>";
        table += "<tr>";
        table += "<td><center> 1 </center></td>";
        table += "<td><center> " + b + " </center></td>";
        table +=
            "<td><center> <input type='number' min='0' id='harga' onchange='calculateStuff();' > </center></td>";
        table +=
            "<td><center> <input type='number' min='0' id='jumlah' onchange='calculateStuff();' > </center></td>";
        table += "<td><center> <input type='number' id='total' disabled ></center></td>";
        table += "</tr>";
        table += "</tbody>"
        table += "</table>";

        return table;

    }

    function calculateStuff() {
        let harga = $('#harga').val()
        let jumlah = $('#jumlah').val()
        let total = parseInt(jumlah) * parseInt(harga)
        $('#total').val(total)


    }

    // let jml = 1;

    function tambahInput() {
        const load = document.querySelector('.load_content');
        const row = document.createElement("tr");
        const nik = document.createElement("td");
        const nama = document.createElement("td");
        const alamat = document.createElement("td");
        const action = document.createElement("td");

        //memasukan elemen ke tabel body

        console.log(load);

        load.appendChild(row);
        load.appendChild(nik);
        load.appendChild(nama);
        load.appendChild(alamat);
        load.appendChild(action);

        // membuat text 
        const text_nik = document.createElement("input");
        text_nik.setAttribute("type", 'text');
        text_nik.setAttribute("id", "nik[" + jml + "]");
        text_nik.setAttribute("placeholder", "masukan nik");

        const text_nama = document.createElement("input");
        text_nama.setAttribute("type", 'text');
        text_nama.setAttribute("name", "nama");
        text_nama.setAttribute("id", "nama");
        text_nama.setAttribute("class", "form-control");


        console.log("ini text_nama", text_nama)


        //memasukan text nik ke dalam nik

        nik.appendChild(text_nik);
        nama.appendChild(text_nama);
        // console.log("knt")

        jml++;



    }
</script>