<?php

namespace App\Http\Controllers;

use App\Models\Sector;
use Illuminate\Http\Request;
use App\Models\UploadExercise;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;

class UploadExerciseController extends Controller
{
    public function showUploadForm()
    {

        // Obtener nombre de sectores para dropdow de subida de archivos
        $sectors = Sector::orderBy('id')->get();


        return view('exercises.upload', compact('sectors'));
    }

    public function upload(Request $request)
    {

        $result = $request->file('file')->storeOnCloudinary('Upload/Headers');
        $uploadedFileUrl = $result->getSecurePath();

        // Obtener el ID del usuario actualmente autenticado
        $userId = auth()->user()->id;

        // Crear una nueva instancia de UploadExercise y asignar los valores
        $uploadExercise = new UploadExercise();
        $uploadExercise->user_id = $userId;
        $uploadExercise->url = $uploadedFileUrl;

        $fechaEntrega = Carbon::parse($request->input('fecha_entrega'))->setTime(23, 59, 0);
        $uploadExercise->time_max_accept = $fechaEntrega;

        $uploadExercise->suggested_value_usd = $request->input('valor_pagar');

        // Obtener el nombre del sector del formulario
        $sectorName = $request->input('mat_sector');
        $sector = Sector::where('name', $sectorName)->first();
        $uploadExercise->sector_id = $sector->id;

        $uploadExercise->description = $request->input('descripcion');

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
        // Obtener el ID d
        $users = User::orderBy('id')->get();

        // Obtener nombre de sectores para dropdow de subida de archivos
        $sectors = Sector::orderBy('id')->get();

        // Obtener los ejercicios de que estan activos para resolver
        $ejercicios = UploadExercise::whereNull('teacher_id')
            ->orderByDesc('created_at')
            ->get();

        return view('exercises.uploadTeacher', compact('ejercicios', 'sectors', 'users'));
    }

    public function uploadSelectedTeacher()
    {
        // Obtener el ID del profesor actual autenticado
        $profesorID = Auth::id();

        // Obtener nombre de sectores para dropdow de subida de archivos
        $sectors = Sector::orderBy('id')->get();

        // Obtener los ejercicios de que estan activos para resolver
        $ejercicios = UploadExercise::orderByDesc('created_at')->get();

        return view('exercises.uploadSelectedTeacher', compact('ejercicios', 'profesorID', 'sectors'));
    }
}
