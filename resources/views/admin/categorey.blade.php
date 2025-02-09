<!DOCTYPE html>
<html>
  <head> 
    @include('admin.css')

    <style type="text/css">

    input[type= 'text']

    {
       width: 200px;
       height: 45px;
      
    }


    .div_deg
    
    {
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .table_deg
    {
      text-align: center;
      margin: auto;
      border: 1px solid skyblue;
      border-radius: 50%;
      margin-top: 50px;
      width: 1000px;
    }
    th
    {
      background-color: skyblue;
      padding: 15px;
      font-size: 25px;
      font-weight: bold;
      color: #D20103;
    }

    td
    {
      color: white;
      padding: 15px;
      border: 1px solid skyblue;
    }


    </style>

    </head>
    <body>
    @include('admin.header')

    @include('admin.Sidebar')
    
      <!-- Sidebar Navigation end-->
      <div class="page-content">
        <div class="page-header">
          <div class="container-fluid">

            <h1 style="color: White;">Add categorey </h1>
          <div class="div_deg">

          

            <form action="{{url('add_categorey')}}" method="post">
                @csrf 

                <div>
                    <input type="text" name="categorey">
                
                    <input class="btn btn-primary" type="submit" value="Add Categorey">
                </div>
            </form>
          </div>

          <div>
            <table class="table_deg">
              <tr>
                <th>Categorey Name</th> 
                <th>Edit</th>
                <th>Delete</th>

              </tr>
             
                @foreach($data as $data)

              <tr>
              <td>{{$data->categorey_name}}</td>
              <td>
                <a class="btn btn-success" href="{{url('edit_categorey',$data->id)}}">Edit</a>
              </td>
              <td>
              <a class="btn btn-danger" onclick="confirmation(event)" href="{{url('delete_categorey',$data->id)}}"> Delete </a>
              </td>
              </tr>
              @endforeach
            </table>
          </div>
      </div>
    </div>
    <!-- JavaScript files-->

   <!-- Delete btn function-->
   <script>
        function confirmation(ev)
        {
          ev.preventDefault();
          var urlToRedirect = ev.currentTarget.getAttribute('href');

          console.log(urlToRedirect);

          swal({

            title:"Are You Sure To Delete This",
            text:"This Delete Will Be Parmanent",
            icon:"warning",
            buttons:true,
            dangerMode:true,

          })
          .then((willCancel)=>
          {
            if(willCancel)
          {
            window.location.href=urlToRedirect;
          }

          });
        }
    </script>
      <!-- End Of Delete btn function-->

    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"
     integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" 
     crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="{{asset('admincss/vendor/jquery/jquery.min.js')}}"></script>
    <script src="{{asset('admincss/vendor/popper.js/umd/popper.min.js')}}"> </script>
    <script src="{{asset('admincss/vendor/bootstrap/js/bootstrap.min.js')}}"></script>
    <script src="{{asset('admincss/vendor/jquery.cookie/jquery.cookie.js')}}"> </script>
    <script src="{{asset('admincss/vendor/chart.js/Chart.min.js')}}"></script>
    <script src="{{asset('admincss/vendor/jquery-validation/jquery.validate.min.js')}}"></script>
    <script src="{{asset('admincss/js/charts-home.js')}}"></script>
    <script src="{{asset('admincss/js/front.js')}}"></script>
  </body>
</html>{{('')}}