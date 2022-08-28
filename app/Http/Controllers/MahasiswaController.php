<?php

namespace App\Http\Controllers;

use App\Models\Mahasiswa;
use Illuminate\Http\Request;

class MahasiswaController extends Controller
{
    public function index()
    {
        $mahasiswas = Mahasiswa::paginate(10);
        return view('mahasiswa.index', compact('mahasiswas'));
    }

    public function create()
    {
        return view("mahasiswa.create");
    }
    
    public function store(Request $request)
    {
        $mahasiswas = Mahasiswa::create([
            "student_id" => $request->student_id,
            "name" => $request->name,
            "sex" => $request->sex,
            "address" => $request->address,
            "phone" => $request->phone,
        ]);
        
        return redirect()->route('mahasiswas.index');
    }
    
    public function edit($id)
    {
        $mahasiswa = Mahasiswa::findOrFail($id);

        return view("mahasiswa.update", compact("mahasiswa"));
    }

    public function update(Request $request, $id)
    {
        $mahasiswa = Mahasiswa::findOrFail($id);
        $mahasiswa->update([
            "student_id" => $request->student_id ?? $mahasiswa->student_id,
            "name" => $request->name ?? $mahasiswa->name,
            "sex" => $request->sex ?? $mahasiswa->sex,
            "address" => $request->address ?? $mahasiswa->address,
            "phone" => $request->phone ?? $mahasiswa->phone,
        ]);

        return redirect()->route('mahasiswas.index');
    }

    public function destroy($id)
    {
        $mahasiswa = Mahasiswa::findOrFail($id);
        $mahasiswa->delete();

        return redirect()->route('mahasiswas.index');
    }


    public function show(Mahasiswa $mahasiswa)
    {
        //
    }
}
