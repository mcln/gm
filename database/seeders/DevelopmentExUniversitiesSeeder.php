<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\ExerciseUniversity;
use App\Models\DevelopmentExUniversity;

class DevelopmentExUniversitiesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Encuentra los ejercicios hijos
        $children = ExerciseUniversity::where('parent_id', '!=', null)->get();

        foreach ($children as $child) {
            DevelopmentExUniversity::create([
                'exercise_university_id' => $child->id,
                'image_path' => '/university_excercises/' . $child->slug . '.jpg'
            ]);
        }
    }
}
