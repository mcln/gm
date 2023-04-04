<div>
    <button wire:click="toggleLike" class="flex items-center bg-azul-claro hover:bg-azul-muyclaro text-azul-oscuro font-bold py-1 px-3 rounded-full mr-4">
        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 mr-1" fill="none" viewBox="0 0 24 24" stroke="#0F4069" stroke-width="2">
            <path stroke-linecap="round" stroke-linejoin="round" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z" />
        </svg>
        <span>{{ $exercise->exercise_likes_count }}</span>
        <span class="ml-2">Me gusta</span>
    </button>
</div>

@push('scripts')
    <!-- Agrega el código que maneja el evento "likeUpdated" -->
    <script>
        Livewire.on('likeUpdated', function () {
            // Actualizar la propiedad "exercise_likes" cuando se emite el evento
            Livewire.emit('exerciseLikes');
        });
    </script>
@endpush
