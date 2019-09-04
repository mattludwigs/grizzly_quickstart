# Grizzly Quick Start Firmware

The Grizzly quickstart firmware lets you try out the Grizzly library on real
hardware without needing to create a Nerves project. Within minutes, you'll
have a device running Nerves. You'll be able to explore the Nerves environment
with toolshed, and control Z-Wave devices from the device itself.

## Prerequisites

To work through this tutorial, you'll need any Raspberry Pi 3. The firmware is
configured to use HDMI output, so a HDMI monitor and keyboard. Also, if you have
Ethernet available you may use ssh over Ethernet to connect to the board.

For this tutorial, you'll also need

* 1 MicroSD card
* [fwup](https://github.com/fhunleth/fwup) or [etcher](https://www.balena.io/etcher/) for burning firmware to the MicroSD card
* [Z-Wave Bridge Controller](https://www.digikey.com/products/en?mpart=ACC-UZB3-U-BRG&v=336)

## Downloading the Firmware

Find the appropriate firmware or zip file
[here](https://github.com/mattludwigs/girzzly_quickstart/releases). If
you're using `fwup` to write images to MicroSD cards, download the `.fw`
extension and if you're using `etcher`, get the `zip` file.

## Burning the Firmware

Navigate to the directory where you downloaded the firmware. We'll go through
both `fwup` and `etcher` methods.

To be clear, this formats your SD card, and you will *lose all data on the SD
card*. Make sure you're OK with that.

### `fwup`

```console
λ ~/fwup grizzly_quick_start.fw
Use 15.84 GB memory card found at /dev/rdisk2? [y/N] y
```

Depending on your OS, you'll likely be asked to authenticate this action. Go
ahead and do so.

```console
|====================================| 100% (31.81 / 31.81) MB
Success!
Elapsed time: 3.595 s
```

It's quite fast. Now you have Nerves ready to run on your device.  Skip ahead to
the next section.

### `etcher`

Start `etcher`, point it to the zip file, and follow the prompts:

![etcher screenshot](assets/etcher.png)


## Connecting to the board

You can either connect to an HDMI monitor and keyboard, or you can use Ethernet with `ssh`.

ssh username is `grizzly` and password is `grizzly`.

```
$ ssh grizzly@nerves.local
SSH server
Enter password for "grizzly"
password:

Interactive Elixir (1.9.0) - press Ctrl+C to exit (type h() ENTER for help)
Toolshed imported. Run h(Toolshed) for more info

   MMWKo;;:;:dKWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWWWMMMMMMMMMM
   MKl'.  ....'dXMMMMMMMMWNKXWMMMMMMMMMMMMMMMMMMWk:c0MMMMMMMMMM
   O,   .,cdkd::0MMMMWWWWWXKXWWWWWWWWWMMMWWWWWWMN: .xMMWWMMMMWM
   :  .'lXMWWWWWWMXd:;,,oKd;lK0c;;;;;;lKOc;;;;;o0c .xNd;c0MXo;l
   ;  .'lXMKoc::cOk. .:lk0; .kKocc'  .lX0oc'  .o0: .xWd. :Kd. l
   d.....cxxc.  .kk. ;KMMX; .kMXd:. ,kWMMXo..;OWN: .xMXc .;' ,K
   Nx,.....    'xNO. ;XMMX; .kK:   .lxkX0;  'oxOKc  :KWK;   .kW
   MWXxc;'....:0MM0:.lXMMXl.;Ox'......;kd'.....:00:.'xNNk. .xWM
   MMMMMWNXXXXNWMMWNXNMMMMNXNWWXXXXXXXNWWXXXXXXNWMWNX0l,. .xNMM
   MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKl'':OWMMM

                      Grizzly Quickstart

RingLogger is collecting log messages from Elixir and Linux. To see the
messages, either attach the current IEx session to the logger:

  RingLogger.attach

or print the next messages in the log:

  RingLogger.next

iex(1)>
```

## Going further

After getting all set up see [Grizzly's usage](https://github.com/smartrent/grizzly#usage) documentation.

