<?php

namespace App\Http\Livewire;

use App\Models\Exercise;
use App\Models\Exercise_like;
use Illuminate\Support\Facades\Auth;
use Livewire\Component;

class LikeButton extends Component
{

    public $exercise;
    public $exercise_likes;

    public function mount(Exercise $exercise)
    {
        $this->exercise = $exercise;
    }


    public function render()
    {
        return view('livewire.like-button');
    }


public function toggleLike()
{
    if (Auth::check()) {
        $user_id = Auth::id();
        $exercise_id = $this->exercise->id;

        $like = $this->exercise_likes->where('user_id', $user_id)
            ->where('exercise_id', $exercise_id)
            ->first();

        if ($like) {
            $like->delete();
            $this->exercise->exercise_likes()->where('user_id', $user_id)->delete();
        } else {
            $this->exercise->exercise_likes()->create([
                'user_id' => $user_id,
                'exercise_id' => $exercise_id,
            ]);
        }
        // Emitir el evento para indicar que se ha agregado o eliminado un "me gusta"
        $this->emit('likeUpdated');
        // Actualizar la propiedad "exercise_likes" después de agregar o eliminar un "me gusta"
        $this->exercise_likes = $this->exercise->exercise_likes;
    } else {
        session()->flash('error', 'Debes iniciar sesión para dar "me gusta" a los ejercicios.');
    }
}
}
