<?php

namespace App\Http\Controllers;

use App\Models\Image;
use Illuminate\Http\Request;

class ImageController extends Controller
{
    public function nosotros()
    {
        // Obtener la imagen por ID desde la tabla images
        $image = Image::where('name', 'sobre_nosotros')->firstOrFail();
        $image2 = Image::where('name', 'sobre_nosotros_mujer')->firstOrFail();

        // Pasar la imagen a la vista
        return view('nosotros', compact('image', 'image2'));
    }
}