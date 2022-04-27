void main() {
  print("XD");
}

//Clase padre producto
class Producto {
  String? fechaCaducidad;
  String? numeroDeLote;
  
  Producto({fechaCaducidad, numeroDeLote});
}

// Clases hijas de producto
class ProductoCongelado extends Producto {
  String? fechaEnvasado;
  String? paisDeOrigen;
  double? temperaturaMantenimiento;
  
  ProductoCongelado({
    required fechaCaducidad, 
    required numeroDeLote,
    required this.fechaEnvasado,
    required this.paisDeOrigen,
    required this.temperaturaMantenimiento,
    }): super(fechaCaducidad: fechaCaducidad, 
              numeroDeLote: numeroDeLote
             );
}


///TODO: Clases hijas de Producto congelado, 1
class ProductoCongeladoAire extends ProductoCongelado {
  double? dioxidoCarbono;
  double? nitrogeno;
  double? vapor;
  
  ProductoCongeladoAire({
    required fechaCaducidad, 
    required numeroDeLote,
    required fechaEnvasado,
    required paisDeOrigen,
    required temperaturaMantenimiento,
    required this.dioxidoCarbono,
    required this.nitrogeno,
    required this.vapor,
  }): super(fechaCaducidad: fechaCaducidad, 
            numeroDeLote: numeroDeLote,
            fechaEnvasado: fechaEnvasado,
            paisDeOrigen: paisDeOrigen,
            temperaturaMantenimiento: temperaturaMantenimiento,
           );
}

///TODO: Clases hijas de Producto congelado, 2
class ProductoCongeladoAgua extends ProductoCongelado {
  double? salinidad;
  
  ProductoCongeladoAgua({
    required fechaCaducidad, 
    required numeroDeLote,
    required fechaEnvasado,
    required paisDeOrigen,
    required temperaturaMantenimiento,
    required this.salinidad,
  }): super(fechaCaducidad: fechaCaducidad, 
            numeroDeLote: numeroDeLote,
            fechaEnvasado: fechaEnvasado,
            paisDeOrigen: paisDeOrigen,
            temperaturaMantenimiento: temperaturaMantenimiento,
           );
}

///TODO: Clases hijas de Producto congelado, 3
class ProductoCongeladoNitrogeno extends ProductoCongelado {
  String? metodoCongelacion;
  int? tiempoExposicion;
  
  ProductoCongeladoNitrogeno({
    required fechaCaducidad, 
    required numeroDeLote,
    required fechaEnvasado,
    required paisDeOrigen,
    required temperaturaMantenimiento,
    required this.metodoCongelacion,
    required this.tiempoExposicion,
  }): super(fechaCaducidad: fechaCaducidad, 
            numeroDeLote: numeroDeLote,
            fechaEnvasado: fechaEnvasado,
            paisDeOrigen: paisDeOrigen,
            temperaturaMantenimiento: temperaturaMantenimiento,
           );
}



// Clases hijas de producto
class ProductoFrescos extends Producto {
  String? fechaEnvasado;
  String? paisDeOrigen;
  
  ProductoFrescos({
    required fechaCaducidad, 
    required numeroDeLote,
    required this.fechaEnvasado,
    required this.paisDeOrigen,
  }): super(fechaCaducidad: fechaCaducidad, 
            numeroDeLote: numeroDeLote
           );
}

class ProductoRefrigerados  extends Producto {
  String? fechaEnvasado;
  String? paisDeOrigen;
  String? codigoOrganismo;
  double? temperaturaMantenimiento;
  
  ProductoRefrigerados({
    required fechaCaducidad, 
    required numeroDeLote,
    required this.fechaEnvasado,
    required this.paisDeOrigen,
    required this.codigoOrganismo,
    required this.temperaturaMantenimiento,
  }): super(fechaCaducidad: fechaCaducidad, 
            numeroDeLote: numeroDeLote
           );
}
