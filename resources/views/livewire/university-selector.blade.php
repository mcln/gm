<div class="flex flex-col items-center">
    <label for="country" class="block text-center font-bold mb-2">Selecciona un país:</label>
    <select id="country" wire:model="selectedCountry" class="border rounded p-2">
        <option value="">Selecciona un país</option>
        @foreach ($countries as $country)
            <option value="{{ $country->id }}">{{ $country->name }}</option>
        @endforeach
    </select>

    @if ($selectedCountry)
        <div class="my-4">
            <label for="university" class="block text-center font-bold mb-2">Selecciona una universidad:</label>
            <select id="university" wire:model="selectedUniversity" class="border rounded p-2">
                <option value="">Selecciona una universidad</option>
                @foreach ($universities as $university)
                    <option value="{{ $university->id }}">{{ $university->name }}</option>
                @endforeach
            </select>
        </div>
    @endif

    @if ($selectedUniversity)
        <div class="my-4">
            <label for="subject" class="block text-center font-bold mb-2">Selecciona un ramo:</label>
            <select id="subject" wire:model="selectedSubject" class="border rounded p-2">
                <option value="">Selecciona un ramo</option>
                @foreach ($subjects as $subject)
                    <option value="{{ $subject->id }}">{{ $subject->name }}</option>
                @endforeach
            </select>
        </div>
    @endif

    @if ($selectedSubject)
        <div class="my-4">
            <label for="type" class="block text-center font-bold mb-2">Selecciona un tipo:</label>
            <select id="type" wire:model="selectedType" class="border rounded p-2">
                <option value="">Selecciona un tipo</option>
                @foreach ($types as $type)
                    <option value="{{ $type->id }}">{{ $type->name }}</option>
                @endforeach
            </select>
        </div>
    @endif

    @if ($selectedType && $semesterData)
        <div class="my-4">
            <h3 class="font-bold mb-2">Listado de Semestres:</h3>
            <ul>
                @foreach ($semesterData as $data)
                    <li class="mb-2">
                        <a href="{{ route('universities.certamen', ['exercise_id' => $data['exercise_id']]) }}" class="text-blue-500 hover:underline">
                            {{ $data['period'] }} - {{ $data['year'] }}
                        </a>
                    </li>
                @endforeach
            </ul>
        </div>
    @endif
</div>

