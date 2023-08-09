<x-guest-layout>
    <x-authentication-card>
        <x-slot name="logo">
            <x-authentication-card-logo />
        </x-slot>

        <x-validation-errors class="mb-4" />

        @if (session('status'))
            <div class="mb-4 font-medium text-sm text-green-600 dark:text-green-400">
                {{ session('status') }}
            </div>
        @endif

        <form method="POST" action="{{ route('login') }}">
            @csrf

            <div>
                <x-label for="email" value="{{ __('Email') }}" />
                <x-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required autofocus autocomplete="username" />
            </div>

            <div class="mt-4">
                <x-label for="password" value="{{ __('Password') }}" />
                <x-input id="password" class="block mt-1 w-full" type="password" name="password" required autocomplete="current-password" />
            </div>

            <div class="block mt-4">
                <label for="remember_me" class="flex items-center">
                    <x-checkbox id="remember_me" name="remember" />
                    <span class="ml-2 text-sm text-gray-600 dark:text-gray-400">{{ __('Recordar mi inicio de sesión') }}</span>
                </label>
            </div>

            <div class="flex items-center justify-end mt-4">
                @if (Route::has('password.request'))
                    <a class="underline text-sm text-gray-600 dark:text-gray-400 hover:text-gray-900 dark:hover:text-gray-100 rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 dark:focus:ring-offset-gray-800" href="{{ route('password.request') }}">
                        {{ __('¿Olvidó su password?') }}
                    </a>
                @endif

                <x-button class="ml-4">
                    {{ __('Iniciar sesión') }}
                </x-button>
            </div>
        </form>

        <br>
        <a href="/auth/google" class="flex items-center justify-center py-2 px-4 bg-red-500 hover:bg-red-700 text-white rounded transition-colors font-roboto">
            <span class="bg-cover w-6 h-6 mr-2" style="background-image: url('https://www.gstatic.com/firebasejs/ui/2.0.0/images/auth/google.svg')"></span>
            Iniciar sesión con Google
          </a>
          <br>
          <a href="/auth/facebook" class="flex items-center justify-center py-2 px-4 bg-blue-500 hover:bg-blue-700 text-white rounded transition-colors font-roboto">
            <span class="bg-cover w-6 h-6 mr-2" style="background-image: url('https://upload.wikimedia.org/wikipedia/commons/thumb/c/cd/Facebook_logo_%28square%29.png/240px-Facebook_logo_%28square%29.png')"></span>
            Iniciar sesión con Facebook
          </a>
    </x-authentication-card>
</x-guest-layout>
