<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\ExerciseUniversity;
use App\Models\HeaderExUniversity;

class HeaderExUniversitiesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Encuentra el registro padre
        $parent = ExerciseUniversity::where('slug', 'chile-utfsm-mat021-certamen-1-2018-1')->first();

        // Crea el encabezado para el certamen completo
        HeaderExUniversity::create([
            'exercise_university_id' => $parent->id,
            'image_path' => '/university_excercises/header/chile-utfsm-mat021-certamen-1-2018-1.pdf'
        ]);

        // Crea encabezados para los ejercicios hijos
        $children = ExerciseUniversity::where('parent_id', $parent->id)->get();

        foreach ($children as $child) {
            HeaderExUniversity::create([
                'exercise_university_id' => $child->id,
                'image_path' => '/university_excercises/header/' . $child->slug . '.jpg'
            ]);
        }
    }
}
