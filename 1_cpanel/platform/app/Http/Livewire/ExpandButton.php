<?php

namespace App\Http\Livewire;

use Livewire\Component;

class ExpandButton extends Component
{
    public $anchoCompleto = false;

    public function render()
    {
        return view('livewire.expand-button');
    }

    public function toggleAncho()
    {
        $this->anchoCompleto = !$this->anchoCompleto;
        $this->emit('anchoActualizado', $this->anchoCompleto);
    }
}



