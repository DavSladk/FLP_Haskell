Dle opory TIN je pro minimalizaci třeba provést následující kroky:
* odstranit nedosažitelné stavy - naimplementováno
* převést automat do plně definovaného stavu - naimplementováno
* samotná minimalizace - implementováno
* odstranění všech SINK stavů - implementováno

## Bugy
* program prnopláňově neprovádí žádné akce pro převedení automatu do kanonického stavu. Avšak v průběhu algoritmu je na několika místech volány funkce nub a sort, tak by aspoň některé části automaut měli být v kanonickém stavu. Každopádně pokud odstraňovaný sink state není poslední, tak to kanonický stav automatu rozbije (pokud v něm byl).

## Testy
* test0 - automat z opory TIN
* test1 - odstraňování nedosažitelných stavů
* test2 - odstraňování sink stavů
