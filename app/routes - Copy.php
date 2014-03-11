<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/


Route::get('/', function()
{
	return View::make('hello');
});

Route::get('first/page', function() {
    return 'First!';
});

Route::get('second/page', function() {
    return 'Second!';
});

Route::get('third/page', function() {
    return 'Potato!';
});
/*Route::get('/books', function()
{
    return 'Books index.';
});

Route::get('/books/{genre}', function($genre)
{
    return "This Book is in the {$genre} category.";
});
Route::get('/books/{genre?}', function($genre = null)
{
    if ($genre == null) return 'Books index.';
    return "Books in the {$genre} category.";
});
*/

/*
If we don't want the value of a route parameter to be null by default, we can specify an alternative using assignment. For example:
*/
/*
Route::get('/books/{genre?}', function($genre = 'Crime')
{
    return "Books in the {$genre} category.";
});
*/
/* render view by routing */

/*
Route::get('/Simple', function()
{
    return View::make('ashish_templates.simple'); //or
    //return View::make('ashish_templates/simple');
});*/

Route::get('/Simple/{squirrel?}', function($squirrel="default")
{
    $data['squirrel'] = $squirrel;
	return View::make('ashish_templates.simple',$data);
    
});

Route::get('first', function()
{
    return 'First route.';
});

Route::get('second', function()
{
    return 'Second route.';
});

Route::get('first', function()
{
    return Redirect::to('second');
});

Route::get('books', function()
{
    if (Auth::guest()) return Redirect::to('login');

    // Show books to only logged in users.
});
Route::get('custom/response', function()
{
    $response = Response::make('Hello world!', 200);
    $response->headers->set('our key', 'our value');
	//var_dump($response->headers);
    return $response;
});
Route::get('markdown/response', function()
{
    $response = Response::make('***some bold text***', 200);
    $response->headers->set('Content-Type', 'text/x-markdown');
    return $response;
});

Route::get('/filter_test', array(
    'before'    => 'birthday:foo,bar',
    function()
    {
       return View::make('ashish_templates.simple');
    }
));

Route::get('article/index', 'ArticleController@showIndex');
Route::get('article/single/{genere?}', 'ArticleController@showSingle');
Route::get('example', function()
{
	$data["squirrel"] = "Gray squirrel";
    return View::make('example',$data);
});
//echo $environment = App::environment();


## photo controller
Route::resource('photo', 'PhotoController',
                array('only' => array('index', 'show')));*/
## Users controller
Route::resource('users', 'UserController');				

Route::get('profile', array('before' => 'auth.basic', function()
{
return "only authenticated users may enter.";
    // Only authenticated users may enter...
}));