<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ExerciseController;
use App\Http\Controllers\ExerciseUserController;
use App\Http\Controllers\ImageController;

Route::get('/', [ExerciseController::class, 'index'])->name('exercises.index'); 

Route::get('/sectors/{sector?}', [ExerciseController::class, 'sector'])->name('exercises.sector');

Route::get('/chapters/{chapter?}', [ExerciseController::class, 'chapter'])->name('exercises.chapter');

Route::get('/sections/{section?}', [ExerciseController::class, 'section'])->name('exercises.section');

Route::get('/items/{item?}', [ExerciseController::class, 'item'])->name('exercises.item');

Route::get('exercises/{exercise}', [ExerciseController::class, 'show'])->name('exercises.show');

Route::get('nosotros', [ImageController::class, 'nosotros'])->name('nosotros');



Route::middleware(['auth:sanctum',config('jetstream.auth_session'),'verified'])->group(function ()
{
    Route::get('exerciseuser', [ExerciseUserController::class, 'index'])->name('exerciseuser.index');
    
});

Route::middleware(['auth:sanctum',config('jetstream.auth_session'),'verified'])->group(function () 
{
    Route::post('/exercise-comments', [ExerciseController::class, 'comments_store'])->name('exercise.comments_store');
    Route::delete('/comments/{comment?}', [ExerciseController::class, 'comments_destroy'])->name('exercise.comments_destroy');
    Route::post('/exercise/{exercise}/report', [ExerciseController::class, 'exercise_report'])->name('exercise.report');
});
