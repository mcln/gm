<?php

namespace App\Http\Controllers;

use App\Models\DevelopmentExUniversity;
use App\Models\Exercise;
use App\Models\HeaderExUniversity;
use Illuminate\Http\Request;

class UniversityExerciseController extends Controller
{
    public function show(Exercise $exercise)
    {
        // Obtener el header del ejercicio
        $header_exercise = HeaderExUniversity::where('exercise_id', $exercise->id)->first();
        
        // Obtener los desarrollos del ejercicio
        $development_exercises = DevelopmentExUniversity::where('exercise_id', $exercise->id)->oldest()->get();

        // Retornar la vista con los datos obtenidos
        return view('university_exercises.show', compact('exercise', 'header_exercise', 'development_exercises'));
    }
}