<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <center>
        <h3>Customer Name : {{$data->name}}</h3>
        <h3>Customer address: {{$data->rec_address}}</h3>
        <h3>Customer Phone  : {{$data->phone}}</h3>
        <br>
        <h2>Product Title : {{$data->product->title}}</h2>
        <h2>Gas categorey : {{$data->product->categorey}}</h2>
        <h2>Gas total Price: {{$data->product->price}}</h2>
    </center>
</body>
</html>