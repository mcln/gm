<?php

namespace App\Http\Livewire;

use Livewire\Component;

class Filepond extends Component
{
    public $image;
    
    public function render()
    {
        return view('livewire.filepond');
    }
}
