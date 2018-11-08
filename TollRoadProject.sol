// Interfaces for B9Lab Accademy Final Exam
// Toby Wise - 8.Nov.18

pragma solidity ^0.4.24;

interface TollRoadConstants {
    function setPrice(
        uint tollBooth,
        uint vehicleType,
        bool multipleOccupancy,
        bool expressLane)
        external
        isRegulator
        returns(bool);
    function getPrice(
        uint tollBooth,
        uint vehicleType,
        bool multipleOccupancy,
        bool expressLane)
        external
        returns(uint);               //Price of Toll-Booth in Wei
    function setRoadStatus(
        uint onRamp,
        uint offRamp)
        external
        isOwner
        returns(bool);              //Status ID from Enumerated list
    function getRoadStatus(
        uint onRamp,
        uint offRamp)
        external
        returns(uint);              //Status ID from Enumerated list
}

interface TollRoad {
    function calcTolls(
        uint onRamp,
        uint offRamp,
        uint vehicleType,
        bool multipleOccupancy,
        bool expressLane)
        external
        returns(uint);              //Price of journey in Wei
    function bookTolls(
        uint onRamp,
        uint offRamp,
        uint vehicleType,
        bool multipleOccupancy,
        bool expressLane)
        external
        returns(uint);              //Unique ID for this Journey leg
    function payToll(
        uint journeyID,
        uint tollBooth)
        external
        isVehicle
        payable
        returns(bool);
    
}

interface Vehicle {
    function registerVehicle(
        uint vehicleType,
        uint maxOccupants,
        uint maxRange)
        external
        returns(address);
    function setVehicleStatus(
        address vehicle,
        uint vehicleStatus)
        external
        isVehicle 
        returns(bool);
    function getVehicleStatus(
        address vehicle)
        external
        returns(uint);
    function priceJourney(
        bytes32 startPoint,
        bytes32 endPoint,
        uint numPassengers,
        bool multipleOccupancy,
        bool expressLane)
        external
        returns(uint);              //Price for Journey in Wei; should ideally include expiry time
    function bookJourney(
        bytes32 startPoint,
        bytes32 endPoint,
        uint numPassengers,
        bool multipleOccupancy,
        bool expressLane)
        external
        payable
        returns(uint);              //Unique ID for this Journey
}
