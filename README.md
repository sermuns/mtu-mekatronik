# Mekatronik 1

För att generera hemsidan behöver du `mdbook` och några plugins.

Med fördel kan du använda `mise` för att installera allt smidigt.

Instruktionerna nedan skrivna för Linux. Fungerar säkert liknande på Windows och MacOS också.

1. Installera `mise`, följ instruktionerna här: https://mise.jdx.dev/getting-started.html
    ```sh
    curl https://mise.run | sh
    ````

2. (Se till att `mise` automatiskt aktiveras i ditt skal): https://mise.jdx.dev/getting-started.html#activate-mise

3. Klona och gå in i projektets katalog.
    ```sh
    git clone git@github.com:sermuns/mtu-mekatronik.git
    cd mtu-mekatronik
    ```

4. Aktivera `mise`-miljön. Alla verktyg borde installeras.

    ```sh
    mise trust
    mise install
    ```

5. Du kan starta lokal förhandsgranskning av sidan med
    ```sh
    mdbook serve
    ```

6. Öppna sidan i webbläsare: http://localhost:3000

När ändringar i `src/` görs, och en git push sker, kommer en github action automatiskt publicera ändringarna till den publika sidan.

## Struktur

```sh
.
├── book.toml   # konfiguration för hemsidan, se https://rust-lang.github.io/mdBook/format/configuration/index.html
├── build       # den genererade hemsidan. Skapas med `mdbook build`
├── prov        # prov skapade i Typst. Finns en till README.md där.
├── src         # innehåll för hemsidan, i Markdown-format.
└── theme       # små stilförändringar på hemsidan, se https://rust-lang.github.io/mdBook/format/theme/index.html?highlight=theme#theme
```
