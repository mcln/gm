<?php

namespace Database\Seeders;

use App\Models\Exercise;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ExercisesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $exercices = [
            ['item_id' => '1', 'slug' => 'demostraciones-con-operación-aditiva-01', 'active' => 'yes', 'order' => '1'],
            ['item_id' => '1', 'slug' => 'demostraciones-con-operación-aditiva-02', 'active' => 'yes', 'order' => '2'],
            ['item_id' => '1', 'slug' => 'demostraciones-con-operación-aditiva-03', 'active' => 'yes', 'order' => '3'],
            ['item_id' => '1', 'slug' => 'demostraciones-con-operación-aditiva-04', 'active' => 'yes', 'order' => '4'],
            ['item_id' => '1', 'slug' => 'demostraciones-con-operación-aditiva-05', 'active' => 'yes', 'order' => '5'],
            ['item_id' => '1', 'slug' => 'demostraciones-con-operación-aditiva-06', 'active' => 'yes', 'order' => '6'],
            ['item_id' => '1', 'slug' => 'demostraciones-con-operación-aditiva-07', 'active' => 'yes', 'order' => '7'],
            ['item_id' => '1', 'slug' => 'demostraciones-con-operación-aditiva-08', 'active' => 'yes', 'order' => '8'],
            ['item_id' => '1', 'slug' => 'demostraciones-con-operación-aditiva-09', 'active' => 'yes', 'order' => '9'],
            ['item_id' => '1', 'slug' => 'demostraciones-con-operación-aditiva-10', 'active' => 'yes', 'order' => '10'],
            ['item_id' => '1', 'slug' => 'demostraciones-con-operación-aditiva-11', 'active' => 'yes', 'order' => '11'],
            ['item_id' => '1', 'slug' => 'demostraciones-con-operación-aditiva-12', 'active' => 'yes', 'order' => '12'],
            ['item_id' => '1', 'slug' => 'demostraciones-con-operación-aditiva-13', 'active' => 'yes', 'order' => '13'],
            ['item_id' => '1', 'slug' => 'demostraciones-con-operación-aditiva-14', 'active' => 'yes', 'order' => '14'],
        ];

        foreach ($exercices as $exerciseData) {
            $exercise = new Exercise($exerciseData);
            $exercise->save();
        }
    }
}
