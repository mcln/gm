<x-app-layout>
    <div class="flex flex-col justify-start items-center h-screen">

        <h1 class="text-2xl font-bold mt-8 mb-4">Mis ejercicios subidos</h1>

        <table class="w-full max-w-4xl border border-gray-300">
            <thead>
                <tr>
                    <th class="px-4 py-2 border-b border-r text-center align-middle">Nombre</th>
                    <th class="px-4 py-2 border-b border-r text-center align-middle">Imagen</th>
                    <th class="px-4 py-2 border-b text-center align-middle">Fecha de Subida</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($ejercicios as $ejercicio)
                    <tr>
                        <td class="px-4 py-2 border-b border-r text-center align-middle">{{ $ejercicio->name }}</td>
                        <td class="px-4 py-2 border-b border-r text-center align-middle">
                            <div class="flex items-center justify-center">
                                <img src="{{ $ejercicio->url }}" alt="Imagen del ejercicio"
                                    class="w-24 h-24 rounded-md object-cover">
                            </div>
                        </td>
                        <td class="px-4 py-2 border-b text-center align-middle">
                            <p class="text-xs text-gray-500">{{ $ejercicio->created_at->diffForHumans() }}</p>
                            {{ $ejercicio->created_at->format('H:i') }} - {{ $ejercicio->created_at->format('d/m/y') }}
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>

    </div>
</x-app-layout>
