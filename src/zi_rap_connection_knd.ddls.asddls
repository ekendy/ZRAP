@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Simple RAP Report List App'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}

@UI.headerInfo: {   typeName: 'Connection',
                    typeNamePlural: 'Connections'}

define view entity ZI_RAP_CONNECTION_KND
  as select from /dmo/connection as Connection
{
      @UI.facet: [{ purpose: #STANDARD,
                    type: #IDENTIFICATION_REFERENCE,
                    label: 'Connection',
                    position: 10 }]

      @UI.lineItem: [{ position: 10, label: 'Airline' }]
      @UI.identification: [{ position: 10, label: 'Airline' }]
  key carrier_id      as CarrierId,
      @UI.lineItem: [{ position: 20, label: 'Connection Number'  }]
      @UI.identification: [{ position: 20, label: 'Connection Number' }]
  key connection_id   as ConnectionId,
      @UI.lineItem: [{ position: 30, label: 'Departure Airport Code'  }]
      @UI.identification: [{ position: 30, label: 'Departure Airport Code' }]
      @UI.selectionField: [{ position: 10 }]
      airport_from_id as DepartureAirport,
      @UI.lineItem: [{ position: 40, label: 'Destination Airport Code'  }]
      @UI.identification: [{ position: 40, label: 'Destination Airport Code' }]
      @UI.selectionField: [{position: 20 }]
      airport_to_id   as DestinationAirport,
      @UI.lineItem: [{ position: 50, label: 'Departure Time'  }]
      @UI.identification: [{ position: 50, label: 'Departure Time' }]
      departure_time  as DepartureTime,
      @UI.lineItem: [{ position: 60, label: 'Arrival Time'  }]
      @UI.identification: [{ position: 60, label: 'Arrival Time' }]
      arrival_time    as ArrivalTime,
      @Semantics.quantity.unitOfMeasure: 'DistanceUnit'
      distance        as Distance,    //not displayed
      distance_unit   as DistanceUnit //not displayed
}
