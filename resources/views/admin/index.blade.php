@extends('adminlte::page')

@section('title', 'AdminLTE')

{{-- pluggins --}}
{{-- @section('pluggins.Sweetalert2', true) --}}

@section('content_header')
    <h1>Administración</h1>
@stop

@section('content')
    <div class="card">
        <div class="card-header">
            <h1 class="card-title">Bienvenido al panel de Administrador.</h1>
        </div>
        <div class="card-body">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat quod placeat rerum numquam? Sit, odit
                voluptatibus? Ut repellat nisi iste voluptas pariatur beatae, consequatur inventore, temporibus laboriosam
                sit molestiae vel.</p>
        </div>
    </div>
@stop

@section('css')
    <link rel="stylesheet" href="/css/admin_custom.css">
@stop

@section('js')
    <script>
        Swal.fire(
            'Good Job',
            'clickeaste el boton'
        )
    </script>
@stop
