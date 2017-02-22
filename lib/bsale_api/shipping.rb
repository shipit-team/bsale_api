class Shipping
  def initialize
    @object = {
      documentTypeId: 1,
      officeId: 1,
      expirationDate: 1409149934,
      emissionDate: 1409149934,
      shippingTypeId: 1,
      municipality: "Puerto Varas",
      city: "Puerto Varas",
      address: "la quebrada 1005",
      declareSii: 1,
      recipient: "Andres Gallardo",
      details: [
        {
          taxId: "[1]",
          quantity: 1,
          comment: "PASAJERO: JAIME GONZALEZ",
          netUnitValue: 12000
        }
      ],
      client: {
        municipality: "PUERTO MONTT",
        code: "13121776-5",
        activity: "SERV. TELECOMUNICACIONES",
        company: "JAIME ALTAMIRANO SOTO",
        city: "PUERTO MONTT",
        address: "EMILIO RECABARREN 231"
      }
    }
  end

  def object
    @object
  end
end
