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
            const left = 1000;
            const top = 400;
            const popup = window.open('', 'popup', `width=${width}, height=${height}, top=${top}, left=${left}, toolbar=NO, resizable=NO, Location=NO, Menubar=NO, Titlebar=No, Status=NO`);
            popup.document.body.innerHTML = iframe;
            });
            });

    </script>
</div>

