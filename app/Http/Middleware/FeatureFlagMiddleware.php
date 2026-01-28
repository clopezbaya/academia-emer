<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class FeatureFlagMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next, $featureName): Response
    {
        // Verifica si la funcionalidad está deshabilitada en la configuración
        if (!config("features.$featureName", true)) { // El segundo parámetro 'true' es el valor por defecto si la key no existe
            // Puedes redirigir a una página de error, al home, o abortar
            abort(404, "La funcionalidad $featureName no está disponible en este momento.");
            // O, si prefieres redirigir con un mensaje:
            // return redirect()->route('home')->with('error', "La funcionalidad $featureName no está disponible.");
        }

        return $next($request);
    }
}
