<x-app-layout>
    <div class="flex flex-col justify-start items-center h-screen">

        <h1 class="text-2xl font-bold mt-8 mb-4">Ejercicios a resolver</h1>

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
                                    class="w-24 h-24 rounded-md object-cover cursor-pointer"
                                    id="imagen-{{ $ejercicio->id }}">
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

        <div id="imagen-ampliada" class="fixed inset-0 flex items-center justify-center bg-black bg-opacity-75 hidden">
            <img src="" alt="Imagen ampliada" id="imagen-ampliada-src" class="max-w-full max-h-full">
        </div>

    </div>

    <script>
        // Obtener todas las imágenes
        const imagenes = document.querySelectorAll('[id^="imagen-"]');

        // Agregar el evento de clic a cada imagen
        imagenes.forEach(imagen => {
            imagen.addEventListener('click', () => {
                const imagenAmpliada = document.getElementById('imagen-ampliada');
                const imagenAmpliadaSrc = document.getElementById('imagen-ampliada-src');

                // Actualizar la URL de la imagen ampliada
                imagenAmpliadaSrc.src = imagen.src;

                // Mostrar el contenedor de la imagen ampliada
                imagenAmpliada.classList.remove('hidden');
            });
        });

        // Agregar el evento de clic al contenedor de la imagen ampliada para cerrarla
        const imagenAmpliada = document.getElementById('imagen-ampliada');
        imagenAmpliada.addEventListener('click', () => {
            imagenAmpliada.classList.add('hidden');
        });
    </script>
</x-app-layout>