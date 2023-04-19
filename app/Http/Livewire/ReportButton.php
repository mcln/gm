<?php

namespace App\Http\Livewire;

use App\Models\Exercise_report;
use Livewire\Component;

class ReportButton extends Component
{
    public $showModal;
    public $description_error;
    public $exercise;
    public $successMessage = null;
    public $showForm = true;
    public $showSuccessMessage = false;

    public function mount($exercise)
    {
        $this->exercise = $exercise;
        $this->showModal = false;
    }

    public function render()
    {
        return view('livewire.report-button');
    }

    public function submit()
    {

    $validatedData = $this->validate([ 
        'description_error' => 'required', 
    ]); 

    $exerciseReport = new Exercise_report(); 
    $exerciseReport->user_id = auth()->user()->id; 
    $exerciseReport->exercise_id = $this->exercise->id; 
    $exerciseReport->description_error = $this->description_error; 
    $exerciseReport->status = 'Activo'; 
    $exerciseReport->save(); 

    $this->showForm = false; 
    $this->showSuccessMessage = true; 
    }
}

