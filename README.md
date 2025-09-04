# Mekatronik 1

För att generera hemsidan behöver du `mdbook` och några plugins. Med fördel kan du använda `mise` för detta.

Instruktionerna nedan skrivna för Linux. Kanske funkar på Windows och MacOS också.

1. Installera `mise`:
    ```sh
    curl https://mise.run | sh
    ````

2. Klona och gå in i projektets katalog.
    ```sh
    git clone git@github.com:sermuns/mtu-mekatronik.git
    cd mtu-mekatronik
    ```

3. Aktivera `mise`-miljön. Alla verktyg borde installeras.

    ```sh
    mise trust
    mise install
    ```

4. Du kan starta lokal förhandsgranskning av sidan med
    ```sh
    mdbook serve
    ```

5. Öppna sidan i webbläsare: http://localhost:3000

## Struktur

```sh
.
├── book.toml   # konfiguration för hemsidan, se https://rust-lang.github.io/mdBook/format/configuration/index.html
├── build       # den genererade hemsidan. Skapas med `mdbook build`
├── prov        # prov skapade i Typst. Finns en till README.md där.
├── src         # innehåll för hemsidan, i Markdown-format.
└── theme       # små stilförändringar på hemsidan, se https://rust-lang.github.io/mdBook/format/theme/index.html?highlight=theme#theme
```
