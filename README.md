# Toggle Tunlr

**Tunlr: <http://tunlr.net/>**

This Alfred extension changes your Wi-Fi DNS settings to the Tunlr servers and
back again.

The script naïvely assumes that you are using a Wi-Fi network and that you
normally don't have any DNS servers manually set.

On Mountain Lion (OS X 10.8) OS X User Notifications are sent using
Eloy Durán's [terninal-notifier](https://github.com/alloy/terminal-notifier)
(the precompiled binary is included).

## Installation

*This assumes that you have already installed [Alfred](http://www.alfredapp.com/).*

1. Download the latest release from the [Downloads page](https://github.com/k33l0r/toggle_tunlr/downloads)
2. Double click the downloaded file

## Usage

*Note: All commands except for `tunlr status` require administrator privileges.*

*All notifications require Mountain Lion (OS X 10.8), including `tunlr status`.*

Toggle the Tunlr nameservers on and off: `tunlr`

Switch the Tunlr nameservers on: `tunlr on`

Switch the Tunlr nameservers off: `tunlr off`

Check the what the current nameservers are: `tunlr status`

## License and copyright

MIT License. Copyright (C) 2012 by Matias Korhonen

See the LICENSE file for details.
