<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class ContactoMail extends Mailable
{
    use Queueable, SerializesModels;

    public $data;

    public function __construct(array $data)
    {
        $this->data = $data;
        $this->view = 'contacto.emails.contacto';
    }

    public function build()
    {
        return $this->from('noreply@example.com')
                    ->subject('Nuevo mensaje de contacto')
                    ->view('contacto.emails');
    }
}