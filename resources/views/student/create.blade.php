@extends('layouts.app')
  
@section('content')
<div class="card-header py-3 d-flex justify-content-between align-items-center">
    <h1 class="h3 mb-2 text-gray-800">Tambah Mahasiswa</h1>
    <a class="btn btn-primary" href="{{ route('majors.index') }}"> Kembali</a>
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

<div class="row">
    <div class="col-md-6">
        <div class="card shadow mb-4">
            <div class="card-header py-3">

                <form action="{{ route('students.store') }}" method="post">
                    @csrf
                    <div class="mb-3">
                        <label for="sid" class="form-label">NIM</label>
                        <input type="number" class="form-control" id="sid" name="sid">
                    </div>
                    <div class="mb-3">
                        <label for="name" class="form-label">Nama</label>
                        <input type="text" class="form-control" id="name" name="name">
                    </div>
                    <div class="input-groups mb-3">
                        <label for="major_id">Jurusan</label>
                        <select name="major_id" id="major_id" class="form-control">
                            @foreach ($majors as $major)
                                    <option value="{{ $major->id }}">{{ $major->name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="sex" class="form-label">Jenis Kelamin</label>
                        <select name="sex" id="sex" class="form-control">
                            <option value="M">Laki-Laki</option>
                            <option value="F">Perempuan</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="address" class="form-label">Alamat</label>
                        <input type="text" class="form-control" id="address" name="address">
                    </div>
                    <div class="mb-3">
                        <label for="phone" class="form-label">No. Telepon</label>
                        <input type="text" class="form-control" id="phone" name="phone">
                    </div>
                    <button class="btn btn-primary" type="submit">Tambah</button>
                </form>

            </div>
        </div>
    </div>
</div>
@endsection