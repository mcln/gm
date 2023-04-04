<x-AppLayout>
    <x-slot name="header">
        <h1 class="text-4xl font-bold text-center">Sectores</h1>
    </x-slot>

    <div class="my-8 flex justify-center">
        <div class="w-3/4">
            @php 
                // Inicializamos variables de conteo
                $chapterCount = 0; 
                $chapterNumber = 1; 
                $sectorNumber = 0; 
                $itemNumber = 1;

            @endphp
            @foreach ($sectors as $sector)
                <div class="my-1">
                    <!-- SECTORS -->
                    <h2 class="text-xl font-bold text-center " style="background-color: #0F4069; color: #fff; padding: 4px">
                        SECTOR {{ ++$sectorNumber }}: {{ $sector->name }}</h2>
                    <div class="grid grid-cols-1 md:grid-cols-4 my-1">
                        @foreach ($sector->chapters as $chapter)
                            @php 
                                // Inicializamos variable de conteo para secciones
                                $sectionCount = 'A'; 
                            @endphp
                            @if ($chapterCount % 4 == 0 && $chapterCount != 0)
                                <!-- Si el contador de capítulos es divisible por 4 y no es 0, cerramos el contenedor actual y abrimos uno nuevo -->
                                </div><div class="grid grid-cols-1 md:grid-cols-4 my-1">
                            @endif
                            
                            <div>
                                @php 
                                    // Formateamos el número de capítulo para agregar el cero inicial si es necesario y agregar un guión al final
                                    $chapterNumberStr = str_pad($chapterNumber, 2, '0', STR_PAD_LEFT) . ' -'; 
                                @endphp

                    <!-- CHAPTERS -->
                                <p class="text-base font-bold text-center" style="background-color: #52a4e5; padding: 4px">
                                    {{ $chapterNumberStr }} {{ $chapter->name }}</p>
                                @foreach ($chapter->sections as $section)
                                    <div>
                                        @php 
                                            // Creamos el nombre de la sección concatenando el contador de secciones y el nombre de la sección actual
                                            $sectionName = '<strong>' . $sectionCount++ . ']</strong> ' . $section->name;
                                            $itemNumberInSection = 1; 
                                        @endphp
                                        <div class="border p-2" style="border-color: #2C7DBA;">
                    <!-- SECTIONS -->
                                            <p class="bg-blue-100 text-2xs text-left" style="font-family: Verdana; font-size: 9px; padding: 3px">
                                                {!! $sectionName !!}</p>
                                            <div class="ml-2">
                                                @foreach ($section->items as $item)
                                                    <!-- Mostramos el nombre del ítem actual de la sección actual -->
                    <!-- ITEMS -->
                                                    <div class="my-cell" style="font-family: Verdana; font-size: 9px;">
                                                        <a href="{{ route('exercises.item', ['item' => $item->id]) }}" class="hover:text-red-500">
                                                            <span class="text-gray-500 font-bold">{{ $itemNumberInSection++ }}.</span> {{ $item->name }}
                                                        </a>
                                                    </div>
                                                @endforeach
                                                @php $itemNumber += $itemNumberInSection - 1; @endphp
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                                @php 
                                    // Incrementamos el número de capítulo actual
                                    $chapterNumber++; 
                                @endphp
                            </div>
                            
                            @php 
                                // Incrementamos el contador de capítulos
                                $chapterCount++; 
                            @endphp
                        @endforeach
                            @php 
                                // Reiniciamos el número de capítulo para el próximo sector
                                $chapterNumber = 1; 
                            @endphp
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</x-AppLayout>






