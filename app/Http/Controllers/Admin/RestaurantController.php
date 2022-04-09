<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
// use App\Http\Requests\RestaurantRequest;
use App\Restaurant;
use App\RestaurantImage;
use DataTables, File;
use Validator;

class RestaurantController extends Controller
{
   
    public function index(Request $request)
    {       
        if ($request->ajax()) {
            $data = Restaurant::with('resimage')->get();
            // print_r($data);
            return Datatables::of($data)
            ->addIndexColumn()
            ->addColumn('action', function($row){

                    $btn = '<a href="javascript:void(0)" data-toggle="tooltip"  data-id="'.$row->id.'" data-original-title="Edit" class="edit btn btn-primary btn-sm editRestaurant">Edit</a>';

                    $btn = $btn.' <a href="javascript:void(0)" data-toggle="tooltip"  data-id="'.$row->id.'" data-original-title="Delete" class="btn btn-danger btn-sm deleteRestaurant">Delete</a>';

                    return $btn;
            })
            ->editColumn('image', function($row) {
                if ($row->resimage->image != '') {
                    return "<a href=".url('/storage/app/public/'.$row->resimage->image)." target='_blank'><image src = ".url('/storage/app/public/'.$row->resimage->image)." width='50px'></a>";
                }
            })
            ->rawColumns(['action', 'image'])
            ->make(true);
        }
        return view('admin/restaurant/index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'code' => 'required',
            'email' => 'required|email',
            'description' => 'required',
            'phone_no' => 'required',
            'image' => 'required',
        ]);

        if ($validator->passes()) {
        
        // print_r($request->all()); exit;
            if($request->saveBtn == 'create-res') {
                $resdata = Restaurant::create(['name' => $request->name, 'code' => $request->code, 'description' => $request->description, 'phone_no' => $request->phone_no, 'email' => $request->email]);        

                if($request->hasFile('image')){
                    $imageName =  $request->file('image')->store('restaurantImage','public');
                }
                RestaurantImage::create(['restaurant_id' => $resdata->id, 'image' => $imageName]);
            } else {

                $resdata = Restaurant::where('id', $request->res_id)->update(['name' => $request->name, 'code' => $request->code, 'description' => $request->description, 'phone_no' => $request->phone_no, 'email' => $request->email]);        

                if($request->hasFile('image'))
                {
                    $oldfile_name = $request->input('old_filename');
                    $image = $request->file('image');
                    $imageName =  $request->file('image')->store('restaurantImage', 'public');
                    if(isset($getOldImage->recipeImage)){
                        $filePath = asset('storage/app/public/');
                        if(!File::exists($filePath."/".$getOldImage->recipeImage)){
                            // unlink('storage/app/public/'.$getOldImage->recipeImage);
                            File::delete('storage/app/public/'.$getOldImage->recipeImage);
                        }
                    }
                }else{
                    $imageName = $request->input('old_filename');
                }

                RestaurantImage::where('restaurant_id', $request->res_id)->update(['image' => $imageName]);
                
            } 
            
            return response()->json(['success'=>'Restaurant saved successfully.']);
        } else {
            return response()->json(['error'=>$validator->errors()->all()]);
        }        
               
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $res = Restaurant::with('resimage')->find($id);      
        return response()->json($res);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $getOldImage = RestaurantImage::where('restaurant_id', $id)->first();
        if($getOldImage){
            $destinationPath = 'public/storage/';
            $image_path = public_path().'/storage'.'/'.$getOldImage->image;
            unlink($image_path);            
        }        

        RestaurantImage::where('restaurant_id', $id)->delete();
        Restaurant::find($id)->delete();
     
        return response()->json(['success'=>'Restaurant deleted successfully.']);
    }
}
