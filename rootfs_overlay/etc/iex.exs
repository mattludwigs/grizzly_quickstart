# Add Toolshed helpers to the IEx session
use Toolshed

if RingLogger in Application.get_env(:logger, :backends, []) do
  IO.puts([
    IO.ANSI.color(5),
    """

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

    """,
    IO.ANSI.reset(),
    """
                        Grizzly Quickstart

    RingLogger is collecting log messages from Elixir and Linux. To see the
    messages, either attach the current IEx session to the logger:

      RingLogger.attach

    or print the next messages in the log:

      RingLogger.next
    """
  ])
end

# Be careful when adding to this file. Nearly any error can crash the VM and
# cause a reboot.
