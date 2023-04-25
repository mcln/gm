<div>
  @if(auth()->check())
      <button class="flex items-center bg-azul-claro hover:bg-azul-muyclaro text-azul-oscuro font-bold py-1 px-3 rounded-full mr-4" wire:click="$set('showModal', true)">
          <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 mr-2" fill="none" viewBox="0 0 24 24" stroke="#0F4069" stroke-width="2">
              <path stroke-linecap="round" stroke-linejoin="round" d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9" />
          </svg>Reportar
      </button>

      <div class="fixed z-10 inset-0 overflow-y-auto bg-azul-oscuro bg-opacity-50" style="display: {{ $showModal ? 'block' : 'none' }}" wire:keydown.escape="showModal = false">
          <div class="flex items-center justify-center min-h-screen">
              <div class="bg-azul-claro rounded-lg overflow-hidden shadow-xl max-w-md w-full">
                  <div class="px-6 py-4">
                      <div class="flex items-center justify-between">
                          <h3 class="text-lg font-medium text-gray-900">Reportar un problema con el ejercicio</h3>
                          <button class="text-gray-400 hover:text-gray-500 transition ease-in-out duration-150 focus:outline-none" wire:click="$set('showModal', false)">
                              <svg class="h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
                              </svg>
                          </button>
                      </div>
                      <form class="mt-1" wire:submit.prevent="submit">
                          <div>
                              <label for="description" class="block text-sm font-medium text-gray-700 mb-2">Descripción del problema</label>
                              <textarea id="description" name="description_error" rows="1" wire:model.defer="description_error" class="form-input rounded-md shadow-sm mt-1 text-sm block w-full" required></textarea>
                              @error('description')
                                  <p class="text-red-500 text-xs mt-1">{{ $message }}</p>
                              @enderror
                          </div>
                          <div class="flex flex-col mt-4">
                              <span wire:show="showSuccessMessage" class="font-bold text-center mb-2 text-green-500">Reporte enviado satisfactoriamente.</span>
                              <button type="submit" class="inline-block bg-azul-oscuro hover:bg-azul-electrico text-white font-bold py-2 px-4 rounded-full">
                                  Enviar reporte
                              </button>
                          </div>
                      </form>
                  </div>
              </div>
          </div>
      </div>
  @endif
</div>









