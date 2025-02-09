<!DOCTYPE html>
<html>

<head>
  @include('home.css')
  <style>
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

    .cart_value
    {
      text-align: center;
      margin-bottom: 70px;
      padding: 18px;
      color: green;
    }

    .order_deg
    {
      padding-left: 500px;
      margin-top: -50px;
    }

    label
    {
      display: inline-block;
      width: 150px;
    }
    
    .div_gap
    {
      padding: 20px;  
    }

  </style>
</head>

<body>
  <div class="hero_area">
    <!-- header section strats -->
    @include('home.header')

    
    <!-- end header section -->
    
  </div>

  

  <div class="div_deg">
    <table>
        <tr>
            <th>Product Title</th>
            <th>price</th>
            <th>Image</th>
            <th>Remove</th>
        </tr>

        <?php
          $value = 0;
        ?>

@foreach($cart as $cart)
        <tr>
            <td>{{$cart->product->title}}</td>
            <td>{{$cart->product->price}}</td>
            <td>
                <img width="150" src="/products/{{$cart->product->image}}">
            </td>
            <td>
              <a class="btn btn-danger" href="{{url('remove_cart',$cart->id)}}">Remove From Cart </a>
            </td>
        </tr>


        <?php
          $value = $value+$cart->product->price;
        ?>
 @endforeach
    </table>
  </div>

  <div class="cart_value">
    <h3>Total Price Of Cart Is: RS {{$value}}</h3>
  </div>

  <div class="order_deg">
    <form action="{{url('confirm_order')}}" method="post">
@csrf
      <div class="div_gap">
        <label>Reciver Name</label>
        <input type="text" name="name" value="{{Auth::user()->name}}">
      </div>

      
      <div class="div_gap">
        <label>Reciver Address</label>
        <textarea name="address">"{{Auth::user()->address}}"</textarea>
      </div>

      
      <div class="div_gap">
        <label>Reciver Phone</label>
        <input type="text" name="phone" value="{{Auth::user()->phone}}">
      </div>

      
      <div class="div_gap">
        <input class="btn btn-primary" type="submit" value="Cash On Delivery">

      
      </div>


    </form>
  </div>




  

  <!-- info section -->
  @include('home.footer')
   <!-- end info section -->

</body>

</html>