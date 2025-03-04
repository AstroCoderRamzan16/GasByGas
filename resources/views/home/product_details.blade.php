<!DOCTYPE html>
<html>

<head>
  @include('home.css')
  <style type="text/css">
    .div_center
    {
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 30px;
    }

    .detail-box
    {
        padding: 15px;
    }
  </style>
</head>

<body>
  <div class="hero_area">
    <!-- header section strats -->
    @include('home.header')

    
    <!-- end header section -->
  </div>
<!--Product Details Start-->
<section class="shop_section layout_padding">
    <div class="container">
      <div class="heading_container heading_center">
        <h2>
          Price List
        </h2>
      </div>
      <div class="row">

    
        <div class=" col-md-12 ">
          <div class="div_center">
              <div class="img-box">
                <img width="400" src="/products/{{$data->image}}" alt="">
              </div>
              <div class="detail-box">
                <h6>{{$data->title}}</h6>
                <h6>
                  Price
                  <span>
                  {{$data->price}}
                  </span>
          </div>

          <div class="detail-box">
                <h6>categorey:{{$data->categorey}}</h6>
                <h6>
                  Available Quantity
                  <span>
                  {{$data->quantity}}
                  </span>
                </h6>      
          </div>

          <div class="detail-bx">
            <p>{{$data->description}}</p>
          </div>

          <div class="detail-bx">
          <a class="btn btn-primary" href="{{url('add_cart',$data->id)}}">Add To Cart</a>
          </div>

        </div>
    </div>
  </section>

<!--Product Details End -->

  <!-- info section -->
  @include('home.footer')
   <!-- end info section -->

</body>

</html>