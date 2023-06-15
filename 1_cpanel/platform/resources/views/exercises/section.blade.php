<x-AppLayout>
    <div class="div-ampliar mx-auto max-w-7xl px-2 sm:px-6 lg:px-8 py-8">  

        <div class="flex rounded-lg bg-azul-oscuro py-2 px-4 items-center">
            <a href="{{ route('exercises.sector', $items->first()->section->chapter->sector->id) }}" class="inline-flex items-center bg-azul-oscuro hover:bg-azul-electrico text-white font-bold py-1 px-3 rounded-full">
                {{ ucfirst($items->first()->section->chapter->sector->name) }}
            </a>
            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 inline-block mx-2" fill="none" viewBox="0 0 24 24" stroke="#ffffff" stroke-width="2">
                <path stroke-linecap="round" stroke-linejoin="round" d="M13 5l7 7-7 7M5 5l7 7-7 7" />
            </svg>
            <a href="{{ route('exercises.chapter', $items->first()->section->chapter->id) }}" class="inline-flex items-center bg-azul-oscuro hover:bg-azul-electrico text-white font-bold py-1 px-3 rounded-full">
                {{ ucfirst($items->first()->section->chapter->name) }}
            </a>
            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 inline-block mx-2" fill="none" viewBox="0 0 24 24" stroke="#ffffff" stroke-width="2">
                <path stroke-linecap="round" stroke-linejoin="round" d="M13 5l7 7-7 7M5 5l7 7-7 7" />
            </svg>
            <div class="inline-flex items-center bg-red-700 text-white font-bold py-1 px-3 rounded-full">
                {{ ucfirst($items->first()->section->name) }}
            </div>    
            
        </div>
        
        <div class="mb-4"></div>
        <div class="rounded-lg grid grid-cols-1 gap-1 py-4 px-4 bg-azul-oscuro">
            @php $i = 1 @endphp
            @foreach ($items as $item)
                <a href="{{ route('exercises.item', ['item' => $item->id]) }}" class="bg-white hover:bg-azul-claro rounded-lg">
                    <span class="hover:text-white text-sm font-medium text-gray-900 pl-4">{{ $i++ }}. </span>
                    <span class="text-sm font-medium text-azul-oscuro pl-4">{{ ucfirst($item->name) }}</span>
                </a>
            @endforeach
          </div>
    </div>
</x-AppLayout>