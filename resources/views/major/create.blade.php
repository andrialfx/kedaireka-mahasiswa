@extends('layouts.app')
   
@section('content')

    <div class="card-header py-3 d-flex justify-content-between align-items-center">
        <h1 class="h3 mb-2 text-gray-800">Tambah Jurusan</h1>
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

                <form action="{{ route('majors.store') }}" method="post">
                    @csrf
                    <div class="mb-3">
                        <label for="name" class="form-label">Nama</label>
                        <input type="text" class="form-control" id="name" name="name">
                    </div>
                    <div class="mb-3">
                        <label for="description" class="form-label">Deskripsi</label>
                        <textarea type="text" class="form-control" id="description" name="description"></textarea>
                    </div>
                    <button class="btn btn-primary" type="submit">Tambah</button>
                </form>

            </div>
        </div>
    </div>
</div>
@endsection