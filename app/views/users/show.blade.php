@section('content')
<h1>View User</h1>

<p>{{ link_to_route('users.index', 'List users') }}</p>

@if ($user->count())
    <table class="table table-striped table-bordered">
        <tbody>
		<tr>
                <th>Username</th><td>{{ $user->username }}</td>
				</tr>
        <tr><th>Password</th><td>{{ $user->password }}</td></tr>
        <tr><th>Email</th><td>{{ $user->email }}</td></tr>
        <tr><th>Phone</th><td>{{ $user->phone }}</td></tr>
        <tr><th>Name</th><td>{{ $user->name }}</td>  </tr>
        </thead>
           
              
        </tbody>
      
    </table>
@else
    There are no user
@endif

@stop