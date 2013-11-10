import QtQuick 2.1
import Qt.labs.presentation 1.0
import QtQuick.Controls 1.0
import QtQuick.Particles 2.0

ApplicationWindow {
    id: mainWindow
    width: 1280
    height: 720

    visible: true
    property bool fullscreen: false

    Presentation {
        anchors.fill: parent

        Keys.onPressed: {
            if(event.key === Qt.Key_F12) {
                //toggle fullscreen
                if (mainWindow.fullscreen)
                    mainWindow.showNormal();
                else
                    mainWindow.showFullScreen();
                mainWindow.fullscreen = !mainWindow.fullscreen;
            }
        }

        Rectangle {
            anchors.fill: parent
            antialiasing: true
            color: "#1e1b18"

//            ParticleSystem{
//                id: particles
//            }
//            ImageParticle{
//                anchors.fill: parent
//                system: particles
//                source: "images/particle.png"
//                alpha: 0
//                color: "#14aaff"
//            }

//            Emitter{
//                anchors.fill: parent
//                system: particles
//                emitRate: Math.sqrt(parent.width * parent.height) / 30
//                lifeSpan: 2000
//                size: 4
//                sizeVariation: 2

//                acceleration: AngleDirection { angle: 90; angleVariation: 360; magnitude: 20; }
//                velocity: AngleDirection { angle: -90; angleVariation: 360; magnitude: 10; }
//            }
        }

        Clock {
            id: clock
            textColor: "#80c342"
        }
        Image {
            id: digiaLogo
            source: "images/digia.png"
            anchors.bottom: parent.bottom;
            anchors.right: parent.right;
            anchors.margins: clock.font.pixelSize
        }

        titleColor: "#80c342"
        textColor: "#80c342"

        //showNotes: true

        Slide {
            centeredText: "Qt Enterprise Embedded"
            fontScale: 2
            notes: ""
        }

        Slide {
            title: "Introduction"
            content: [
                "Andy Nichols",
                "Digia, plc",
                "Qt Developer",
                "freenode irc: nezticle",
                "twitter: @nezticle"
            ]


            FramedImage {
                height: 320
                width: 320
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.rightMargin: 20
                source: "images/nezticle.jpeg"
            }
        }

        Slide {
            title: "Overview"
            content: [
                "What is Qt Enterprise Embedded",
                "Operating System choices",
                "Qt Enterprise Embedded Demonstration",
                "Example Usecase"
            ]

        }

        Slide {
            centeredText: "What is Qt Enterprise Embedded?"
            fontScale: 2
            notes: "
A research project
2 tech preview releases"

        }

        Slide {
            title: "Lightweight UI Stack"
            FramedImage {
                anchors.centerIn: parent
                source: "images/ui-stack.png"
                visibleFrame: false;
            }
        }

        Slide {
            title: "Ready-made images"
            FramedImage {
                source: "images/SD_card.png"
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                visibleFrame: false;
            }
            FramedImage {
                source: "images/tablet.png"
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                visibleFrame: false;
            }
        }

        Slide {
            title: "Full QtCreator integration"
            FramedImage {
                anchors.centerIn: parent
                height: parent.height
                source: "images/qtcreator.png"
                visibleFrame: false
            }

        }

        Slide {
            title: "Simulator"
            FramedImage {
                anchors.centerIn: parent
                height: parent.height
                source: "images/simulator.png"
                visibleFrame: false

            }
        }

        Slide {
            centeredText: "Our Goal:\nEmbedded Development from day 1"
        }

        Slide {
            centeredText: "Embedded Android or Embedded Linux?"
            fontScale: 2
        }

        Slide {
            title: "Embedded Android Benefits"
            content: [
                "Optimized Builds",
                "Optimized and well tested drivers",
                "Use Android without fighting the existing UI",
                "Fully native applications, no Dalvik or JNI"]
        }

        Slide {
            title: "Embedded Android Issues"
            content: [
                "Bionic libc",
                "Truncated set of Supported Modules",
                "Must use NDK to build 3rd party libraries"
            ]
        }

        Slide {
            title: "Embedded Android Module Support"
            content: [
                "Qt Core, Qt Gui, Qt Network, Qt Widgets, Qt XML",
                "Qt QML and Qt Quick",
                "Qt Quick Controls",
                "Qt Graphical Effects",
                "Qt Serial Port",
                "Qt Sensors",
                "Qt Multimedia"
            ]
        }

        Slide {
            title: "Embedded Android Reference Hardware"
            content: [
                "iMX6",
                "Beagleboard xM",
                "Nexus 7"
            ]
            FramedImage {
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                source: "images/iMX6_Blue.png"
            }
        }

        Slide {
            title: "Embedded Linux"
            content: [
                "All Qt 5.1 modules are supported (including QtWebkit)",
                "Standard Embedded Linux distro (Yocto, Poky)",
                "Many 3rd party API's available in Linux sysroot"
            ]
        }

        Slide {
            id: embeddedLinuxSlide
            title: "Embedded Linux Hardware "
            content: [
                "Beagleboard xM",
                "iMX6",
                "Raspberry Pi",
                "Beaglebone",
                "Sitara AM335x"
            ]
            Column {
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                FramedImage {
                    source: "images/Raspberry_Pi_Photo.png"
                    height: embeddedLinuxSlide.height / 2;
                }
                FramedImage {
                    height: embeddedLinuxSlide.height / 2;
                    source: "images/BeagleBoard.png"
                }

            }
        }

        Slide {
            centeredText: "Demonstration time"
            fontScale: 2
            notes: "
Demonstrate:
How to flash SD card
Install license driver + Qt package to device
Boot to Qt Demo Launcher
Load application in QtCreator and set iMX6 as kit
Build and run application on device
reboot device and demonstrate that device now boots to application
Demonstrate C++ debugging on device
Demonstrate QML/Javascript debugging on device
Emulator Demonstration:
Start Emulator
Build and run same application on the Emulator
"
        }

        Slide {
            centeredText: "Example Use-case: SuperfluousSynth"
            fontScale: 2
        }

        Slide {
            title: "About SuperfluousSynth"
            content: [
                "Hardware and Software combination",
                "Build a keyboard that is also a learning aid",
                "Synthesis of instrument sounds",
                "Visual display of notes while playing",
                "Visual display of current note, interval or chord"
            ]
        }

        Slide {
            title: "3rd party dependencies"
            content: [
                "fluidsynth - Soundfont 2 based software synthesizer",
                "Fluid (R3) General MIDI SoundFont (GM)",
                "VexFlow - Javascript Canvas2D API for drawing musical notation"
            ]
        }

        Slide {
            title: "Hardware Considerations"
            content: [
                "USB MIDI keyboard controller",
                "LCD Screen",
                "Capacitive touch screen",
                "Audio Output",
                "iMX6 with 7\" touch screen"
            ]
        }

        Slide {
            title: "Embedded Android or Embedded Linux?"
            content: [
                "glib2 dependency of fluidsynth",
                "MIDI input driver",
                "Audio output(ALSA, OpenSL)",
                "Embedded Linux"
            ]
        }

        Slide {
            title: "Implementation"
            content: [
                "SynthEngine",
                "Musical Notation",
                "Chord Recognition",
                "Instrument Selection"
            ]
        }

        Slide {
            title: "Productisation"
            content: [
                "Low latency tuning",
                "Professional design",
                "Virtual Keyboard, Metronome"
            ]
        }

        Slide {
            centeredText: "Questions?"
            fontScale: 2
        }

        Slide {
            title: "Contact Info"
            content: [
                "email: andy.nichols@digia.com",
                "freenode irc: nezticle",
                "example source:",
                "github.com/nezticle"
            ]
        }
    }

}
