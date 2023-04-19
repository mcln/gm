<div>
    <button class="flex items-center bg-azul-claro hover:bg-azul-muyclaro text-azul-oscuro font-bold py-1 px-3 rounded-full mr-4" wire:click.prevent="openVideo()" id="open-video"> 
        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 mr-2 text-blue-500" fill="none" viewBox="0 0 24 24" stroke="#0F4069" stroke-width="2"> 
            <path stroke-linecap="round" stroke-linejoin="round" d="M15 10l4.553-2.276A1 1 0 0121 8.618v6.764a1 1 0 01-1.447.894L15 14M5 18h8a2 2 0 002-2V8a2 2 0 00-2-2H5a2 2 0 00-2 2v8a2 2 0 002 2z" /> 
        </svg> 
        <span>Ver video</span> 
    </button>
    <script>

            window.addEventListener('load', () => {
            window.addEventListener('open-video', event => {
            const iframe = event.detail.iframe;
            const width = 570;
            const height = 350;
            const left = 50;
            const top = 322;
            const popup = window.open('', 'popup', `width=${width}, height=${height}, top=${top}, left=${left}, toolbar=NO, resizable=NO, Location=NO, Menubar=NO, Titlebar=No, Status=NO`);
            popup.document.body.innerHTML = iframe;
            });
            });

    </script>
</div>

{{-- <div>
    <button wire:click="abrirModal()" class="flex items-center bg-azul-claro hover:bg-azul-muyclaro
     text-azul-oscuro font-bold py-1 px-3 rounded-full mr-4">
        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 mr-2 text-blue-500" fill="none" viewBox="0 0 24 24" stroke="#0F4069" stroke-width="2">
            <path stroke-linecap="round" stroke-linejoin="round" 
            d="M15 10l4.553-2.276A1 1 0 0121 8.618v6.764a1 1 0 01-1.447.894L15 14M5 18h8a2 2 0 002-2V8a2 2 0 00-2-2H5a2 2 0 00-2 2v8a2 2 0 002 2z" />
        </svg>
        <span>Ver video</span>
    </button>

    <!-- Modal -->
    <div wire:click.away="closeModal" class="fixed z-10 inset-0 overflow-y-auto bg-azul-oscuro bg-opacity-50" style="display:{{ $showModal ? 'block' : 'none' }}">
        <div class="flex items-center justify-center min-h-screen">
            <div class="bg-white rounded-lg shadow-lg p-4">
                    <video id="video" class="w-full" controls wire:ignore.self>
                        <source src="" type="video/mp4">
                    </video>
            </div>    
        </div>
    </div> 
    
    <script>
        document.addEventListener('livewire:load', function () {
        var video = document.getElementById('video');
        
        Livewire.on('abrirModal', function () { // Escucha el evento
            var videoSrc = 'https://res.cloudinary.com/dbltc2gr7/video/upload/v1681333348/VIDEO-0101001_bh0xsr.mp4'
            video.src = videoSrc;  // Actualiza el src
        });
        
        Livewire.on('closeModal', function () {
            video.src = '';
        });
        });
    </script>
</div> --}}

