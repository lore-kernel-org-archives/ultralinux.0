From: marty@caltrans.ca.gov (Marty Lucich)
Date: Fri, 09 Apr 1999 00:48:18 +0000
Subject: 1.1.9 net boot failer on E3500
Message-Id: <marc-linux-ultrasparc-92361951417169@msgid-missing>
List-Id: <ultralinux.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
To: ultralinux@vger.kernel.org

Greetings,

I just downloaded
ftp://ultra.linux.cz/pub/ultrapenguin-1.1.9/sparc64/images/tftprescue.img
dated Tue Apr  6 19:37:00 1999.  When I tried to boot it on an E3500
it didn't get far.

Rebooting with command: boot net
Boot device: /sbus@3,0/SUNW,hme@3,8c00000  File and args:=20
Using Onboard Transceiver - Link Up.=20
34ae00=20
Server  IP address: 149.136.180.12=20
Client  IP address: 149.136.180.4=20
TILO

Fast Data Access MMU Miss
{6} ok=20

Is this a known problem?  Is it really even a problem?
The full console messages follow.

Thanks

-m

----------------------------------------------------------------------

{6} ok boot net
Resetting...=20

Software Power ON

@(#) Ultra Enterprise 3.2 Version 18 created 1998/09/10 14:13
CPU =3D 0000.0000.0000.0006
Probing keyboard Done

3,0>
3,0>@(#) POST 3.9.4 1998/06/09 16:25
3,0>
    SelfTest Initializing (Diag Level 10, ENV 00004001) IMPL 0011 MASK 20
3,0>Board 3 CPU FPROM Test
3,0>Board 3 Basic CPU Test
3,0>    Set CPU UPA Config and Init SDB Data
3,0>	SRAM Mode =3D 22, Clock Mode =3D 4:1, PCON =3D 6fa, MCAP =3D 0
3,0>Board 3 MMU Enable Test
3,0>    DMMU Init
3,0>    IMMU Init
3,0>    Mapping Selftest Enabling MMUs
3,0>Board 3 Ecache Test
3,0>    Ecache Probe
3,0>    Ecache Tags
3,0>    Ecache Quick Verify
3,0>    Ecache Init
3,0>    Ecache RAM
3,0>    Ecache Address Line
3,0>    Configure Ecache Limit
3,0>Ecache Size =3D 00400000,  Limited to 00400000=20
3,0>Board 3 FPU Functional Test
3,0>    FPU Enable
3,0>Board 3 Board Master Select Test
3,0>    Selecting a Board Master
3,0>Board 3 FireHose Devices Test
3,0>Board 3 Address Controller Test
3,0>    AC Initialization
3,0>    AC DTAG Init
3,0>Board 3 Dual Tags Test
3,0>    AC DTAG Init
3,0>Board 3 FireHose Controller Test
3,0>    FHC Initialization
3,0>Board 3 JTAG Test
3,0>    Verify System Board Scan Ring
3,0>Board 3 Centerplane Test
3,0>    Centerplane Join
3,0>Setting JTAG Master
3,0>Clear JTAG Master
3,0>Board 3 Setup Cache Size Test
3,0>    Setting Up Cache Size
3,0>Board 3 System Master Select Test
3,0>    Setting System Master
3,0>POST Master Selected (JTAG,CENTRAL)
3,0>Board 16 Clock Board Test
3,0>    Clock Board Initialization
3,0>    Clock Board Temperature Check
3,0>Board 16 Clock Board Serial Ports Test
3,0>Board 16 NVRAM Devices Test
3,0>    M48T59 (TOD) Init
3,0>Board 3 System Board Probe  Test
3,0>    Probing all CPU/Memory BDA
3,0>    Probing System Boards
3,0>    Probing CPU Module JTAG Rings
3,0>Setting System Clock Frequency
3,0>	CPU Module mid 6 Checked in OK (speed code =3D 7)
3,0>	CPU mid 14 Version=00170011.20000507
3,0>	CPU Module mid 14 Checked in OK (speed code =3D 7)
3,0>System Frequency (MHz),fcpu36, fmod=168, fsys=84, fgen36
3,0>TESTING BOARD 1
3,0>Board 1 JTAG Test
3,0>    Verify System Board Scan Ring
3,0>Board 1 Centerplane Test
3,0>    Centerplane Check
3,0>Board 1 Address Controller Test
3,0>    AC Initialization
3,0>Setting Freq to 25MHZ
3,0>    AC DTAG Init
3,0>Board 1 FireHose Controller Test
3,0>    FHC Initialization
3,0>Board 1 NVRAM Devices Test
3,0>    M48T59 (TOD) Init
3,0>TESTING BOARD 5
3,0>Board 5 JTAG Test
3,0>    Verify System Board Scan Ring
3,0>Board 5 Centerplane Test
3,0>    Centerplane Check
3,0>Board 5 Address Controller Test
3,0>    AC Initialization
3,0>Setting Freq to 25MHZ
3,0>    AC DTAG Init
3,0>Board 5 FireHose Controller Test
3,0>    FHC Initialization
3,0>Board 5 NVRAM Devices Test
3,0>    M48T59 (TOD) Init
3,0>Re-mapping to Local Device Space
3,0>Begin Central Space Serial Port access
3,0>Enable AC Control Parity
3,0>Hotplug Trigger Test
3,0>Init Counters for Hotplug
3,0>Board 3 Cross Calls Test
3,0>Board 3 Environmental Probe Test
3,0>    Environmental Probe
3,0>Checking Power Supply Configuration
3,0>Power is adequate, load 4 ps 2
3,0>Use existing memory configuraton=20
3,0>TESTING IO BOARD 1
3,0>Board 1 I/O FPROM Test
3,0>@(#) iPOST 3.4.6 1998/04/16 14:22
3,0> TESTING IO BOARD 1 ASICs
3,0> TESTING SysIO Port 0
3,0>Board 1 SysIO Registers Test
3,0>    SysIO Register Initialization
3,0>    SysIO RAM Initialization
3,0>Board 1 SysIO Functional Test
3,0>    Clear Interrupt Map and State Registers
3,0>Board 1 OnBoard IO Chipset (SOC) Test
3,0> TESTING SysIO Port 1
3,0>Board 1 SysIO Registers Test
3,0>    SysIO Register Initialization
3,0>    SysIO RAM Initialization
3,0>Board 1 SysIO Functional Test
3,0>    Clear Interrupt Map and State Registers
3,0>Board 1 OnBoard IO Chipset (FEPS) Test
3,0>IO BOARD 1 TESTED
3,0>TESTING IO BOARD 5
3,0>Board 5 I/O FPROM Test
3,0>@(#) iPOST 3.4.4 1997/08/26 17:37
3,0> TESTING IO BOARD 5 ASICs
3,0> TESTING SysIO Port 0
3,0>Board 5 SysIO Registers Test
3,0>    SysIO Register Initialization
3,0>    SysIO RAM Initialization
3,0>Board 5 SysIO Functional Test
3,0>    Clear Interrupt Map and State Registers
3,0>Board 5 OnBoard IO Chipset (SOC) Test
3,0> TESTING SysIO Port 1
3,0>Board 5 SysIO Registers Test
3,0>    SysIO Register Initialization
3,0>    SysIO RAM Initialization
3,0>Board 5 SysIO Functional Test
3,0>    Clear Interrupt Map and State Registers
3,0>Board 5 OnBoard IO Chipset (FEPS) Test
3,0>IO BOARD 5 TESTED
3,0>Probing for Disk System boards
3,0>Board 3 System Interrupts Test
3,0>
3,0>	System Board Status
3,0>-----------------------------------------------------------------
3,0> Slot   Board Status     Board Type      Failures
3,0>-----------------------------------------------------------------
3,0>  0  | Not installed  |             |
3,0>  1  | Normal         |+IO Type 4   |
3,0>  2  | Not installed  |             |
3,0>  3  | Normal         |+CPU/Memory  |
3,0>  4  | Not installed  |             |
3,0>  5  | Normal         |+IO Type 4   |
3,0>  6  | Not installed  |             |
3,0>  7  | Normal         |+CPU/Memory  |
3,0>  8  | Not installed  |             |
3,0>  9  | Not installed  |             |
3,0> 16  | Normal         | Clock Board |
3,0>-----------------------------------------------------------------
3,0>
3,0>	CPU Module Status
3,0>-----------------------------------------------------------------
3,0> MID  OK  Cache  Speed   Version
3,0>-----------------------------------------------------------------
3,0>  6 | y | 4096  |  336  | 00170011.20000507
3,0> 14 | y | 4096  |  336  | 00170011.20000507
3,0>-----------------------------------------------------------------
3,0>System Frequency (MHz),fcpu36, fmod=168, fsys=84, fgen36
3,0>	Populated Memory Bank Status
3,0>		bd #	Size	Address	Way	Status
3,0>		3	1024	0	2	Normal
3,0>		7	1024	1	2	Normal
3,0>
3,0>
	POST COMPLETE
3,0>Entering OBP

Switching to high addresses=20
Setting up TLBs Done
MMU ON
PC =3D 0000.01ff.f000.1ea8
PC =3D 0000.0000.0000.1f14
Decompressing in Memory Done
Size =3D 0000.0000.0007.01b0
ttya initialized
Using POST's System Configuration
Setting up memory
Starting CPU ID 14=20
fhc ac simm-status environment sram flashprom SUNW,UltraSPARC-II=20
fhc ac simm-status environment sram flashprom SUNW,UltraSPARC-II=20
Probing UPA Slot at 2,0   sbus fhc ac environment flashprom eeprom sbus-spe=
ed counter-timer=20
Probing UPA Slot at 3,0   sbus counter-timer=20
Probing UPA Slot at a,0   sbus fhc ac environment flashprom eeprom sbus-spe=
ed counter-timer=20
Probing UPA Slot at b,0   sbus counter-timer=20
Probing /sbus@2,0 at d,0  SUNW,socal sf ssd sf ssd=20
Probing /sbus@2,0 at 1,0  Nothing there
Probing /sbus@2,0 at 2,0  Nothing there
Probing /sbus@3,0 at 3,0  SUNW,hme SUNW,fas sd st=20
Probing /sbus@3,0 at 0,0  Nothing there
Probing /sbus@a,0 at d,0  SUNW,socal sf ssd sf ssd=20
Probing /sbus@a,0 at 1,0  Nothing there
Probing /sbus@a,0 at 2,0  SUNW,ba=20
Probing /sbus@b,0 at 3,0  SUNW,hme SUNW,fas sd st=20
Probing /sbus@b,0 at 0,0  Nothing there
screen not found.
Can't open input device.
Keyboard not present.  Using ttya for input and output.
Using POST's System Configuration
Setting up memory
Starting CPU ID 14=20
fhc ac simm-status environment sram flashprom SUNW,UltraSPARC-II=20
fhc ac simm-status environment sram flashprom SUNW,UltraSPARC-II=20
Probing UPA Slot at 2,0   sbus fhc ac environment flashprom eeprom sbus-spe=
ed counter-timer=20
Probing UPA Slot at 3,0   sbus counter-timer=20
Probing UPA Slot at a,0   sbus fhc ac environment flashprom eeprom sbus-spe=
ed counter-timer=20
Probing UPA Slot at b,0   sbus counter-timer=20
Probing /sbus@2,0 at d,0  SUNW,socal sf ssd sf ssd=20
Probing /sbus@2,0 at 1,0  Nothing there
Probing /sbus@2,0 at 2,0  Nothing there
Probing /sbus@3,0 at 3,0  SUNW,hme SUNW,fas sd st=20
Probing /sbus@3,0 at 0,0  Nothing there
Probing /sbus@a,0 at d,0  SUNW,socal sf ssd sf ssd=20
Probing /sbus@a,0 at 1,0  Nothing there
Probing /sbus@a,0 at 2,0  SUNW,ba=20
Probing /sbus@b,0 at 3,0  SUNW,hme SUNW,fas sd st=20
Probing /sbus@b,0 at 0,0  Nothing there

5-slot Sun Enterprise E3500, No Keyboard
OpenBoot 3.2.18, 2048 MB memory installed, Serial #10378427.
Ethernet address 8:0:20:9e:5c:bb, Host ID: 809e5cbb.



Rebooting with command: boot net
Boot device: /sbus@3,0/SUNW,hme@3,8c00000  File and args:=20
Using Onboard Transceiver - Link Up.=20
34ae00=20
Server  IP address: 149.136.180.12=20
Client  IP address: 149.136.180.4=20
TILO

Fast Data Access MMU Miss
{6} ok=20
