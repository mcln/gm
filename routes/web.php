<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ExerciseController;
use App\Http\Controllers\ImageController;
use App\Http\Controllers\ContactoController;
use App\Http\Livewire\ExerciseUser;
use Laravel\Socialite\Facades\Socialite;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\SocialiteController;
use App\Http\Controllers\WebhooksController;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

Route::get('/prueba', function (){
   /*  $permisos = Permission::create([
        "name" => 'acceso dashboard'
    ]); */

    /* $Role = Role::create([
        'name' => 'admin'
    ]);

    $Role2 = Role::create([
        'name' => 'Suscrito'
    ]);

    $Role->givePermissionTo('acceso dashboard');
    return 'ok'; */

    /* $permisos = Permission::create([
        "name" => 'acceso admin'
    ]);

    $permisos2 = Permission::create([
        "name" => 'acceso mas ejercicios'
    ]); */

    /* $Role = Role::find('1');
    $Role->syncPermissions([
        'acceso dashboard','acceso admin','acceso mas ejercicios'
    ]); */

    $user = User::where('email', 'cristobal.lobos@gmail.com')->first();
    $user->syncRoles(['admin']);
});

Route::get('/', function () {return view('enconstruccion');});
Route::get('index', [ExerciseController::class, 'index'])->name('exercises.index'); 
Route::get('/sectors/{sector?}', [ExerciseController::class, 'sector'])->name('exercises.sector');
Route::get('/chapters/{chapter?}', [ExerciseController::class, 'chapter'])->name('exercises.chapter');
Route::get('/sections/{section?}', [ExerciseController::class, 'section'])->name('exercises.section');
Route::get('/items/{item?}', [ExerciseController::class, 'item'])->name('exercises.item');
Route::get('exercises/{exercise}', [ExerciseController::class, 'show'])->name('exercises.show');
Route::get('nosotros', [ImageController::class, 'nosotros'])->name('nosotros');
Route::get('planes', [ImageController::class, 'planes'])->name('planes');

Route::get('orders/{order}/payment', [OrderController::class, 'payment'])->name('orders.payment');
Route::get('orders/{order}', [OrderController::class, 'show'])->name('orders.show');
//MercadoPago Webhook
Route::post('webhooks', WebhooksController::class);
//MercadoPago Webhook Test
Route::get('orders/{order}/pay', [OrderController::class, 'pay'])->name('orders.pay');

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

//SOCIALITE

Route::get('/auth/facebook', [SocialiteController::class, 'redirectFacebook']);
Route::get('/auth/facebook/callback', [SocialiteController::class, 'callbackFacebook']);
Route::get('/auth/google', [SocialiteController::class, 'redirectGoogle']);
Route::get('/auth/google/callback', [SocialiteController::class, 'callbackGoogle']);