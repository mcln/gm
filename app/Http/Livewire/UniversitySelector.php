<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Country;
use App\Models\University;
use App\Models\Subject;
use App\Models\Type;
use App\Models\Semester;
use App\Models\ExerciseUniversity;

class UniversitySelector extends Component
{
    public $countries;
    public $universities = [];
    public $subjects = [];
    public $types = [];
    public $semesters = [];
    public $selectedCountry;
    public $selectedUniversity;
    public $selectedSubject;
    public $selectedType;
    public $semesterData = []; // Añadido para almacenar los datos de semestres

    public function mount()
    {
        $this->countries = Country::orderByRaw('id = 41 DESC')->get();
    }

    public function updatedSelectedCountry($countryId)
    {
        $this->universities = University::where('country_id', $countryId)->get();
        $this->subjects = [];
        $this->types = [];
        $this->semesterData = []; // Limpiar datos de semestres
    }

    public function updatedSelectedUniversity($universityId)
    {
        $this->subjects = Subject::where('university_id', $universityId)->get();
        $this->types = [];
        $this->semesterData = []; // Limpiar datos de semestres
    }

    public function updatedSelectedSubject($subjectId)
    {
        $this->types = Type::all();
        $this->semesterData = []; // Limpiar datos de semestres
    }

    public function updatedSelectedType($typeId)
    {
        // Verificar si el tipo es un certamen
        if ($typeId == 1) {
            $exercises = ExerciseUniversity::where('university_id', $this->selectedUniversity)
                ->where('subject_id', $this->selectedSubject)
                ->where('type_id', $typeId)
                ->whereNull('parent_id')
                ->get();

            $semesterIds = $exercises->pluck('semester_id')->unique();

            // Obtener los datos de los semestres junto con los paths de los PDF
            $this->semesterData = $exercises->map(function ($exercise) {
                $header = $exercise->headerExUniversity; // Asume que tienes una relación definida en el modelo
                $semester = $exercise->semester;

                return [
                    'year' => $semester->year,
                    'period' => $semester->period,
                    'image_path' => $header->image_path, // Ruta del PDF
                    'exercise_id' => $exercise->id // ID del ejercicio
                ];
            });
        } else {
            $this->semesterData = [];
        }
    }

    public function render()
    {
        return view('livewire.university-selector');
    }
}
