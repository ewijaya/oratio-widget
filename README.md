# Oratio

A tabbed Übersicht widget displaying three classic Catholic prayers on the desktop: **Regina Cæli**, **Angelus**, and the **Memorare**.

The Regina Cæli and Angelus are rendered in traditional Latin; the Memorare is shown in English.

## Features

- **Three prayer tabs** — Regina Cæli, Angelus, Memorare.
- **Liturgically-aware default tab** — on first load, the widget picks the appropriate prayer for the current season:
  - **Eastertide** (Easter Sunday → Pentecost, inclusive) → Regina Cæli
  - **Rest of the year** → Angelus
  - Easter is computed per year using Gauss's algorithm; Pentecost is Easter + 49 days.
- **Remembers your choice** — once you click a tab, that selection is saved to `localStorage` and used on every subsequent load, overriding the seasonal default. Memorare is only ever shown by explicit click.
- **Reset to seasonal auto-pick** — open Übersicht's Debug Console and run `localStorage.removeItem('oratio.tab')`, then refresh widgets.

## Install

1. Download or clone this repo.
2. Unzip `oratio.widget.zip` (or copy the `oratio.widget` folder) into your Übersicht widgets directory:
   `~/Library/Application Support/Übersicht/widgets/`
3. Übersicht will auto-load the widget. If not, click the Übersicht menu bar icon → **Refresh All Widgets**.

## Customize

All styling, text, and position live in `oratio.widget/index.coffee`:

- **Position** — edit the `top`/`left` values in the `style` block (e.g. `top: 60px`, `left: 40px`).
- **Size** — adjust `width` and the various `font-size` values.
- **Text** — swap the Latin for English (or vice versa) inside each `<div class="panel">`.

The widget auto-reloads on save.

## Tabs

Click a tab to switch prayers. If tab clicks don't register on your setup (a known macOS desktop-layer quirk), you can comment out all but one panel's `display: none` rule in the CSS.

## License

Prayer texts are public-domain traditional Catholic prayers. Widget code is released under the MIT License.
