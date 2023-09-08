<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\User_detail;
use Illuminate\Support\Facades\Auth;

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

    public function showUpdateForm()
    {
        $userId = Auth::user()->id;

        // Verificar si el usuario cumple con los criterios
        $user = User::where('id', $userId)
            ->whereIn('type', ['Profesor', 'Ambos'])
            ->first();

        if (!$user) {
            // Usuario no cumple con los criterios, redirigir a página de error 404
            abort(404);
        }

        $user_details = User_Detail::where('user_id', Auth::user()->id)->first();
        return view('profile.update-profile-teacher', compact('user_details'));
    }

    public function updateProfileTeacher(Request $request)
    {

        $request->validate([
            'about' => 'required',
            'specialty' => 'required',
            'masters_diplomas' => 'required',
            'experience' => 'required',
        ], [
            'about.required' => 'El campo "Acerca de mí" es obligatorio.',
            'specialty.required' => 'El campo "Especialista en" es obligatorio.',
            'masters_diplomas.required' => 'El campo "Másters o diplomas" es obligatorio.',
            'experience.required' => 'El campo "Experiencia" es obligatorio.',
        ]);

        if ($request->fails()) {
            return redirect()->back()->withErrors($request->errors())->withInput();
        }

        // Obtener el usuario autenticado
        $userId = auth()->user()->id;

        // Obtener los datos del formulario
        $about = $request->input('about');
        $specialty = $request->input('specialty');
        $masters_diplomas = $request->input('masters_diplomas');
        $experience = $request->input('experience');

        $userDetail = User_detail::where('user_id', $userId)->first();

        if ($userDetail) {
            $userDetail->about = $about;
            $userDetail->specialty = $specialty;
            $userDetail->masters_diplomas = $masters_diplomas;
            $userDetail->experience = $experience;
            $userDetail->save();
        } else {
            $userDetail = new User_detail();
            $userDetail->user_id = $userId;
            $userDetail->about = $about;
            $userDetail->specialty = $specialty;
            $userDetail->masters_diplomas = $masters_diplomas;
            $userDetail->experience = $experience;

            // Asociar el detalle de usuario al usuario actual
            $userDetail->save();
        }

        // Redirigir a una página de éxito o a donde desees
        return redirect()->back()->with('success', 'Archivo subido correctamente.');
    }
}
