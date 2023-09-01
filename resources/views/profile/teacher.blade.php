<x-AppLayout>
    <div class="div-ampliar mx-auto max-w-7xl px-2 sm:px-6 lg:px-8 py-8">
        <h1 class="text-4xl mb-3 fotn-bold">Profesor: {{ $teacher->name }}</h1>

        <div class="flex">
            <div>
                @if ($teacher->avatar)
                    <img src="{{ $teacher->avatar }}" alt="Foto de perfil" class="w-24 h-24 rounded-full mb-2 mr-2">
                @else
                    <img src="{{ asset('storage/' . $teacher->profile_photo_path) }}" alt="Foto de perfil"
                        class="w-24 h-24 rounded-full mb-2 mr-2">
                @endif
            </div>

            <div class="ml-8">
                <p><b>Username:</b> {{ $teacher->username }}</p>
                <p><b>Nacionalidad:</b> {{ $teacher->nationality }}</p>
                <p><b>Título:</b> {{ $teacher->degree_name }}</p>
                <p><b>Universidad:</b> {{ $teacher->university_name }}</p>
            </div>
        </div>
    </div>
</x-AppLayout>
