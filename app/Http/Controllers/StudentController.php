<?php

namespace App\Http\Controllers;

use App\Models\Major;
use App\Models\Student;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class StudentController extends Controller
{
    public function index()
    {
        // $students = Student::get();
        
        
        $students = DB::table('students')
            ->join('majors', 'students.major_id', '=', 'majors.id')
            ->select('students.*', 'majors.name as major')
            ->orderBy('students.name')
            ->get();
        return view('student.index', compact('students'));
    }

    public function create()
    {
        $majors = Major::get();
        return view("student.create", compact('majors'));
    }
    
    public function store(Request $request)
    {
        $students = Student::create([
            "sid" => $request->sid,
            "name" => $request->name,
            "major_id" => $request->major_id,
            "sex" => $request->sex,
            "address" => $request->address,
            "phone" => $request->phone,
        ]);
        
        return redirect()->route('students.index');
    }
    
    public function edit($id)
    {
        $student = Student::findOrFail($id);
        $majors = Major::get();

        return view("student.edit", compact("student", "majors"));
    }

    public function update(Request $request, $id)
    {
        $student = Student::findOrFail($id);
        $student->update([
            "student_id" => $request->student_id ?? $student->student_id,
            "name" => $request->name ?? $student->name,
            "sex" => $request->sex ?? $student->sex,
            "address" => $request->address ?? $student->address,
            "phone" => $request->phone ?? $student->phone,
            "major_id" => $request->major_id ?? $student->major_id,
        ]);

        return redirect()->route('students.index');
    }

    public function destroy($id)
    {
        $student = Student::findOrFail($id);
        $student->delete();

        return redirect()->route('students.index');
    }


    public function show(Student $student)
    {
        //
    }
}
