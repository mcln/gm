<x-form-section submit="updateProfileInformation">

    <x-slot name="title">
        {{ __('Profile Information') }}
    </x-slot>

    <x-slot name="description">
        {{ __('Update your account\'s profile information and email address.') }}
    </x-slot>

    <x-slot name="form">
        <!-- Profile Photo -->
        @if (Laravel\Jetstream\Jetstream::managesProfilePhotos())
            <div x-data="{ photoName: null, photoPreview: null }" class="col-span-6 sm:col-span-4">
                <!-- Profile Photo File Input -->
                <input type="file" class="hidden" wire:model="photo" x-ref="photo"
                    x-on:change="
                                    photoName = $refs.photo.files[0].name;
                                    const reader = new FileReader();
                                    reader.onload = (e) => {
                                        photoPreview = e.target.result;
                                    };
                                    reader.readAsDataURL($refs.photo.files[0]);
                            " />

                <x-label for="photo" value="{{ __('Photo') }}" />

                <!-- Current Profile Photo -->
                <div class="mt-2" x-show="! photoPreview">
                    <img src="{{ $this->user->profile_photo_url }}" alt="{{ $this->user->name }}"
                        class="rounded-full h-20 w-20 object-cover">
                </div>

                <!-- New Profile Photo Preview -->
                <div class="mt-2" x-show="photoPreview" style="display: none;">
                    <span class="block rounded-full w-20 h-20 bg-cover bg-no-repeat bg-center"
                        x-bind:style="'background-image: url(\'' + photoPreview + '\');'">
                    </span>
                </div>

                <x-secondary-button class="mt-2 mr-2" type="button" x-on:click.prevent="$refs.photo.click()">
                    {{ __('Select A New Photo') }}
                </x-secondary-button>

                @if ($this->user->profile_photo_path)
                    <x-secondary-button type="button" class="mt-2" wire:click="deleteProfilePhoto">
                        {{ __('Remove Photo') }}
                    </x-secondary-button>
                @endif

                <x-input-error for="photo" class="mt-2" />
            </div>
        @endif

        <!-- Name -->
        <div class="col-span-6 sm:col-span-4">
            <x-label for="name" label="{{ __('Name') }}" />
            <x-input id="name" type="text" class="mt-1 block w-full" wire:model.defer="state.name"
                autocomplete="name" />
            <x-input-error for="name" class="mt-2" />
        </div>

        <!-- Username -->
        <div class="col-span-6 sm:col-span-4">
            <x-label for="username" label="{{ __('Username') }}" />
            <x-input id="username" type="text" class="mt-1 block w-full" wire:model.defer="state.username"
                autocomplete="username" />
            <x-input-error for="username" class="mt-2" />
        </div>

        <!-- Email -->
        <div class="col-span-6 sm:col-span-4">
            <x-label for="email" label="{{ __('Email') }}" />
            <x-input id="email" type="email" class="mt-1 block w-full" wire:model.defer="state.email"
                autocomplete="username" />
            <x-input-error for="email" class="mt-2" />

            @if (Laravel\Fortify\Features::enabled(Laravel\Fortify\Features::emailVerification()) &&
                    !$this->user->hasVerifiedEmail())
                <p class="text-sm mt-2 dark:text-white">
                    {{ __('Your email address is unverified.') }}

                    <button type="button"
                        class="underline text-sm text-gray-600 dark:text-gray-400 hover:text-gray-900 dark:hover:text-gray-100 rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 dark:focus:ring-offset-gray-800"
                        wire:click.prevent="sendEmailVerification">
                        {{ __('Click here to re-send the verification email.') }}
                    </button>
                </p>

                @if ($this->verificationLinkSent)
                    <p v-show="verificationLinkSent"
                        class="mt-2 font-medium text-sm text-green-600 dark:text-green-400">
                        {{ __('A new verification link has been sent to your email address.') }}
                    </p>
                @endif
            @endif
        </div>

        <!-- Pais de residencia -->
        @php
            $countries = \App\Models\Country::all();
        @endphp

        <div class="col-span-6 sm:col-span-4">
            <x-label for="nationality" label="Pais de Residencia" />

            <div class="relative">
                <select id="nationality"
                    class="mt-1 block w-11/12 ml-11 border-gray-300 dark:border-gray-700 dark:bg-gray-900 dark:text-gray-300 focus:border-indigo-500 dark:focus:border-indigo-600 focus:ring-indigo-500 dark:focus:ring-indigo-600 rounded-md shadow-sm"
                    wire:model.defer="state.nationality" autocomplete="nationality">
                    <option value="">Seleccionar</option> <!-- Opción en blanco -->
                    @foreach ($countries as $country)
                        <option value="{{ $country->name }}"
                            {{ $this->user->nationality === $country->name ? 'selected' : '' }}>
                            {{ $country->name }}
                        </option>
                    @endforeach
                </select>
                @if ($this->user->nationality)
                    @php
                        $selectedCountry = $countries->firstWhere('name', $this->user->nationality);
                    @endphp
                    <div class="selected-flag absolute top-1/2 transform -translate-y-1/2">
                        <img src="{{ $selectedCountry->flag_path }}" alt="{{ $selectedCountry->name }} Flag"
                            style="width: 40px; height: 30px;">
                    </div>
                @endif
            </div>
            <x-input-error for="nationality" class="mt-2" />
        </div>

        <!-- Universidad o Instituto -->
        <div class="col-span-6 sm:col-span-4">
            <x-label for="university_name" label="{{ __('¿Donde estudias?') }}" />
            <x-input id="university_name" type="text" class="mt-1 block w-full" wire:model.defer="state.university_name"
                autocomplete="university_name" placeholder="{{ __('Escribe el nombre de tu universidad o instituto') }}" />
            <x-input-error for="university_name" class="mt-2" />
        </div>

        <!-- Carrera -->
        <div class="col-span-6 sm:col-span-4">
            <x-label for="degree_name" label="{{ __('¿Que estudias?') }}" />
            <x-input id="degree_name" type="text" class="mt-1 block w-full" wire:model.defer="state.degree_name"
                autocomplete="degree_name" placeholder="{{ __('Escribe el nombre de tu carrera') }}" />
            <x-input-error for="degree_name" class="mt-2" />
        </div>

        <!-- Tipo -->
        <div class="col-span-6 sm:col-span-4">
            <x-label for="type" label="Tipo de Usuario" />
            <select id="type"
                class="mt-1 block w-full border-gray-300 dark:border-gray-700 dark:bg-gray-900 dark:text-gray-300 focus:border-indigo-500 dark:focus:border-indigo-600 focus:ring-indigo-500 dark:focus:ring-indigo-600 rounded-md shadow-sm"
                wire:model.defer="state.type" autocomplete="type">
                <option value="Estudiante">Estudiante</option>
                <option value="Profesor">Profesor</option>
                <option value="Ambos">Ambos</option>
            </select>
            <x-input-error for="type" class="mt-2" />
        </div>
        
    </x-slot>

    <x-slot name="actions">
        <x-action-message class="mr-3" on="saved">
            {{ __('Saved.') }}
        </x-action-message>

        <x-button type="submit" wire:loading.attr="disabled" wire:target="photo">
            {{ __('Save') }}
        </x-button>
    </x-slot>
</x-form-section>