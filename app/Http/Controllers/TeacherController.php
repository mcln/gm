<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class TeacherController extends Controller
{
    public function show($id)
    {
        $teacher = User::findOrFail($id);
        
        // Verificar si el usuario es un teacher
        if ($teacher->type !== 'Profesor' && $teacher->type !== 'Ambos') {
            abort(404);
        }
        
        return view('profile.teacher', compact('teacher'));
    }
}
