<?php

namespace App\Http\Livewire;

use Livewire\Component;

class VideoButton extends Component
{
    public function openVideo()
    {
        $iframe = <<<IFRAME
        <iframe width="100%" height="100%" src="https://www.youtube.com/embed/IL5Rnz1_EHI?autoplay=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share; mute" allowfullscreen></iframe>
        IFRAME;

        $this->dispatchBrowserEvent('open-video', ['iframe' => $iframe]);
    }

    public function render()
    {
        return view('livewire.video-button');
    }
}
