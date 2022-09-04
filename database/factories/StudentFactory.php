<?php

namespace Database\Factories;

use App\Models\Major;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Student>
 */
class StudentFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'sid' => $this->faker->numberBetween(1000000, 9999999),
            'name' => $this->faker->name(),
            'sex' => $this->faker->randomElement(['F', 'M']),
            'address' => $this->faker->address(),
            'phone' => $this->faker->phoneNumber(),
            'major_id' => Major::all()->random()->id,
        ];
    }
}
