$(document).ready(function () {
    $('#cliente-form').validate({
        rules: {
            'cliente[nombre]': {
                required: true
            },
            'cliente[email]': {
                required: true,
                email: true
            },
            'cliente[telefono]': {
                required: true,
                digits: true
            }
        },
        messages: {
            'cliente[nombre]': {
                required: 'Por favor, ingresa tu nombre'
            },
            'cliente[email]': {
                required: 'Por favor, ingresa tu correo electrónico',
                email: 'Por favor, ingresa un correo electrónico válido'
            },
            'cliente[telefono]': {
                required: 'Por favor, ingresa tu número de teléfono',
                digits: 'Por favor, ingresa solo dígitos'
            }
        }
    });
});
