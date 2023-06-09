# STM32F103C8 MCU-based MP3 Player with Bluetooth Control

This project aims to develop a portable audio player utilizing the STM32F103C8 microcontroller unit (MCU) as
the core processing unit, integrated with a DFPlayer MP3 module, an HC-05 Bluetooth module, and a speaker.
The STM32F103C8 MCU provides a powerful and efficient platform for controlling the audio playback and
managing the communication interface. The DFPlayer MP3 module enables the decoding and playback of MP3
audio files stored on an external storage device. The HC-05 Bluetooth module facilitates wireless audio streaming
and control from a Bluetooth-enabled device. The speaker is connected to the output of the DFPlayer MP3
module, providing high-quality audio output. The project focuses on designing a robust firmware to enable
seamless interaction between the MCU, DFPlayer MP3 module, HC-05 Bluetooth module, and the speaker,
allowing users to control audio playback of MP3 files via Bluetooth. Additionally, the project aims to ensure
efficient utilization of system resources to provide an enhanced user experience. The completed audio player is
intended to be compact, portable, and user-friendly, making it an ideal solution for personal audio entertainment
on the go.

## Project Description

### Hardware Configuration:
The STM32F103C8 MCU is the central control unit of the MP3 player. Ports A9 and A10 (UART 1) of
the MCU are connected to the HC-05 Bluetooth module, allowing bi-directional communication between
the MP3 player and the Android application. Ports A2 and A3 (UART 2) are connected to the DFPlayer
MP3 module, enabling communication for controlling audio playback.

### DFPlayer MP3 Module:
The DFPlayer MP3 module is responsible for decoding and playing MP3 audio files. It interfaces with the
STM32F103C8 MCU through UART 2 (Ports A2 and A3). The module supports a specific instruction
format for controlling its functionalities. The instructions are sent as a series of bytes with predefined
values indicating the desired operation. For example:

0x7E: Start byte indicating the beginning of the instruction.
0xFF: Version byte for checking compatibility.
0x06: Length byte indicating the length of the instruction.
0xXX: Command byte specifying the operation (e.g., play, pause, volume control, track selection).
0xXX: Feedback byte parameter (if required)
0xXX: High byte of the parameter (if required).
0xXX: Low byte of the parameter (if required).
0xXX: High byte of the checksum
0xXX: Low byte of the checksum
0xEF: End byte indicating the end of the instruction.


The DFPlayer MP3 module provides various functions such as play, pause, volume control and track
selection.

### HC-05 Bluetooth Module:
The HC-05 Bluetooth module enables wireless communication between the MP3 player and the Android
application. It connects to UART 1 (Ports A9 and A10) of the STM32F103C8 MCU. The module receives
commands from the Android application and relays them to the MCU for further processing. It also
facilitates data transmission between the MP3 player and the Android application.

### Android Application - Bluetooth Commander:
The MP3 player is controlled through the "Bluetooth Commander" Android application. The application
is programmed to transmit specific hex values corresponding to different operations on the MP3 player.
For instance, sending 0x41 triggers play/pause, 0x42 plays song 1, 0x45 increases the volume, 0x46
decreases the volume, 0x47 selects the next track, and 0x48 selects the previous track.

### Firmware Design:
The firmware of the STM32F103C8 MCU is designed to receive and process commands from both the
DFPlayer MP3 module and the HC-05 Bluetooth module. It interprets the hex values received from the
Android application via UART 1 and performs the corresponding operations on the DFPlayer MP3
module using the instruction format described above. The firmware ensures seamless interaction between
the MCU, DFPlayer MP3 module, HC-05 Bluetooth module, and the speaker. It also manages power
consumption and system resources to optimize performance.

### Speaker:
A speaker is connected to the output of the DFPlayer MP3 module to provide audio output. The DFPlayer
module decodes the audio files and sends them to the speaker for playback. The speaker delivers high-
quality audio for an enhanced user experience.

## Components

### Hardware:

• STM32F103C8 MCU <br>
• DFPlayer MP3 Module <br>
• HC-05 Bluetooth Module <br>
• 0.5W 8Ω Speaker <br>
• PCB

### Software:

• Bluetooth Commander Android Application

## Circuit Design

![Circuit Design Image](/CircuitDesign.png "Circuit Design")

## Real Project Images

![Complete Project Circuitry](/CompleteProjectCircuitry.JPEG "Complete Project Circuitry") <br>

![PCB With Components (Except Speaker)](/PCBWithComponents(ExceptSpeaker).JPEG "PCB With Components (Except Speaker)") <br>

![Speaker](/Speaker.JPEG "Speaker") <br>

## Sequence of Operation

The following sequence describes the operation flow of the STM32F103C8 MCU-based MP3 player with Bluetooth control:

### 1) Power-On Initialization:
Upon power-on, the STM32F103C8 MCU initializes its internal peripherals and GPIO pins.
The DFPlayer MP3 module and HC-05 Bluetooth module are powered on and go through their respective initialization processes.

### 2) Bluetooth Pairing:
The Android device running the "Bluetooth Commander" application is paired with the HC-05 Bluetooth module of the MP3 player.
Once successfully paired, the Bluetooth connection is established between the Android device and the MP3 player.

### 3) Android Application Control:
The user launches the "Bluetooth Commander" application on the Android device.
The application establishes a connection with the paired MP3 player.

### 4) Command Transmission:
The user selects a command within the "Bluetooth Commander" application, such as play/pause, track selection, or volume control.
The Android application converts the selected command into the corresponding hex value.
The Android application sends the hex value command to the HC-05 Bluetooth module of the MP3 player via Bluetooth.

### 5) Command Processing:
The HC-05 Bluetooth module receives the hex value command and forwards it to the STM32F103C8 MCU.
The MCU's UART 1 (Ports A9 and A10) receive the command.

### 6) DFPlayer Instruction Generation:
The MCU processes the received hex value command and generates the corresponding instruction format required by the DFPlayer MP3 module.
The MCU constructs the instruction packet with the appropriate start byte, version byte, command byte, feedback byte, parameter bytes (if required), checksum bytes and end byte.

### 7) DFPlayer Communication:
The MCU transmits the generated instruction packet to the DFPlayer MP3 module via UART 2 (Ports A2 and A3).
The DFPlayer MP3 module receives the instruction packet and interprets it.

### 8) MP3 Player Operation:
The DFPlayer MP3 module performs the requested operation based on the received instruction.
For example, if the command was play/pause, the DFPlayer module starts or pauses the audio playback accordingly.

### 9) Audio Output:
The DFPlayer MP3 module decodes the audio file and sends the audio data to the connected speaker.
The speaker converts the audio data into audible sound, providing audio output to the user.

## Conclusion

The STM32F103C8 MCU-based MP3 player, integrated with the DFPlayer MP3 module, HC-05 Bluetooth module, and speaker, offers a portable and user-friendly audio entertainment solution. With the "Bluetooth Commander" Android application, users can wirelessly control audio playback, volume, and track selection. The project combines the power and efficiency of the STM32F103C8 MCU with the capabilities of the DFPlayer MP3 module and HC-05 Bluetooth module, providing a versatile and enjoyable MP3 player experience.






