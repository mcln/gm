//BOOSTRAP
import './bootstrap';

//ALPINE
import Alpine from 'alpinejs';
import focus from '@alpinejs/focus';
window.Alpine = Alpine;

Alpine.plugin(focus);
Alpine.start();

//SWEETALERT2
import Swal from 'sweetalert2';
window.Swal = Swal;