<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

use Illuminate\Support\Facades\RateLimiter;
use Illuminate\Support\Str;

class ThrottleLogin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next)
    {
        $key = Str::lower($request->input('email')) . '|' . $request->ip();
        if (RateLimiter::tooManyAttempts($key, 3)) {
            $seconds = RateLimiter::availableIn($key);
            return redirect()->back()->withErrors([
                'error' => "Has alcanzado el límite de intentos. Inténtalo de nuevo en $seconds segundos."
            ]);
        }

        RateLimiter::hit($key, 30);
        
        return $next($request);
    }
}
