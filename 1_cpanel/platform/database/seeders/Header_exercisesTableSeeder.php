<?php

namespace Database\Seeders;

use App\Models\Header_exercise;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class Header_exercisesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $header_exercises = [
            ['exercise_id' => '1', 'image_path' => '/exercises/headers/01-01-01-01-001.gif'],
            ['exercise_id' => '2', 'image_path' => '/exercises/headers/01-01-01-01-002.gif'],
            ['exercise_id' => '3', 'image_path' => '/exercises/headers/01-01-01-01-003.gif'],
            ['exercise_id' => '4', 'image_path' => '/exercises/headers/01-01-01-01-004.gif'],
            ['exercise_id' => '5', 'image_path' => '/exercises/headers/01-01-01-01-005.gif'],
            ['exercise_id' => '6', 'image_path' => '/exercises/headers/01-01-01-01-006.gif'],
            ['exercise_id' => '7', 'image_path' => '/exercises/headers/01-01-01-01-007.gif'],
            ['exercise_id' => '8', 'image_path' => '/exercises/headers/01-01-01-01-008.gif'],
            ['exercise_id' => '9', 'image_path' => '/exercises/headers/01-01-01-01-009.gif'],
            ['exercise_id' => '10', 'image_path' => '/exercises/headers/01-01-01-01-010.gif'],
            ['exercise_id' => '11', 'image_path' => '/exercises/headers/01-01-01-01-011.gif'],
            ['exercise_id' => '12', 'image_path' => '/exercises/headers/01-01-01-01-012.gif'],
            ['exercise_id' => '13', 'image_path' => '/exercises/headers/01-01-01-01-013.gif'],
            ['exercise_id' => '14', 'image_path' => '/exercises/headers/01-01-01-01-014.gif'],
        ];

        foreach ($header_exercises as $header_exerciseData) {
            $header_exercise = new Header_exercise($header_exerciseData);
            $header_exercise->save();
        }
    }
}
