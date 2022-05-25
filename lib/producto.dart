void main() {
  print("XD");
}

//Clase padre producto
abstract class Producto {
  String? fechaCaducidad;
  String? fechaEnvasado;
  String? numeroDeLote;
  String? paisDeOrigen;

  Producto({fechaCaducidad, fechaEnvasado, numeroDeLote, paisDeOrigen});
}

// Clases hijas de producto
abstract class ProductoCongelado extends Producto {
  double? temperaturaMantenimiento;

  ProductoCongelado({
    required fechaCaducidad,
    required fechaEnvasado,
    required numeroDeLote,
    required paisDeOrigen,
    required this.temperaturaMantenimiento,
  }) : super(
          fechaCaducidad: fechaCaducidad,
          fechaEnvasado: fechaEnvasado,
          numeroDeLote: numeroDeLote,
          paisDeOrigen: paisDeOrigen,
        );
}

///TODO: Clases hijas de Producto congelado, 1
class ProductoCongeladoAgua extends ProductoCongelado {
  double? salinidad;

  ProductoCongeladoAgua({
    required fechaCaducidad,
    required fechaEnvasado,
    required numeroDeLote,
    required paisDeOrigen,
    required temperaturaMantenimiento,
    required this.salinidad,
  }) : super(
          fechaCaducidad: fechaCaducidad,
          fechaEnvasado: fechaEnvasado,
          numeroDeLote: numeroDeLote,
          paisDeOrigen: paisDeOrigen,
          temperaturaMantenimiento: temperaturaMantenimiento,
        );
}

///TODO: Clases hijas de Producto congelado, 2
class ProductoCongeladoAire extends ProductoCongelado {
  double? dioxidoCarbono;
  double? nitrogeno;
  double? vapor;

  ProductoCongeladoAire({
    required fechaCaducidad,
    required fechaEnvasado,
    required numeroDeLote,
    required paisDeOrigen,
    required temperaturaMantenimiento,
    required this.dioxidoCarbono,
    required this.nitrogeno,
    required this.vapor,
  }) : super(
          fechaCaducidad: fechaCaducidad,
          fechaEnvasado: fechaEnvasado,
          numeroDeLote: numeroDeLote,
          paisDeOrigen: paisDeOrigen,
          temperaturaMantenimiento: temperaturaMantenimiento,
        );
}

///TODO: Clases hijas de Producto congelado, 3
enum metodoDeCongelacion {
  metodoUno,
  metodoDos
} //puede llegar a tener mas metodos y diferentes nombres

class ProductoCongeladoNitrogeno extends ProductoCongelado {
  metodoDeCongelacion? metodoCongelacion;
  int? tiempoExposicion;

  ProductoCongeladoNitrogeno({
    required fechaCaducidad,
    required fechaEnvasado,
    required numeroDeLote,
    required paisDeOrigen,
    required temperaturaMantenimiento,
    required this.metodoCongelacion,
    required this.tiempoExposicion,
  }) : super(
          fechaCaducidad: fechaCaducidad,
          fechaEnvasado: fechaEnvasado,
          numeroDeLote: numeroDeLote,
          paisDeOrigen: paisDeOrigen,
          temperaturaMantenimiento: temperaturaMantenimiento,
        );
}

// Clases hijas de producto
class ProductoFrescos extends Producto {
  ProductoFrescos({
    required fechaCaducidad,
    required fechaEnvasado,
    required numeroDeLote,
    required paisDeOrigen,
  }) : super(
          fechaCaducidad: fechaCaducidad,
          fechaEnvasado: fechaEnvasado,
          numeroDeLote: numeroDeLote,
          paisDeOrigen: paisDeOrigen,
        );
}

class ProductoRefrigerados extends Producto {
  String? codigoOrganismo;
  double? temperaturaMantenimiento;

  ProductoRefrigerados({
    required fechaCaducidad,
    required fechaEnvasado,
    required numeroDeLote,
    required paisDeOrigen,
    required this.codigoOrganismo,
    required this.temperaturaMantenimiento,
  }) : super(
          fechaCaducidad: fechaCaducidad,
          fechaEnvasado: fechaEnvasado,
          numeroDeLote: numeroDeLote,
          paisDeOrigen: paisDeOrigen,
        );
}
