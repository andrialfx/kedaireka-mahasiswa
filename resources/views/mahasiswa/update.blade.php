@extends('mahasiswa.layout')
   
@section('content')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div>
                <h2>Edit Mahasiswa</h2>
            </div>
            <div>
                <a class="btn btn-primary" href="{{ route('mahasiswas.index') }}"> Kembali</a>
            </div>
        </div>
    </div>
   
    @if ($errors->any())
        <div class="alert alert-danger">
            <strong>Whoops!</strong> There were some problems with your input.<br><br>
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
  
    <form action="{{ route('mahasiswas.update', $mahasiswa->id) }}" method="POST">
        @csrf
        @method('PUT')
   
        <div class="row">
            <div class="mb-3">
                 <div class="form-group">
                     <strong>NIM</strong>
                     <input class="form-control" name="student_id" id="student_id"required value="{{$mahasiswa->student_id}}">
                 </div>
            </div>
            <br>
            <div class="mb-3">
                <div class="form-group">
                    <strong>Nama</strong>
                    <input type="text" name="name" id="name" class="form-control"value="{{$mahasiswa->name}}" required>
                </div>
            </div>
            <div class="mb-3">
                <div class="form-group">
                    <strong>Jenis Kelamin</strong>
                    <select name="sex" id="sex" class="form-control">
                        <option value="M" {{ $mahasiswa->sex === "M" ? "selected" : ""}}>Laki-Laki</option>
                        <option value="F" {{ $mahasiswa->sex === "F" ? "selected" : ""}}>Perempuan</option>
                    </select>
                </div>
            </div>
            <div class="mb-3">
                <div class="form-group">
                    <strong>Alamat</strong>
                    <input type="text" name="address" id="address" class="form-control" value="{{$mahasiswa->address}}" required>
                </div>
            </div>
            <div class="mb-3">
                <div class="form-group">
                    <strong>Telp</strong>
                    <input type="text" name="phone" id="phone" class="form-control" value="{{$mahasiswa->phone}}" required>
                </div>
            </div>
            <div class="col-xs-12 text-left mt-3">
                <button type="submit" class="btn btn-success">Edit</button>
            </div>
        </div>
   
    </form>
@endsection