# NJ-Notifications
FiveM ESX Notifications by Nightt#8899 &amp; TusMuertos.#4903

- | Preview: https://streamable.com/woxj84
- | Discord: https://discord.gg/JF7T9Ynd7Y








**Proceso de instalación**:
Pasos para instalar las notificaciones y que sean funcionales:

 1 - Mueve a tu carpeta `resources` el script.
 
 2 - Añade a tu server.cfg la siguiente linea `` ensure NJ-Notifications `` 
 
 *De esta forma siempre al iniciar el servidor se iniciara el script)*
 
 
 
 3 - Dirigete al script `es_extended` y añade las siguientes lineas de código: `ESX.ShowNotification = function(msg, type)
    TriggerEvent('nj_notifications:Notification', msg, 'INFO')
end`
 
 
 4 - Disfrutar! Las notificaciones deberían de funcionar perfectamente. Cualquier duda abre ticket en discord o pregunta. 
 
 
 ***Resource made by: TusMuertos.#4903 & Nightt#8899***
