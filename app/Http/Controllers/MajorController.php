<?php

namespace App\Http\Controllers;

use App\Models\Major;
use App\Models\Student;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class MajorController extends Controller
{
    public function index()
    {
        $majors = Major::orderBy('name')->get();
        
        return view('major.index', compact('majors'));
    }

    public function create()
    {
        $majors = Major::get();
        return view("major.create", compact('majors'));
    }

    public function store(Request $request)
    {
        $majors = Major::create([
            "name" => $request->name,
            "description" => $request->description
        ]);

        return redirect()->route('majors.index');
    }

    public function edit($id)
    {
        $major = Major::findOrFail($id);

        return view("major.edit", compact("major"));
    }

    public function update(Request $request, $id)
    {
        $major = Major::findOrFail($id);
        $major->update([
            "name" => $request->name ?? $major->name,
            "description" => $request->description ?? $major->description
        ]);

        return redirect()->route('majors.index');
    }

    public function destroy($id)
    {
        $major = Major::findOrFail($id);
        $major->delete();

        return redirect()->route('majors.index');
    }


    public function show(Major $major)
    {
        //
    }

    public function count()
    {
        $majors = DB::table('students')
            ->join('majors', 'students.major_id', '=', 'majors.id')
            ->selectRaw('COUNT(students.id) as count, majors.*')
            ->groupBy('students.major_id')
            ->get();
        return view('major.count', compact('majors'));
    }
}
    