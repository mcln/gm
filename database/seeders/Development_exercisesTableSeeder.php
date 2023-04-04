<?php

namespace Database\Seeders;

use App\Models\Development_exercise;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class Development_exercisesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $development_exercises = [
            ['exercise_id' => '1', 'image_path' => '/exercises/developments/01-01-01-01-001.gif'],
            ['exercise_id' => '2', 'image_path' => '/exercises/developments/01-01-01-01-002-1.gif'],
            ['exercise_id' => '2', 'image_path' => '/exercises/developments/01-01-01-01-002-2.gif'],
            ['exercise_id' => '3', 'image_path' => '/exercises/developments/01-01-01-01-003.gif'],
            ['exercise_id' => '4', 'image_path' => '/exercises/developments/01-01-01-01-004-1.gif'],
            ['exercise_id' => '4', 'image_path' => '/exercises/developments/01-01-01-01-004-2.gif'],
            ['exercise_id' => '5', 'image_path' => '/exercises/developments/01-01-01-01-005.gif'],
            ['exercise_id' => '6', 'image_path' => '/exercises/developments/01-01-01-01-006.gif'],
            ['exercise_id' => '7', 'image_path' => '/exercises/developments/01-01-01-01-007-1.gif'],
            ['exercise_id' => '7', 'image_path' => '/exercises/developments/01-01-01-01-007-2.gif'],
            ['exercise_id' => '7', 'image_path' => '/exercises/developments/01-01-01-01-007-3.gif'],
            ['exercise_id' => '7', 'image_path' => '/exercises/developments/01-01-01-01-007-4.gif'],
            ['exercise_id' => '8', 'image_path' => '/exercises/developments/01-01-01-01-008-1.gif'],
            ['exercise_id' => '8', 'image_path' => '/exercises/developments/01-01-01-01-008-2.gif'],
            ['exercise_id' => '8', 'image_path' => '/exercises/developments/01-01-01-01-008-3.gif'],
            ['exercise_id' => '9', 'image_path' => '/exercises/developments/01-01-01-01-009-1.gif'],
            ['exercise_id' => '9', 'image_path' => '/exercises/developments/01-01-01-01-009-2.gif'],
            ['exercise_id' => '9', 'image_path' => '/exercises/developments/01-01-01-01-009-3.gif'],
            ['exercise_id' => '9', 'image_path' => '/exercises/developments/01-01-01-01-009-4.gif'],
            ['exercise_id' => '9', 'image_path' => '/exercises/developments/01-01-01-01-009-5.gif'],
            ['exercise_id' => '10', 'image_path' => '/exercises/developments/01-01-01-01-010.gif'],
            ['exercise_id' => '11', 'image_path' => '/exercises/developments/01-01-01-01-011-1.gif'],
            ['exercise_id' => '11', 'image_path' => '/exercises/developments/01-01-01-01-011-2.gif'],
            ['exercise_id' => '11', 'image_path' => '/exercises/developments/01-01-01-01-011-3.gif'],
            ['exercise_id' => '11', 'image_path' => '/exercises/developments/01-01-01-01-011-4.gif'],
            ['exercise_id' => '12', 'image_path' => '/exercises/developments/01-01-01-01-012.gif'],
            ['exercise_id' => '13', 'image_path' => '/exercises/developments/01-01-01-01-013.gif'],
            ['exercise_id' => '14', 'image_path' => '/exercises/developments/01-01-01-01-014-1.gif'],
            ['exercise_id' => '14', 'image_path' => '/exercises/developments/01-01-01-01-014-2.gif'],
            ['exercise_id' => '14', 'image_path' => '/exercises/developments/01-01-01-01-014-3.gif'],

        ];

        foreach ($development_exercises as $development_exerciseData) {
            $development_exercise = new Development_exercise($development_exerciseData);
            $development_exercise->save();
        }
    }
}
