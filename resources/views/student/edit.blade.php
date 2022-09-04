@extends('layouts.app')
   
@section('content')

    <div class="card-header py-3 d-flex justify-content-between align-items-center">
        <h1 class="h3 mb-2 text-gray-800">Edit Mahasiswa</h1>
        <a class="btn btn-primary" href="{{ route('students.index') }}"> Kembali</a>
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

                <form action="{{ route('students.update', $student->id) }}" method="post">
                    @csrf
                    @method('put')
                    <div class="mb-3">
                        <label for="sid" class="form-label">NIM</label>
                        <input type="text" class="form-control" id="sid" name="sid" value="{{$student->sid}}">
                    </div>
                    <div class="mb-3">
                        <label for="name" class="form-label">Nama</label>
                        <input type="text" class="form-control" id="name" name="name" value="{{$student->name}}">
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
                            <option value="M" {{ $student->sex === "M" ? "selected" : ""}}>Laki-Laki</option>
                            <option value="F" {{ $student->sex === "F" ? "selected" : ""}}>Perempuan</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="address" class="form-label">Alamat</label>
                        <input type="text" class="form-control" id="address" name="address" value="{{$student->address}}">
                    </div>
                    <div class="mb-3">
                        <label for="phone" class="form-label">No. Telepon</label>
                        <input type="text" class="form-control" id="phone" name="phone" value="{{$student->phone}}">
                    </div>
                    <button class="btn btn-primary" type="submit">Edit</button>
                </form>

            </div>
        </div>
    </div>
</div>
@endsection