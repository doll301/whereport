//
//  Airport.swift
//  Whereport
//
//  Created by Ellen Doll on 7/10/22.
//

import Foundation

enum AirportCode {
    case ATL
    case DFW
    case DEN
    case ORD
    case LAX
    case CLT
    case MCO
    case LAS
    case PHX
    case MIA
    case SEA
    case IAH
    case JFK
    case EWR
    case FLL
    case MSP
    case SFO
    case DTW
    case BOS
    case SLC
    case PHL
    case BWI
    case SAN
    case LGA
    case MDW
    case BNA
    case IAD
    
}

func getAirportName(airportCode: AirportCode) -> String {
    switch airportCode {
    case .ATL:
        return "Hartsfield-Jackson Atlanta International Airport"
    case .DFW:
        return "Merchant Logo Dallas/Fort Worth International Airport"
    case .DEN:
        return "Denver International Airport"
    case .ORD:
        return "O'Hare International Airport"
    case .LAX:
        return "Los Angeles International Airport"
    case .CLT:
        return "Charlotte Douglas International Airport"
    case .MCO:
        return "Orlando International Airport"
    case .LAS:
        return "Harry Reid International Airport"
    case .PHX:
        return "Phoenix Sky Harbor International Airport"
    case .MIA:
        return "Miami International Airport"
    case .SEA:
        return "Seattle-Tacoma International Airport"
    case .IAH:
        return "George Bush Intercontinental Airport"
    case .JFK:
        return "John F. Kennedy International Airport"
    case .EWR:
        return "Newark Liberty International Airport"
    case .FLL:
        return "Fort Lauderdale-Hollywood International Airport"
    case .MSP:
        return "Minneapolis−Saint Paul International Airport"
    case .SFO:
        return "San Francisco International Airport"
    case .DTW:
        return "Detroit Metropolitan Wayne County Airport"
    case .BOS:
        return "Boston Logan International Airport"
    case .SLC:
        return "Salt Lake City International Airport"
    case .PHL:
        return "Philadelphia International Airport"
    case .BWI:
        return "Baltimore/Washington International Thurgood Marshall Airport"
    case .SAN:
        return "San Diego International Airport"
    case .LGA:
        return "LaGuardia Airport"
    case .MDW:
        return "Chicago Midway International Airport"
    case .BNA:
        return "Nashville International Airport"
    case .IAD:
        return "Dulles International Airport"
    }
    
}
