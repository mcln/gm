//BOOSTRAP
import './bootstrap';

//FILEPOND
/* import * as FilePond from 'filepond';
// Get a reference to the file input element
const inputElement = document.querySelector('input[type="file"]');
// Create a FilePond instance
const pond = FilePond.create(inputElement); */

//ALPINE
import Alpine from 'alpinejs';
import focus from '@alpinejs/focus';
window.Alpine = Alpine;

Alpine.plugin(focus);
Alpine.start();

//SWEETALERT2
import Swal from 'sweetalert2';
window.Swal = Swal;