## Verexo Odznaki

### Opis

Verexo Odznaki to skrypt stworzony dla serwerów roleplay w FiveM, który umożliwia interakcję z odznakami służbowymi w grze. Skrypt pozwala na wyświetlanie danych użytkowników, takich jak imię, nazwisko, stopień służbowy oraz odznaka, na odznakach w grze w zależności od rodzaju służby, do której należy gracz.

### Funkcje

- Wyświetlanie danych użytkownika na odznakach w grze.
- Obsługa różnych rodzajów służb, takich jak policja, straż pożarna, medycy itp.
- Personalizacja wyglądu odznak z możliwością dodawania własnych tekstur.

### Instrukcje

1. Umieść skrypt w odpowiednim katalogu na serwerze FiveM.
2. Uruchom serwer i upewnij się, że skrypt jest poprawnie załadowany.
3. Zarejestruj swoje odznaki w pliku konfiguracyjnym, określając ich właściwości i wygląd.
4. Skonfiguruj interakcje z odznakami w skrypcie gry, aby umożliwić wyświetlanie danych użytkowników.

### Przykładowe Użycie

```lua
-- Otwieranie odznaki w grze
RegisterNetEvent("verexo:openbadge")
AddEventHandler("verexo:openbadge", function(type)
    -- Logika otwierania odznaki w grze
end)
```

## Licencja
Projekt jest dostępny na licencji MIT. Zobacz plik `LICENSE` po więcej informacji.
