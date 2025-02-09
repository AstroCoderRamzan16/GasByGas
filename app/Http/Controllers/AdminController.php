<?php

namespace App\Http\Controllers;

use App\Http\Middleware\Admin;
use Illuminate\Http\Request;

use App\Models\Categorey;
use App\Models\Product;
use App\Models\Order;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Support\Facades\Redirect;

class AdminController extends Controller
{


   public function view_categorey()
   {
     $data = Categorey::all();

    return view('admin.categorey',compact('data'));
   }


   public function add_categorey(Request $request)
   {

    $Categorey =new Categorey;

    $Categorey->categorey_name = $request->categorey;

    $Categorey->save();

    toastr()->timeOut(20000)->closeButton()->addSuccess('Your Categorey Added successfully.');

    return redirect()->back();
   }



   public function delete_categorey($id)
   {
      $data = Categorey::find($id);

      $data->delete();

      toastr()->timeOut(20000)->closeButton()->addSuccess('Categorey Deleted successfully.');

      return redirect()->back();

   }


   public function edit_categorey($id) 
   {
      $data = Categorey::find($id);
      return view('admin.edit_categorey',compact('data'));
   }

   public function update_categorey(Request $request,$id)
   {
      $data = categorey::find($id);

      $data->categorey_name = $request->categorey;

      $data->save();

      toastr()->timeOut(20000)->closeButton()->addSuccess('Categorey Updated successfully.');

      return redirect('/view_categorey');


   }

   public function add_product()
   {
      $categorey = Categorey::all();

      return view('admin.add_product',compact('categorey'));
   }

   public function upload_product(Request $request)
   {
         $data = new Product();
         $data->title = $request->title;
         $data->description = $request->description;
         $data->price= $request->price;
         $data->quantity = $request->qty;
         $data->categorey = $request->categorey;

         $image = $request->image;
         if($image)
         {
            $imagename = time().'.'.$image->getClientOriginalExtension();

            $request->image->move('products',$imagename);

            $data->image = $imagename;
         }
      
         $data->save();

         toastr()->timeOut(20000)->closeButton()->addSuccess('Product added successfully');


         return redirect()->back();



   }


   public function view_product() 
   
   {
      $product = Product::paginate(5);
      return view('admin.view_product',compact('product'));
   }


   public function delete_product($id)
   {
      $data = Product::find($id);

      $image_path = public_path('products/'.$data->image);

      if(file_exists($image_path))
      {
         unlink($image_path);
      }


      $data->delete();

      toastr()->timeOut(20000)->closeButton()->addSuccess('Product Deleted successfully');

      return redirect()->back();
   } 

   public function update_product($id)
   {
      $data = Product::find($id);
      $categorey = Categorey::all();
      return view('admin.update_product',compact('data','categorey'));
   }

   public function edit_product(Request $request,$id)
   {
      $data = Product::find($id);

      $data->title = $request->title;
      $data->description = $request->description;
      $data->price = $request->price;
      $data->quantity = $request->quantity;
      $data->categorey = $request->Categorey;

      $image = $request->image;

      if($image)
      {
         $imagename = time().'.'.$image->getClientOriginalExtension();

         $request->image->move('products',$imagename);

         $data->image = $imagename;
      }


      $data->save();

      toastr()->timeOut(20000)->closeButton()->addSuccess('Product Updated successfully.');

      return redirect('/view_product');
   }


   public function product_search(Request $request)
   {
         $search = $request->search ;

         $product = Product::where('title','LIKE','%'.$search.'%')->orWhere('categorey','LIKE','%'.$search.'%')->paginate(3);

         return view('admin.view_product',compact('product'));
   }

   public function view_orders()
   {
      $data = Order::all();
      return view('admin.order',compact('data'));

   }

   public function on_the_way($id)
   {
      $data = Order::find($id);

      $data->status = "On the way";

      $data->save();

      return redirect('/view_orders');
   }


   public function delivered($id)
   {
      $data = Order::find($id);

      $data->status = "Delivered";

      $data->save();

      return redirect('/view_orders');
   }


   public function print_pdf($id)
   {
      $data = Order::find($id);
      $pdf = Pdf::loadView('admin.invoice',compact('data'));
      return $pdf->download('invoice.pdf');
      
   }






}
   


