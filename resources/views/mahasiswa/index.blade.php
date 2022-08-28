@extends('mahasiswa.layout')
 
@section('content')
    <div class="row mt-5">
        <div class="col-lg-12 margin-tb">
            <div class="float-start">
                <h2>Mahasiswa</h2>
            </div>
            <div class="float-end">
                <a class="btn btn-success" href="{{ route('mahasiswas.create') }}"> Tambah Mahasiswa</a>
            </div>
        </div>
    </div>
   
    @if ($message = Session::get('success'))
        <div class="alert alert-success">
            <p>{{ $message }}</p>
        </div>
    @endif
   
    <table class="table table-bordered">
        <tr>
            <th>No</th>
            <th>NIM</th>
            <th>Nama</th>
            <th>Jenis Kelamin</th>
            <th>Alamat</th>
            <th>Telp.</th>
            <th width="280px">Action</th>
        </tr>
        @foreach ($mahasiswas as $no => $mahasiswa)
        <tr>
            <td>{{ ++$no }}</td>
            <td>{{ $mahasiswa->student_id }}</td>
            <td>{{ $mahasiswa->name }}</td>
            <td>{{ $mahasiswa->sex == "M" ? "Laki-Laki" : "Perempuan"}}</td>
            <td>{{ $mahasiswa->address }}</td>
            <td>{{ $mahasiswa->phone }}</td>
            <td>
                <form action="{{ route('mahasiswas.destroy',$mahasiswa->id) }}" method="POST">
   
                    <a class="btn btn-info" href="{{ route('mahasiswas.show',$mahasiswa->id) }}">Show</a>
    
                    <a class="btn btn-primary" href="{{ route('mahasiswas.edit',$mahasiswa->id) }}">Edit</a>
   
                    @csrf
                    @method('DELETE')
      
                    <button type="submit" class="btn btn-danger">Delete</button>
                </form>
            </td>
        </tr>
        @endforeach
    </table>
    <div class="row text-center">
        {!! $mahasiswas->links() !!}
    </div>
      
@endsection