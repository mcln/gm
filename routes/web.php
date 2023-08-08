<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ExerciseController;
use App\Http\Controllers\ImageController;
use App\Http\Controllers\ContactoController;
use App\Http\Livewire\ExerciseUser;
use Laravel\Socialite\Facades\Socialite;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

Route::get('/', function () {return view('enconstruccion');});

Route::get('index', [ExerciseController::class, 'index'])->name('exercises.index'); 

Route::get('/sectors/{sector?}', [ExerciseController::class, 'sector'])->name('exercises.sector');

Route::get('/chapters/{chapter?}', [ExerciseController::class, 'chapter'])->name('exercises.chapter');

Route::get('/sections/{section?}', [ExerciseController::class, 'section'])->name('exercises.section');

Route::get('/items/{item?}', [ExerciseController::class, 'item'])->name('exercises.item');

Route::get('exercises/{exercise}', [ExerciseController::class, 'show'])->name('exercises.show');

Route::get('nosotros', [ImageController::class, 'nosotros'])->name('nosotros');

Route::get('planes', [ImageController::class, 'planes'])->name('planes');



Route::middleware(['auth:sanctum',config('jetstream.auth_session'),'verified'])->group(function ()
{
    Route::get('exerciseuser', ExerciseUser::class)->name('exerciseuser.index');
});

Route::middleware(['auth:sanctum',config('jetstream.auth_session'),'verified'])->group(function () 
{
    Route::post('/exercise-comments', [ExerciseController::class, 'comments_store'])->name('exercise.comments_store');
    Route::delete('/comments/{comment?}', [ExerciseController::class, 'comments_destroy'])->name('exercise.comments_destroy');
    Route::post('/exercise/{exercise}/report', [ExerciseController::class, 'exercise_report'])->name('exercise.report');
});

Route::get('/contacto', [ContactoController::class, 'mostrarFormulario'])->name('contacto.mostrarFormulario');
Route::post('/contacto', [ContactoController::class, 'enviarMensaje'])->name('contacto.enviarMensaje');

//google oauth

Route::get('/login-google', function () {
    return Socialite::driver('google')->redirect();
});
 
Route::get('/google-callback', function () {
    $user = Socialite::driver('google')->user();
    $userExists = User::where('external_id', $user->id)->where('external_auth','google')->first();

    if ($userExists){
        Auth::login($userExists);
    } else {
        $userNew = User::create([
            'name' => $user->name,
            'email'=> $user->email,
            'avatar'=> $user->avatar,
            'external_id'=> $user->id,
            'external_auth'=> 'google',
        ]);

        Auth::login($userNew);
    }
    return redirect('/index');
});
