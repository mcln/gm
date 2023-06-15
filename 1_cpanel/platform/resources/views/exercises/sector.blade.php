<x-AppLayout>
    <div class="div-ampliar mx-auto max-w-7xl px-2 sm:px-6 lg:px-8 py-8">  

        <div class="flex rounded-lg bg-azul-oscuro py-2 px-4 items-center">
            <div class="inline-flex items-center bg-red-700 text-white font-bold py-1 px-3 rounded-full">
                {{ ucfirst($chapters->first()->sector->name) }}
            </div>
        </div>
        <div class="mb-4"></div>
        <div class="rounded-lg grid grid-cols-1 gap-1 py-4 px-4 bg-azul-oscuro">
            @php $i = 1 @endphp
            @foreach ($chapters as $chapter)
                <a href="{{ route('exercises.chapter', ['chapter' => $chapter->id]) }}" class="bg-white hover:bg-azul-claro rounded-lg">
                    <span class="hover:text-white text-sm font-medium text-gray-900 pl-4">{{ $i++ }}. </span>
                    <span class="text-sm font-medium text-gray-900">{{ ucfirst($chapter->name) }}</span>
                </a>
            @endforeach
        </div>
    </div>
</x-AppLayout>