<x-AppLayout>
    @php $anchoCompleto = false; @endphp 
    <div class="div-ampliar mx-auto {{ $anchoCompleto ? '' : 'max-w-7xl' }} px-2 sm:px-6 lg:px-8 py-8" wire:className="{{ $anchoCompleto ? '' : 'max-w-7xl' }}"> 

        <div class="flex rounded-lg bg-azul-oscuro py-2 px-4 items-center justify-center space-x-2">

            @if(isset($previous_exercise))
            <a href="{{ route('exercises.show', $previous_exercise->id) }}" class="inline-flex items-center bg-azul-oscuro hover:bg-azul-electrico text-white font-bold py-1 px-3 rounded-full">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 mr-3" viewBox="0 0 20 20" fill="#ffffff">
                    <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm.707-10.293a1 1 0 00-1.414-1.414l-3 3a1 1 0 000 1.414l3 3a1 1 0 001.414-1.414L9.414 11H13a1 1 0 100-2H9.414l1.293-1.293z" clip-rule="evenodd" />
                </svg>  Ejercicio Anterior
            </a>
            @endif
            
            @if(isset($next_exercise))
            <a href="{{ route('exercises.show', $next_exercise->id) }}" class="inline-flex items-center bg-azul-oscuro hover:bg-azul-electrico text-white font-bold py-1 px-3 rounded-full">
                Ejercicio Siguiente
                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 ml-3" viewBox="0 0 20 20" fill="#ffffff">
                    <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-8.707l-3-3a1 1 0 00-1.414 1.414L10.586 9H7a1 1 0 100 2h3.586l-1.293 1.293a1 1 0 101.414 1.414l3-3a1 1 0 000-1.414z" clip-rule="evenodd" />
                </svg>
            </a>
            @endif
            
        </div>
        
                
        <div class="mb-4"></div>  

            <div class="rounded-lg bg-azul-oscuro py-4 px-4 mb-4">
                <div class="flex justify-between">
                    <div class="flex">

                        @livewire('expand-button', ['anchoCompleto' => $anchoCompleto]) 

                        <livewire:video-button />

                        @livewire('like-button', ['exercise' => $exercise])

                        @livewire('report-button', ['exercise' => $exercise])

                        @livewire('save-exercise-button', ['exercise' => $exercise])
                       
                    </div>
                    <div class="flex items-center">
                        <a href="{{ route('exercises.item', $exercise->item->id) }}" class="flex items-center bg-azul-claro hover:bg-azul-muyclaro text-azul-oscuro font-bold py-1 px-3 rounded-full mr-4">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 mr-2" fill="none" viewBox="0 0 24 24" stroke="#0F4069" stroke-width="2">
                                <path stroke-linecap="round" stroke-linejoin="round" d="M12 14l2-2m0 0l2-2m-2 2l-2-2m2 2l2 2M3 12l6.414 6.414a2 2 0 001.414.586H19a2 2 0 002-2V7a2 2 0 00-2-2h-8.172a2 2 0 00-1.414.586L3 12z" />
                            </svg>
                            <span>Volver</span>
                        </a>
                        <a href="{{ route('exercises.sector', $exercise->item->section->chapter->sector->id) }}" class="flex items-center bg-azul-claro hover:bg-azul-muyclaro text-azul-oscuro font-bold py-1 px-3 rounded-full mr-4">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 " fill="none" viewBox="0 0 24 24" stroke="#0F4069" stroke-width="2">
                                <path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12" />
                            </svg>
                            <span>Cerrar</span>
                        </a>
                    </div>              
                </div>
              
            <div class="flex flex-row justify-center items-center mt-4">
        
            </div>
            <div class="image-section h-14 rounded-lg w-400 h-300 flex items-center" style="background-image: url({{ asset(Storage::url($background_cuadros->image_path ?? '')) }})">
                @empty(!$header_exercise)
                    <img src="{{ asset(Storage::url($header_exercise->image_path)) }}" alt="" class="ml-10">
                @endempty
            </div>

            <div class="image-section h-6 rounded-lg w-400 h-300 flex items-center bg-azul-muyclaro py-1 mt-1">
                <svg xmlns="http://www.w3.org/2000/svg" class="ml-4 h-5 w-5" viewBox="0 0 20 20" fill="#0F4069">
                    <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-8.707l-3-3a1 1 0 00-1.414 1.414L10.586 9H7a1 1 0 100 2h3.586l-1.293 1.293a1 1 0 101.414 1.414l3-3a1 1 0 000-1.414z" clip-rule="evenodd" />
                  </svg><span class="ml-4 font-bold italic text-azul-oscuro">Desarrollo</span>
            </div>

            @foreach ($development_exercises as $development_exercise)
                <div class="image-section rounded-lg w-400 h-300 flex items-center mt-1" style="background-image: url({{ asset(Storage::url($background_cuaderno->image_path ?? '')) }})">
                    @if (!empty($development_exercise))
                        <img src="{{ asset(Storage::url($development_exercise->image_path)) }}" alt="" class="ml-12">
                    @endif
                </div>
            @endforeach
        </div>

        @if(Auth::check())
            <form method="POST" action="{{ route('exercise.comments_store') }}">
                @csrf
                <input type="hidden" name="exercise_id" value="{{ $exercise->id }}">
                <div class="flex flex-col mb-4">
                    <label for="comment_content" class="mb-2 font-bold text-azul-oscuro text-xs">Agrega un comentario:</label>
                    <textarea name="comment_content" id="comment_content" rows="1" class="text-xs px-3 py-2 bg-gray-200 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-400"></textarea>
                </div>
                <button type="submit" class="text-xs flex items-center bg-azul-semi hover:bg-azul-electrico text-white font-bold py-1 px-3 rounded-full mr-4">Comentar</button>
            </form>
        @endif

        @if($exercise->exercise_comments)
            <div class="mt-8">
                @foreach($exercise->exercise_comments as $comment)
                    <div class="flex items-start mb-4">
                        <div class="mr-2">
                            <img src="{{ asset(Storage::url($comment->user->profile_photo_path)) }}" alt="Foto de perfil de {{ $comment->user->name }}" class="w-6 h-6 rounded-full"> 
                        </div>
                        <div class="flex-1">
                            <div class="flex items-center mb-1">
                                <p class="mr-2 font-bold text-xs text-azul-oscuro">{{ $comment->user->name }}</p>
                                <p class="text-xs text-gray-500">{{ $comment->created_at->diffForHumans() }}</p>
                            </div>
                            <p class="text-gray-900 text-xs">{{ $comment->comment_content }}</p>
                            @auth
                                @if($comment->user_id == Auth::user()->id)
                                    <form action="{{ route('exercise.comments_destroy', $comment->id) }}" method="POST">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="text-xs text-red-500 hover:text-red-700 focus:outline-none">
                                            Eliminar comentario
                                        </button>
                                    </form>
                                @endif
                            @endauth
                        </div>
                    </div>
                @endforeach
            </div>
        @endif

    </div>
</x-AppLayout>


