@extends('layouts.admin')
@section('content')
<div class="content">   
        <div style="margin-bottom: 10px;" class="row">
            <div class="col-lg-12">
                <a class="btn btn-success" href="javascript:void(0)" id="createNewRestaurant">
                    {{ trans('global.add') }} {{ trans('global.restaurant.title_singular') }}
                </a>
            </div>
        </div>  
        <div class="alert alert-danger print-error-msg" style="display:none">
        <ul></ul>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    {{ trans('global.restaurant.title_singular') }} {{ trans('global.list') }}
                </div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table data-table">
                            <thead>
                                <tr>
                                    <th width="10">
                                        No
                                    </th>
                                    <th>
                                        {{ trans('global.restaurant.fields.name') }}
                                    </th>
                                    <th>
                                        {{ trans('global.restaurant.fields.code') }}
                                    </th>
                                    <th>
                                        {{ trans('global.restaurant.fields.phone_no') }}
                                    </th>
                                    <th>
                                        {{ trans('global.restaurant.fields.email') }}
                                    </th>
                                    <!-- <th>
                                        {{ trans('global.restaurant.fields.image') }}
                                    </th> -->
                                    <th>
                                        &nbsp;
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                               
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- add modal -->
    <div class="modal fade" id="ajaxModel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="modelHeading"></h4>
                </div>
                
        
                <div class="modal-body">
                    <form id="resturantForm" name="resturantForm" class="form-horizontal" method="POST" enctype="multipart/form-data">
                        <input type="hidden" name="res_id" id="res_id">
                        <div class="form-group">
                            <label for="name" class="col-sm-2 control-label">Name</label>
                            <div class="col-sm-12">
                                <input type="text" class="form-control" id="name" name="name" placeholder="Enter Name" value="" required="">
                                <span class="name-error" style="color:red"></span>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="code" class="col-sm-2 control-label">Code</label>
                            <div class="col-sm-12">
                                <input type="text" class="form-control" id="code" name="code" placeholder="Enter Code" value="" required="">
                                <span class="code-error" style="color:red"></span>
                            </div>
                        </div>
        
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Description</label>
                            <div class="col-sm-12">
                                <textarea id="description" name="description" required="" placeholder="Enter Description" class="form-control"></textarea>
                                <span class="description-error" style="color:red"></span>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="phone_no" class="col-sm-2 control-label">Phone No</label>
                            <div class="col-sm-12">
                                <input type="text" class="form-control" id="phone_no" name="phone_no" placeholder="Enter PhoneNo" value="" required="">
                                <span class="phone_no-error" style="color:red"></span>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="email" class="col-sm-2 control-label">Email</label>
                            <div class="col-sm-12">
                                <input type="text" class="form-control" id="email" name="email" placeholder="Enter Email" value="" required="">
                                <span class="email-error" style="color:red"></span>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="image" class="col-sm-2 control-label">Image</label>
                            <div class="col-sm-12">
                                <input type="file" class="form-control" id="image" name="image" >
                                <div id="img_prev"></div>
                                <input type="hidden" name="old_filename" value="" id="old_filename">
                                <span class="image-error" style="color:red"></span>
                            </div>
                        </div>
        
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-primary" id="saveBtn" value="create">Save changes
                            </button>
                            <input type="hidden" name="saveBtn" id="saveBtnVal" value="">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@section('scripts')
@parent
<script>
   $(function () {
    $.ajaxSetup({
          headers: {
              'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
          }
    });

    var table = $('.data-table').DataTable({
        processing: true,
        serverSide: true,
        ajax: "{{ route('admin.restaurant.index') }}",
        columns: [
            {data: 'DT_RowIndex', name: 'DT_RowIndex'},
            {data: 'name', name: 'name'},
            {data: 'code', name: 'code'},
            {data: 'phone_no', name: 'phone_no'},
            {data: 'email', name: 'email'},
            // {data: 'image', name: 'image'},
            {data: 'action', name: 'action', orderable: false, searchable: false},
        ]
    });

    $('#createNewRestaurant').click(function () {
        $('#saveBtn').val("create-res");
        $('#saveBtnVal').val("create-res");
        $('#res_id').val('');
        $('#resturantForm').trigger("reset");
        $('#modelHeading').html("Create New Restaurant");
        $('#ajaxModel').modal('show');
    });

    $('body').on('click', '.editRestaurant', function () {
      var res_id = $(this).data('id');
      $.get("{{ url('admin/restaurant') }}" +'/' + res_id +'/edit', function (data) {
          $('#modelHeading').html("Edit Restaurant");
          $('#saveBtn').val("edit-res");
          $('#saveBtnVal').val("edit-res");
          $('#ajaxModel').modal('show');
          $('#res_id').val(data.id);
          $('#name').val(data.name);
          $('#code').val(data.code);
          $('#description').val(data.description);
          $('#phone_no').val(data.phone_no);
          $('#email').val(data.email);
          $("#old_filename").val(data.resimage.image);
                // $("#image-holder").html('');
                // if(value.recipeImage != null){
                //     $("#image-holder").html('<img src="storage/app/public/'+value.recipeImage+'" class="rounded mr-75 thumb-image">');
                // }
        //   $('#img_prev').attr('src', 'http://localhost:8000/storage/app/public/'+ data.resimage.image)
          ;
          $("#img_prev").html('<img src="http://localhost:8000/storage/app/public/'+data.resimage.image+'">');
      })
   });

    $('#saveBtn').click(function (e) {
        e.preventDefault();
        $(this).html('Sending..');
        var formData = new FormData(document.getElementById("resturantForm"));
    
        $.ajax({
            type: "POST",
            data: formData,
            url: "{{ route('admin.restaurant.store') }}",           
            dataType: 'json',
            cache:false,
            contentType: false,
            processData: false,
          success: function (data) {
            console.log(data)
            $('body').find('.name-error').append('This Field is Req')
            $('body').find('.code-error').append('This Field is Req')
            $('body').find('.description-error').append('This Field is Req')
            $('body').find('.phone_no-error').append('This Field is Req')
            $('body').find('.email-error').append('This Field is Req')
            $('body').find('.image-error').append('This Field is Req')
            $('#resturantForm').trigger("reset");
            $('#ajaxModel').modal('hide');
            table.draw();
          },
          error: function (data) {
           
              console.log(data.error);           
              $('#saveBtn').html('Save Changes');
          }
      });
    });

    $('body').on('click', '.deleteRestaurant', function () {
     
     var res_id = $(this).data("id");
     confirm("Are You sure want to delete !");
   
     $.ajax({
         type: "DELETE",
         url: "{{ url('admin/restaurant/destroy') }}"+'/'+res_id,
         success: function (data) {
            table.draw();
         },
         error: function (data) {             
             console.log('Error:', data);
         }
     });
 });

 function printErrorMsg (msg) {
    $(".print-error-msg").find("ul").html('');
    $(".print-error-msg").css('display','block');
    $.each( msg, function( key, value ) {
        $(".print-error-msg").find("ul").append('<li>'+value+'</li>');
    });
}

   });
</script>
@endsection