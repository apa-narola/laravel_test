<?php

class UserController extends \BaseController {

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    protected $layout = 'layouts.master';

    public function index() {
        //
        //$users = User::all();
        $users = User::paginate(5);

        $this->layout->content = View::make('users.index', compact('users'));
        //return View::make('users.index', compact('users'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create() {
        //
        $this->layout->content = View::make('users.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store() {
        //
        $input = Input::all();
        $validation = Validator::make($input, User::$rules);

        if ($validation->passes()) {
            User::create($input);

            return Redirect::route('users.index')->with('message', 'New User added successfully');
            ;
        }

        return Redirect::route('users.create')
                        ->withInput()
                        ->withErrors($validation)
                        ->with('message', 'There were validation errors.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id) {
        //
        $user = User::find($id);
        if (is_null($user)) {
            return Redirect::route('users.index');
        }
        $this->layout->content = View::make('users.show', compact('user'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id) {
        //
        $user = User::find($id);
        if (is_null($user)) {
            return Redirect::route('users.index');
        }
        $this->layout->content = View::make('users.edit', compact('user'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function update($id) {
        //
        $input = Input::all();
        $validation = Validator::make($input, User::$rules);
        if ($validation->passes()) {
            $user = User::find($id);
            $user->update($input);
            Redirect::route('users.show', $id)->with('message', 'User updated successfully');
        }
        return Redirect::route('users.edit', $id)
                        ->withInput()
                        ->withErrors($validation)
                        ->with('message', 'There were validation errors.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id) {
        //
        User::find($id)->delete();
        return Redirect::route('users.index')->with('message', 'User deleted successfully');
        ;
    }
    
    

}