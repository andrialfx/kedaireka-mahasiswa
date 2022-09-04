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
                <h6 class="m-0 font-weight-bold text-primary">Jumlah Mahasiswa</h6>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered stripe" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Nama Jurusan</th>
                                <th>Jumlah Mahasiswa</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($majors as $no => $major)
                                <tr>
                                    <td>{{ ++$no }}</td>
                                    <td>{{ $major->name }}</td>
                                    <td>{{ $major->count}}</td>
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