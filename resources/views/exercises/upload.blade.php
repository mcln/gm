<x-app-layout>
    <div class="flex justify-center items-center h-screen">
        <div class="bg-white p-8 rounded shadow-lg">
            <h2 class="text-2xl font-bold text-center mb-6">Sube tu Ejercicio y te lo Resolvemos</h2>
            <form method="POST" action="{{ route('upload.upload') }}" enctype="multipart/form-data">
                @csrf
                <div class="mb-4 text-center">
                    <label for="file" class="block text-gray-700 text-sm font-bold mb-2">Arrastra y suelta tu imagen o haz clic aquí</label>
                    <div id="dropzone" class="border border-gray-300 p-8 bg-gray-100 rounded-lg">
                        <input type="file" name="file" id="file" class="hidden" multiple>
                        <div id="drag-text" class="flex flex-col items-center">
                            <svg class="mx-auto h-12 w-12 mb-3 text-gray-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 9l4-4 4 4m0 6l-4 4-4-4"></path>
                            </svg>
                            <p class="text-gray-400">Arrastra y suelta aquí</p>
                        </div>
                        <div id="dropped-file" class="hidden mt-4">
                            <p id="filename" class="text-gray-700"></p>
                            <div class="flex justify-center items-center">
                                <img id="preview" class="max-w-200 max-h-200" />
                            </div>
                        </div>
                    </div>
                </div>
                <button type="submit" class="bg-blue-500 hover:bg-blue-600 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline">
                    Subir Archivo
                </button>
            </form>
        </div>
    </div>

    <style>
        #dropzone.dragover {
            background-color: #F3F4F6;
        }
    </style>

    <script>
        const dropzone = document.getElementById('dropzone');
        const filenameElement = document.getElementById('filename');
        const droppedFile = document.getElementById('dropped-file');
        const previewImage = document.getElementById('preview');

        dropzone.addEventListener('dragover', (e) => {
            e.preventDefault();
            dropzone.classList.add('dragover');
        });

        dropzone.addEventListener('dragleave', (e) => {
            e.preventDefault();
            dropzone.classList.remove('dragover');
        });

        dropzone.addEventListener('drop', (e) => {
            e.preventDefault();
            dropzone.classList.remove('dragover');
            const fileInput = document.getElementById('file');
            fileInput.files = e.dataTransfer.files;

            if (fileInput.files.length > 0) {
                const file = fileInput.files[0];
                const filename = file.name;
                filenameElement.textContent = filename;
                droppedFile.classList.remove('hidden');

                const reader = new FileReader();
                reader.onload = function (e) {
                    const img = new Image();
                    img.src = e.target.result;
                    img.onload = function () {
                        const canvas = document.createElement('canvas');
                        const ctx = canvas.getContext('2d');
                        const MAX_SIZE = 200;
                        let width = img.width;
                        let height = img.height;

                        if (width > height) {
                            if (width > MAX_SIZE) {
                                height *= MAX_SIZE / width;
                                width = MAX_SIZE;
                            }
                        } else {
                            if (height > MAX_SIZE) {
                                width *= MAX_SIZE / height;
                                height = MAX_SIZE;
                            }
                        }

                        canvas.width = width;
                        canvas.height = height;
                        ctx.drawImage(img, 0, 0, width, height);

                        previewImage.src = canvas.toDataURL('image/jpeg');
                    };
                };
                reader.readAsDataURL(file);
            }
        });
    </script>
</x-app-layout>