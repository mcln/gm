<x-AppLayout>

    <div class="w-full bg-azul-semi"> <video autoplay muted loop class="inset-0 w-full h-full object-cover"
            style="z-index: -1;">
            <source src="https://res.cloudinary.com/dbltc2gr7/video/upload/v1682449858/videomath2_kbyb8e.mp4"
                type="video/mp4">
        </video>
        <h1 class="text-6xl text-white text-center font-bold px-20 bg-guiamath-bg dark:text-white sm:text-4xl sm:px-4 sm:absolute sm:inset-0 lg:text-5xl xl:text-6xl"
            style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);">
            Ejercicios Resueltos de Matemáticas para Ingeniería
        </h1>
    </div>

    <table class="my-8 mx-auto max-w-7xl">
        <tr>
            <td class="w-70">
                <p class="text-6xl">¿Por qué <span class="text-azul-electrico font-bold">GuiaMath</span>?</p> <br>
                <span>
                    <p>GuiaMath es un proyecto para la enseñanza y el aprendizaje de las matemáticas</p>
                    <p> para alumnos que quieran o estudian carreras relacionadas con la ingeniería,</p>
                    <p> diseñado con base en la investigación en didáctica de las matemáticas y en ciencias del
                        aprendizaje,</p>
                    <p> por un equipo interdisciplinario de reconocidos investigadores en estas áreas, profesores y
                        desarrolladores de tecnología educativa.</p>
                </span>
            </td>
            <td class="w-30"> <img
                    src="https://res.cloudinary.com/dbltc2gr7/image/upload/v1682447359/estudiante1_lvdzny.png"
                    alt="Imagen"> </td>
        </tr>
    </table>

    <table class="my-8 mx-auto max-w-7xl">
        <caption class="text-4xl font-bold text-center my-4">
            En GuiaMath podrás:
        </caption>
        <tr>
            <td class="w-80 p-8">
                <div class="flex justify-center">
                    <img src="https://res.cloudinary.com/dbltc2gr7/image/upload/v1682448978/2_pn5kcr.png"
                        width="200">
                </div>
                <h2 class="text-center font-bold mt-4">Ver ejercicios resueltos</h2>
            </td>
            <td class="w-80 p-8">
                <div class="flex justify-center">
                    <img src="https://res.cloudinary.com/dbltc2gr7/image/upload/v1682448978/3_otazkw.png"
                        width="200">
                </div>
                <h2 class="text-center font-bold mt-4">Ver ejercicios resueltos en video</h2>
            </td>
            <td class="w-80 p-8">
                <div class="flex justify-center">
                    <img src="https://res.cloudinary.com/dbltc2gr7/image/upload/v1682448978/4_yltngi.png"
                        width="200">
                </div>
                <h2 class="text-center font-bold mt-4">Envíar tus ejercicios para resolver</h2>
            </td>
        </tr>
    </table>

    {{-- Buscador de ejercicios --}}
{{--     <form method="GET">
        <div class="input-group mb-3">
            <input type="text" name="search" value="{{ request()->get('search')}}" class="form-control" placeholder="Busca ejercicios de..." aria-label="Search" aria-describedby="button-addon2">
            <button class="btn btn-success" type="submit" id="button-addon2">Buscador</button>
        </div>
    </form> --}}


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
                    <h2 class="text-xl font-bold text-center "
                        style="background-color: #0F4069; color: #fff; padding: 4px">
                        SECTOR {{ ++$sectorNumber }}: {{ $sector->name }}</h2>
                    <div class="grid grid-cols-1 md:grid-cols-4 my-1">
                        @foreach ($sector->chapters as $chapter)
                            @php
                                // Inicializamos variable de conteo para secciones
                                $sectionCount = 'A';
                            @endphp
                            @if ($chapterCount % 4 == 0 && $chapterCount != 0)
                                <!-- Si el contador de capítulos es divisible por 4 y no es 0, cerramos el contenedor actual y abrimos uno nuevo -->
                    </div>
                    <div class="grid grid-cols-1 md:grid-cols-4 my-1">
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
                            <p class="bg-blue-100 text-2xs text-left"
                                style="font-family: Verdana; font-size: 9px; padding: 3px">
                                {!! $sectionName !!}</p>
                            <div class="ml-2">
                                @foreach ($section->items as $item)
                                    <!-- Mostramos el nombre del ítem actual de la sección actual -->
                                    <!-- ITEMS -->
                                    <div class="my-cell" style="font-family: Verdana; font-size: 9px;">
                                        <a href="{{ route('exercises.item', ['item' => $item->id]) }}"
                                            class="hover:text-red-500">
                                            <span class="text-gray-500 font-bold">{{ $itemNumberInSection++ }}.</span>
                                            {{ $item->name }}
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
