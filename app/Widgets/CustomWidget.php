<?php
namespace App\Widgets;

use TCG\Voyager\Widgets\BaseDimmer;

class CustomWidget extends BaseDimmer
{
    protected $config = [];

    public function run()
    {
        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-people',
            'title'  => "Clientes",
            'text'   => "Puedes ingresar a ver la lista completa de usuarios registrados en la base de datos.",
            'button' => [
                'text' => 'Ver más',
                'link' => route('voyager.clientes.index'), // Ajusta el enlace según tu caso
            ],
            'image' => voyager_asset('images/widget-backgrounds/01.jpg'),
        ]));
    }

    public function shouldBeDisplayed()
    {
        return true;
    }
}
