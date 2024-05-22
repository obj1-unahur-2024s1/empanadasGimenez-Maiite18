
object galvan{
	var dineroAhorrado = 0 
	var deuda = 0
	
	method sueldo() = 15000
	
	method gastar(monto){
		
		if (dineroAhorrado > monto){
			
			dineroAhorrado -= monto 
		}else{
			
			deuda += dineroAhorrado - monto 
			dineroAhorrado = 0
			
		}
	}
	
	method totalDinero() =  dineroAhorrado 
	
	method totalDeuda() = deuda
	
	method cobrarSueldo() {
		var resto = self.sueldo() + deuda 
		
		deuda = 0.min(deuda + self.sueldo()) 
		dineroAhorrado += if(resto>0) resto else 0
	}
	
	
}

object baigorria{
	var property empanadasVendidas = 0
	var dineroAhorrado = 0
	
	method totalCobrado() = dineroAhorrado
	
	method sueldo() = self.empanadasVendidas() * 150
	
	method cobrarSueldo() {
		
		dineroAhorrado += self.sueldo()
		
	}
	
}

object duenio{
	var fondo = 3000000
	
	method pagarA(empleado) {
    fondo -= empleado.sueldo()
    empleado.cobrarSueldo()
}
	
	
}
