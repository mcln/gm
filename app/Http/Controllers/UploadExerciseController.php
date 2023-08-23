<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use CloudinaryLabs\CloudinaryLaravel\Facades\Cloudinary;
use App\Models\UploadExercise;
use Illuminate\Support\Facades\Auth;

class UploadExerciseController extends Controller
{
    public function showUploadForm()
    {
        return view('exercises.upload');
    }

    public function upload(Request $request)
    {
        $result = $request->file('file')->storeOnCloudinary('Upload/Headers');

        // Obtener la URL segura del archivo subido
        $uploadedFileUrl = $result->getSecurePath();

        // Obtener el ID del usuario actualmente autenticado
        $userId = auth()->user()->id;

        // Crear una nueva instancia de UploadExercise
        $uploadExercise = new UploadExercise();
        $uploadExercise->user_id = $userId;
        $uploadExercise->url = $uploadedFileUrl;

        // Guardar el objeto UploadExercise en la base de datos
        $uploadExercise->save();

        return redirect()->back()->with('success', 'Archivo subido correctamente.');
    }

    public function uploadUser()
    {
        // Obtener el ID del usuario actual autenticado
        $usuarioID = Auth::id();

        // Obtener los ejercicios del usuario actual
        $ejercicios = UploadExercise::where('user_id', $usuarioID)
        ->orderByDesc('created_at')
        ->get();

        return view('exercises.uploadUser', compact('ejercicios'));
    }

    public function uploadTeacher()
    {
        // Obtener el ID del profesor actual autenticado
        $profesorID = Auth::id();

        // Obtener los ejercicios de que estan activos para resolver
        $ejercicios = UploadExercise::whereNull('teacher_id')
        ->orderByDesc('created_at')
        ->get();

        return view('exercises.uploadTeacher', compact('ejercicios'));
    }
}
