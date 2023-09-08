<x-AppLayout>
    <div class="max-w-7xl mx-auto py-10 sm:px-6 lg:px-8">

        <form action="{{ route('profile.updateTeacher') }}" method="POST">
            <h1 class="text-3xl font-bold mb-6">Actualiza tus datos de profesor</h1>
            @csrf

            <x-errors class="mb-6" />

            <x-card>
                <div class="font-bold">Ejercicios de ejemplo</div>
                <p class="text-sm text-gray-500 mb-4">Es importante que los alumnos puedan ver una muestra de como
                    resuelves los ejercicios</p>
                <div class="grid grid-cols-3 gap-4 m-4">
                    <div>
                        <x-input label="Foto 1" type="file" id="example_exerc_photo1" name="example_exerc_photo1" />
                    </div>
                    <div>
                        <x-input label="Foto 2" type="file" id="example_exerc_photo2" name="example_exerc_photo2" />
                    </div>
                    <div>
                        <x-input label="Foto 3" type="file" id="example_exerc_photo3" name="example_exerc_photo3" />
                    </div>
                </div>
                <div class="grid grid-cols-3 gap-4 m-4">
                    <div>
                        <x-input label="Video 1" type="file" id="example_exerc_video1" name="example_exerc_video1" />
                    </div>
                    <div>
                        <x-input label="Video 2" type="file" id="example_exerc_video2" name="example_exerc_video2" />
                    </div>
                    <div>
                        <x-input label="Video 3" type="file" id="example_exerc_video3" name="example_exerc_video3" />
                    </div>
                </div>

                <div class="font-bold">Información adicional</div>

                <div class="m-4">
                    <x-textarea class="pl-16" label="Experiencia:" id="experience" name="experience"
                        cornerHint="¿Tienes experiencia como profesor, en alguna Universidad, Instituto, o similares?">{{ $user_details->experience ?? '' }}
                        <x-slot name="prepend">
                            <div class="absolute inset-y-0">
                                <x-button class="h-full bg-azul-bonito hover:bg-azul-bonito" icon="badge-check" blue />
                            </div>
                        </x-slot>
                    </x-textarea>
                </div>
                <div class="m-4">
                    <x-textarea class="pl-16" label="Especialista en:" id="specialty" name="specialty"
                        cornerHint="¿Cuál o cuales son tus especialidades?">{{ $user_details->specialty ?? '' }}
                        <x-slot name="prepend">
                            <div class="absolute inset-y-0">
                                <x-button class="h-full bg-azul-bonito hover:bg-azul-bonito" icon="star" blue />
                            </div>
                        </x-slot>
                    </x-textarea>
                </div>
                <div class="m-4">
                    <x-textarea class="pl-16" label="Másters o diplomas:" id="masters_diplomas" name="masters_diplomas"
                        cornerHint="¿Tienes otros estudios, diplomados, magisters, o similares?">{{ $user_details->masters_diplomas ?? '' }}
                        <x-slot name="prepend">
                            <div class="absolute inset-y-0">
                                <x-button class="h-full bg-azul-bonito hover:bg-azul-bonito" icon="library" blue />
                            </div>
                        </x-slot>
                    </x-textarea>
                </div>
                <div class="m-4">
                    <x-textarea class="pl-16" label="Acerca de mí:" id="about" name="about"
                        cornerHint="Cuentanos mas sobre ti...">{{ $user_details->about ?? '' }}
                        <x-slot name="prepend">
                            <div class="absolute inset-y-0">
                                <x-button class="h-full bg-azul-bonito hover:bg-azul-bonito" icon="identification" blue />
                            </div>
                        </x-slot>
                    </x-textarea>
                </div>

                <div class="mb-4"></div>

                <x-slot name="footer">
                    <x-button class="float-left mr-4 bg-azul-bonito hover:bg-azul-bonito" icon="identification" blue href="">Ver tu perfil publico</x-button>
                    <x-button type="submit" icon="document-add"
                        class="float-right bg-verde-electrico hover:bg-verde-limon text-white font-semibold px-4 py-2 rounded-md">Guardar</x-button>
                </x-slot>

            </x-card>
        </form>

    </div>
</x-AppLayout>
