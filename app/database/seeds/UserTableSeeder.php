<?php

class UserTableSeeder extends Seeder
{

	public function run()
	{
		DB::table('users')->delete();
		User::create(array(
			'username' => 'ashish',
			'password' => Hash::make('ashish123'),
		));
	}

}
