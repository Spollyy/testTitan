<?php

class HomeController extends BaseController {

	/*
	|--------------------------------------------------------------------------
	| Default Home Controller
	|--------------------------------------------------------------------------
	|
	| You may wish to use controllers instead of, or in addition to, Closure
	| based routes. That's great! Here is an example controller method to
	| get you started. To route to this controller, just add the route:
	|
	|	Route::get('/', 'HomeController@showWelcome');
	|
	*/

	public function showWelcome()
	{
        $first = User::orderBy('created_at', 'asc')->first();
        $last = User::orderBy('created_at','desc')->first();
        $total = count(User::all());
		return View::make('hello')->with(['total' => $total, 'last' => $last, 'first' => $first]);
	}

    public function postReg() {
      $input = Input::all();
        $rules = [
            'login' => 'required',
            'email' => 'required|email|unique:users',
            'password' => 'required|min:6',
        ];
        $v = Validator::make($input, $rules);
        if($v->fails()) {
            return Redirect::to('/')->withErrors($v);
        }
        $u = new User();
        $u->login = $input['login'];
        $u->email = $input['email'];
        $u->password = Hash::make($input['password']);
        $u->date = time();
        $u->save();
        return Redirect::to('/')->withAlert("Registred");
    }
}
