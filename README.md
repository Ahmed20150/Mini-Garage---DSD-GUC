# Mini Garage Project

Welcome to the Mini Garage project! This project aims to create a special type of garage where the gate opens automatically upon detecting a car using a force sensor. After the car has passed, the number displayed on a 7-segment display increments by 1. The project utilizes an Arduino to read the signal from the force sensor and sends it to the DE10-Lite FPGA, which controls the servo motor responsible for opening and closing the gate.

## Tasks

1. **Initialization**: The number of cars is initially set to zero.
2. **Gate Control**: A button is used to simulate the man who opens the gate.
3. **Car Detection**: A force sensor is utilized to detect when a car approaches the gate.
4. **Gate Closure**: Upon detection of the car passing the gate, the gate returns to its initial position using an actuator of your own choice.
5. **Display**: The number of cars is displayed on the 7-segment display.

## Components

- Arduino: Reads the signal from the force sensor.
- DE10-Lite FPGA: Controls the servo motor for gate operation.
- Force Sensor: Detects when a car approaches the gate.
- Actuator: Returns the gate to its initial position.
- 7 Segment Display: Displays the number of cars.

## Setup Instructions

1. Connect the force sensor to the Arduino.
2. Connect the Arduino, actuator, and 7-segment display to the DE10-Lite FPGA.
3. Upload the appropriate code to both the Arduino and DE10-Lite FPGA.
4. Ensure all connections are secure and functioning properly.
5. Test the system by approaching the gate with a car to trigger automatic gate opening and passing a car through the gate.

## Usage

1. Press the button to open the gate manually.
2. The gate opens automatically when a car approaches, detected by the force sensor.
3. When a car is detected passing through the gate, the gate closes automatically.
4. The 7-segment display will update to show the current count of entering cars.


<!--## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details. -->

## Acknowledgments

Special thanks to our dedicated team for their commitment and collaborative spirit in bringing this project to fruition

<!--<div style="display: flex; flex-direction: row; border-radius:">
    <div style="margin-right: 10px;">
        <a href="https://github.com/Ahmed20150">
            <img src="https://github.com/Ahmed20150.png" alt="Ahmed's picture" width="100" height="100">
        </a>
        <br>
        <span>Ahmed Gasser</span>
    </div>
    <div style="margin-right: 10px;">
        <a href="">
            <img src="" alt="Ahmed's picture" width="100" height="100">
        </a>
        <br>
        <span>Ahmed Sameh</span>
    </div>
    <div style="margin-right: 10px;">
        <a href="https://github.com/Amr-Hegazy1">
            <img src="https://github.com/Amr-Hegazy1.png" alt="Amr's picture" width="100" height="100">
        </a>
        <br>
        <span>Amr Hegazy</span>
    </div>
    <div style="margin-right: 10px;">
        <a href="https://github.com/OHarridy">
            <img src="https://github.com/OHarridy" alt="Omar's picture" width="100" height="100">
        </a>
        <br>
        <span>Omar Harridy</span>
    </div>
    <div style="margin-right: 10px;">
        <a href="">
            <img src="" alt="Seif's picture" width="100" height="100">
        </a>
        <br>
        <span>Seif Tarek</span>
        </div>
        <div style="margin-right: 10px;">
        <a href="https://github.com/ZeyadAttia5">
            <img src="https://github.com/ZeyadAttia5.png" alt="Zeyad's picture" width="100" height="100">
        </a>
        <br>
        <span>Zeyad Attia</span>
    </div>
</div> -->

Special thanks to our dedicated team for their commitment and collaborative spirit in bringing this project to fruition
- [Ahmed Gasser](https://github.com/Ahmed20150)
- [Amr Hegazy](https://github.com/Amr-Hegazy1)
- [Ahmed Sameh]()
- [Omar Harridy](https://github.com/OHarridy)
- [Seif Tarek]()
- [Zeyad Attia](https://github.com/ZeyadAttia5)






