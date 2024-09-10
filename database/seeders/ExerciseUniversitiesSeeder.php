<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\ExerciseUniversity;

class ExerciseUniversitiesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
{
    // Primero, crea el registro padre
    $parent = ExerciseUniversity::create([
        'university_id' => 1,
        'subject_id' => 1,
        'type_id' => 1,
        'semester_id' => 17,
        'certamen_number' => 1,
        'slug' => 'chile-utfsm-mat021-certamen-1-2018-1',
        'active' => 'yes',
        'order' => 1,
        'parent_id' => null // El padre no tiene parent_id
    ]);

    // Luego, crea los registros hijos
    $children = [
        ['slug' => 'chile-utfsm-mat021-certamen-1-2018-1-01a'],
        ['slug' => 'chile-utfsm-mat021-certamen-1-2018-1-01b'],
        ['slug' => 'chile-utfsm-mat021-certamen-1-2018-1-02'],
        ['slug' => 'chile-utfsm-mat021-certamen-1-2018-1-03'],
        ['slug' => 'chile-utfsm-mat021-certamen-1-2018-1-04a'],
        ['slug' => 'chile-utfsm-mat021-certamen-1-2018-1-04b']
    ];

    foreach ($children as $child) {
        ExerciseUniversity::create(array_merge([
            'university_id' => 1,
            'subject_id' => 1,
            'type_id' => 1,
            'semester_id' => 17,
            'certamen_number' => 1,
            'active' => 'yes',
            'order' => 1,
            'parent_id' => $parent->id // Asigna el ID del padre
        ], $child));
    }
}
}
