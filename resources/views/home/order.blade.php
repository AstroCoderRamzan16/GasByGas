<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
  @include('home.css')

  <style>

    .div_center
    {
        display: flex;
        justify-content: center;
        align-items: center;
        margin: 60px;
    }

    .div_deg
    {
        display: flex;
        justify-content: center;
        align-items: center;
        margin: 60px;
    }

    table
    {
        border: 3px solid red;
        text-align: center;
        width: 800px;
    }

    th
    {
        border: 3px solid red;
        text-align: center;
        color: green;
        font: 20px;
        font-weight: bold;
        background-color: black;
    }

    td
    {
        border: 3px solid skyblue;
    }

    

    

  </style>
</head>
<body>
<div class="hero_area">
    <!-- header section strats -->
    @include('home.header')

        <div class="div_center">
            <table>
                <tr>
                    <th>Product Name </th>
                    <th>Gas Categorey </th>
                    <th>Product Price </th>
                    <th>Delivery Status </th>
                    <th>Product Image </th>
                </tr>
@foreach($order as $order)
                <tr>
                    <td>{{$order->product->title}}</td>
                    <td>{{$order->product->categorey}}</td>
                    <td>{{$order->product->price}}</td>
                    <td>{{$order->status}}</td>
                    <td>
                        <img height="200" width="200"  src="products/{{$order->product->image}}">
                    </td>
                </tr>
@endforeach
            </table>
        </div>


    @include('home.footer')
</body>
</html>