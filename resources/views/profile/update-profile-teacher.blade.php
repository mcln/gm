<x-AppLayout>
    <div class="bg-blue-100 py-8">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <form action="{{ route('profile.updateTeacher') }}" method="POST"
                class="bg-white shadow-md rounded-lg px-8 py-6">
                <h1 class="text-2xl font-bold mb-6">Actualizar perfil de profesor</h1>
                @csrf
                <div class="mb-6">
                    <h3 class="text-xl font-bold mb-2">Ejercicios de Ejemplo</h3> (Asegurate que tus alumnos vean como
                    desarrollas tus ejercicios y los explicas en video)
                    <div class="grid grid-cols-3 gap-4 mb-4">
                        <div>
                            <x-input label="Foto 1" type="file" id="example_exerc_photo1"
                                name="example_exerc_photo1" />
                        </div>
                        <div>
                            <x-input label="Foto 2" type="file" id="example_exerc_photo2"
                                name="example_exerc_photo2" />
                        </div>
                        <div>
                            <x-input label="Foto 3" type="file" id="example_exerc_photo3"
                                name="example_exerc_photo3" />
                        </div>
                    </div>
                    <div class="grid grid-cols-3 gap-4 mb-4">
                        <div>
                            <x-input label="Video 1" type="file" id="example_exerc_video1"
                                name="example_exerc_video1" />
                        </div>
                        <div>
                            <x-input label="Video 2" type="file" id="example_exerc_video2"
                                name="example_exerc_video2" />
                        </div>
                        <div>
                            <x-input label="Video 3" type="file" id="example_exerc_video3"
                                name="example_exerc_video3" />
                        </div>
                    </div>
                </div>
                <div class="mb-4">
                    <x-textarea class="pl-16" label="Experiencia:" id="experience" name="experience"
                        cornerHint="¿Tienes experiencia como profesor, en alguna Universidad, Instituto, o similares?">{{ $user_details->experience }}
                        <x-slot name="prepend">
                            <div class="absolute inset-y-0">
                                <x-button class="h-full" icon="academic-cap" blue />
                            </div>
                        </x-slot>
                    </x-textarea>
                </div>
                <div class="mb-4">
                    <x-textarea class="pl-16" label="Especialista en:" id="specialty" name="specialty"
                        cornerHint="¿Cuál o cuales son tus especialidades?">{{ $user_details->specialty }}
                        <x-slot name="prepend">
                            <div class="absolute inset-y-0">
                                <x-button class="h-full" icon="star" blue />
                            </div>
                        </x-slot>
                    </x-textarea>
                </div>
                <div class="mb-4">
                    <x-textarea class="pl-16" label="Másters o diplomas:" id="masters_diplomas" name="masters_diplomas"
                        cornerHint="¿Tienes otros estudios, diplomados, magisters, o similares?">{{ $user_details->masters_diplomas }}
                        <x-slot name="prepend">
                            <div class="absolute inset-y-0">
                                <x-button class="h-full" icon="academic-cap" blue />
                            </div>
                        </x-slot>
                    </x-textarea>
                </div>
                <div class="mb-4">
                    <x-textarea class="pl-16" label="Acerca de mí:" id="about" name="about"
                        cornerHint="Cuentanos mas sobre ti...">{{ $user_details->about }}
                        <x-slot name="prepend">
                            <div class="absolute inset-y-0">
                                <x-button class="h-full" icon="identification" blue />
                            </div>
                        </x-slot>
                    </x-textarea>
                </div>

                <x-button type="submit"
                    class="bg-blue-500 hover:bg-blue-600 text-white font-semibold px-4 py-2 rounded-md">Guardar</x-button>
            </form>

        </div>
</x-AppLayout>
