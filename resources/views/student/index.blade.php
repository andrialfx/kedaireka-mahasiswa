@extends('layouts.app')

@push('style')
    @vite('public/assets/vendor/datatables/dataTables.bootstrap4.min.css')
@endpush

@section('content')

    @if ($message = Session::get('success'))
        <div class="alert alert-success">
            <p>{{ $message }}</p>
        </div>
    @endif

    <div class="container-fluid">

        <!-- Page Heading -->
        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-header py-3 d-flex justify-content-between align-items-center">
                <h6 class="m-0 font-weight-bold text-primary">Mahasiswa</h6>
                <a href="{{ route("students.create") }}" class="btn btn-primary">Tambah Mahasiswa</a>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered stripe" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>NIM</th>
                                <th>Nama</th>
                                <th>Jurusan</th>
                                <th>Jenis Kelamin</th>
                                <th>Alamat</th>
                                <th>Telp.</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($students as $no => $student)
                                <tr>
                                    <td>{{ ++$no }}</td>
                                    <td>{{ $student->sid }}</td>
                                    <td>{{ $student->name }}</td>
                                    <td>{{ $student->major }}</td>
                                    <td>{{ $student->sex == 'M' ? 'Laki-Laki' : 'Perempuan' }}</td>
                                    <td>{{ $student->address }}</td>
                                    <td>{{ $student->phone }}</td>
                                    <td class="d-flex">
                                        <a class="btn btn-primary mr-2" href="{{ route('students.edit', $student->id) }}">Edit</a>
                                        <form action="{{ route('students.destroy', $student->id) }}" method="POST">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="btn btn-danger">Hapus</button>
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </div>
@endsection

@push('script')
@vite('public/assets/vendor/datatables/jquery.dataTables.min.js')
@vite('public/assets/vendor/datatables/dataTables.bootstrap4.min.js')
@vite('public/assets/js/demo/datatables-demo.js')
@endpush