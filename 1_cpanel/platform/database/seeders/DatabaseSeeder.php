<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {   
        $this->call(SectorsTableSeeder::class);
        $this->call(ChaptersTableSeeder::class);
        $this->call(SectionsTableSeeder::class);
        $this->call(ItemsTableSeeder::class);
        $this->call(ExercisesTableSeeder::class);
        $this->call(Header_exercisesTableSeeder::class);
        $this->call(Development_exercisesTableSeeder::class);
        $this->call(ImagesTableSeeder::class);
    }
}
