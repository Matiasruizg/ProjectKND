<?php
namespace App\Widgets;

use TCG\Voyager\Widgets\BaseDimmer;

class Facturas extends BaseDimmer
{
    protected $config = [];

    public function run()
    {
        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-company',
            'title'  => "Facturas",
            'text'   => "Puedes ingresar a ver la lista completa de facturas generadas por los clientes al realizar la compra desde la APP en la base de datos.",
            'button' => [
                'text' => 'Ver más',
                'link' => route('voyager.facturas.index'), // Ajusta el enlace según tu caso
            ],
            'image' => voyager_asset('images/widget-backgrounds/01.jpg'),
        ]));
    }

    public function shouldBeDisplayed()
    {
        return true;
    }
}
