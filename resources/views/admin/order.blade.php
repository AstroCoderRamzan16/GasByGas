<!DOCTYPE html>
<html>
  <head> 
    @include('admin.css')
    <style>
        table
        {
            border: 2px solid skyblue;
            text-align: center;
        }

        th 
        {
            background-color: skyblue;
            padding: 10px;
            font: 20px;
            font-weight: bold;
            text-align: center;
            color: white;
        }

        td
        {
            color: white;
            padding: 10px;
            border: 2px solid skyblue;
        }

        .table_center
        {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        h1
        {
            color: red;
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

            <h1>All Orders & Payment</h1>

            <br>
            <br>

<div class="table_center">
         <table>
            <tr>
                <th>Cutomer Name</th>
                <th>Cutomer Location</th>
                <th>Cutomer Phone</th>
                <th>Product Tiltle</th>
                <th>Product Price</th>
                <th>Product Image</th>
                <th>Status</th>
                <th>Change Status</th>
                <th>Print PDF</th>
                <th>Payment Status</th>
            </tr>
@foreach($data as $data)
            <tr>
                <td>{{$data->name}}</td>
                <td>{{$data->rec_address}}</td>
                <td>{{$data->phone}}</td>
                <td>{{$data->product->categorey}}</td>
                <td>{{$data->product->price}}</td>
                
               
                <td>

                    <img width = "80"  src ="products/{{$data->product->image}}">

                </td>

                <td>
                    @if($data->status == 'in progress')
                        <span style="color: red;">{{$data->status}}</span>

                        @elseif($data->status == 'On the way')

                        <span style="color: yellow;">{{$data->status}}</span>

                    @else
                    <span style="color: green;">{{$data->status}}</span>

                    @endif
                </td>
                <td>
                    <a class="btn btn-primary" href="{{url('on_the_way',$data->id)}}">on The Way</a>
                    <a class="btn btn-success" href="{{url('delivered',$data->id)}}">Delivered</a>
            </td>


            <td >
                <a class="btn btn-secondary" href="{{url('print_pdf',$data->id)}}">Print Pdf</a>
            </td>

            <td>{{$data->payment_status}}</td>
                    
            </tr>
@endforeach
         </table>
</div>








          </div>
      </div>
    </div>
    <!-- JavaScript files-->
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