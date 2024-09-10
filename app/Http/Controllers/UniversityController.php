<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\HeaderExUniversity;

class UniversityController extends Controller
{
    /**
     * Muestra la vista con el componente Livewire para seleccionar universidades.
     *
     * @return \Illuminate\View\View
     */
    public function index()
    {
        return view('universities.index'); // La vista donde se incluye el componente Livewire
    }

    public function showCertamen($exercise_id)
    {
        $header = HeaderExUniversity::where('exercise_university_id', $exercise_id)->firstOrFail();

        return view('universities.certamen', [
            'header' => $header,
        ]);
    }
}
