
# Empanadas Giménez

<img src="img/empanadasGimenez.png" height="200" width="300">

## Planteo inicial

En "Empanadas Giménez", un modesto local de delivery de empanadas, tenemos dos empleados:

* Giménez, que cobra un sueldo fijo. El valor arranca en $ 15.000, y después puede cambiar mes a mes.
* Baigorria, el joven y esforzado empleado de Giménez, cobra en base a la cantidad de empanadas vendidas (actualmente $ 15 por empanada).

Un tercer empleado, el señor Galván, es el encargado de pagarle el sueldo a los empleados, y de gestionar el dinero qe se utiliza para esto. Asumimos que Galván arranca con un fondo para sueldos de $ 300.000. Como los sueldos salen de este fondo, hay que descontar el importe correspondiente cuando Galván le paga a un empleado.

Por ahora no vamos a tener en cuenta qué hace cada empleado al recibir el dinero, el único efecto que nos interesa del pago es que disminuye el fondo de Galván.


<br>

## Qué hacen los empleados con lo que cobran

Se modifica el método pagarA(empleado) de Galván de esta forma

```javascript
method pagarA(empleado) {
    dinero -= empleado.sueldo()
    empleado.cobrarSueldo()
}
```
- probar haciendo que Galván le pague a Baigorria. Se rompe. ¿Por qué?
- ¿qué método o métodos hay que agregar, en qué objeto u objetos, para que Galván le pueda pagar el sueldo a cualquiera de los dos empleados?
- agregar esos métodos con el siguiente criterio: Giménez cuando cobra el sueldo lo suma a un acumulador de todo lo que cobró, agregarle la capacidad de entender el mensaje `totalCobrado()`. Baigorria no hace nada.


<br>

## Manejo fino de las finanzas de Baigorria

Modificar el comportamiento de Baigorria para que maneje sus gastos, el dinero que tiene, y su deuda. Cuando Baigorria gasta, se descuenta de su dinero, si no le alcanza aumenta la deuda. Cuando cobra un sueldo, Baigorria paga sus deudas. Si sobra algo, se suma al dinero que tiene. Agregar a Baigorria la capacidad de entender los mensajes: `gastar(cuanto)`, `totalDeuda()`, `totalDinero()`. 

Tener en cuenta este escenario
1. Baigorria arranca con 15000 de sueldo, deuda en 0, dinero en 0.
1. Baigorria gasta 4000, `totalDeuda()` debe ser 4000, `totalDinero()` debe ser 0.
1. Baigorria gasta otros 8000, `totalDeuda()` pasa a 12000, `totalDinero()` sigue en 0.
1. Baigorria cobra, con los 15000 que recibe paga toda su deuda y le sobran 3000 pesos. Por lo tanto, `totalDeuda()` debe ser 0, y `totalDinero()` debe ser 3000.
1. Baigorria gasta 25000, cubre 3000 con el dinero que tiene, el resto es deuda. `totalDeuda()` queda en 22000, `totalDinero()` en 0.
1. Baigorria cobra, tiene que dedicar los 15000 a pagar deudas, y no le alcanza. Ahora, `totalDeuda()` pasa a 7000, y `totalDinero()` a 0.


<br>

# Conceptos vistos en el ejemplo

* Modelar objetos
* Polimorfismo entre Baigorria y Giménez. 
 * Para pensar: ¿qué mensajes entiende cada uno? ¿qué efecto produce al utilizar ambos objetos en el REPL?

