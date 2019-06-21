<?php


namespace App\Http\Controllers;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use App\Save;

class UserController extends Controller
{

    public function store(Request &$request){
    $name = $request->input('name');
    $content = $request->input('content');
        if ($name) {
            $information = new Save;
            $information->name = $name;
            $information->content = $content;
            $information->save();
                return redirect('/');
        }
        $users = DB::table('Save')
            ->where('name', $name)
            ->get();
        return view('name', ['name'=> $name]);
    }


}