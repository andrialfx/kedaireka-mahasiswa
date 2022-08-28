@extends('mahasiswa.layout')
  
@section('content')
<div class="row">
    <div class="col-lg-12 margin-tb">
        <div>
            <h2>Tambah Mahasiswa Baru</h2>
            <h5></h5>
        </div>
        <div>
            <a class="btn btn-primary" href="{{ route('mahasiswas.index') }}"> Kembali</a>
        </div>
        <br>
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
   
<form action="{{ route('mahasiswas.store') }}" method="POST">
    @csrf
  
     <div class="row">
        <div class="mb-3">
             <div class="form-group">
                 <strong>NIM</strong>
                 <input class="form-control" name="student_id" id="student_id" placeholder=" Masukkan NIM" required>
             </div>
        </div>
        <br>
        <div class="mb-3">
            <div class="form-group">
                <strong>Nama</strong>
                <input type="text" name="name" id="name" class="form-control" placeholder="Masukkan Nama" required>
            </div>
        </div>
        <div class="mb-3">
            <div class="form-group">
                <strong>Jenis Kelamin</strong>
                <select name="sex" id="sex" class="form-control">\
                    <option value="M">Laki-Laki</option>
                    <option value="F">Perempuan</option>
                </select>
            </div>
        </div>
        <div class="mb-3">
            <div class="form-group">
                <strong>Alamat</strong>
                <input type="text" name="address" id="address" class="form-control" placeholder="Masukkan Nama" required>
            </div>
        </div>
        <div class="mb-3">
            <div class="form-group">
                <strong>Telp</strong>
                <input type="text" name="phone" id="phone" class="form-control" placeholder="Masukkan Nama" required>
            </div>
        </div>
        <div class="col-xs-12 text-left mt-3">
            <button type="submit" class="btn btn-success">Tambah</button>
        </div>
    </div>
   
</form>
@endsection