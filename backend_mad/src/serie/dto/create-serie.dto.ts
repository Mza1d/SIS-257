import { ApiProperty } from "@nestjs/swagger";
import { IsNotEmpty, IsNumber, IsString, MaxLength } from "class-validator";

export class CreateSerieDto {
    @ApiProperty()
    @IsNotEmpty({ message: 'El campo titulo no debe ser vacío' })
    @IsString({ message: 'El campo titulo debe ser una cadena' })
    @MaxLength(250, {
      message: 'El campo titulo debe ser menor a 250 caracteres',
    })
    titulo: string;
  
    @ApiProperty()
    @IsNotEmpty({ message: 'El campo sinopsis no debe ser vacío' })
    @IsString({ message: 'El campo sinopsis debe no tiene el formato correcto' })
    @MaxLength(5000, {
      message: 'El campo sinopsis debe ser menor a 5000 caracteres',
    })
    sinopsis: string;
  
    @ApiProperty()
    @IsNotEmpty({ message: 'El campo director no debe ser vacío' })
    @IsString({ message: 'El campo director debe ser una cadena' })
    @MaxLength(100, {
      message: 'El campo director debe ser menor a 100 caracteres',
    })
    director: string;
  
    @ApiProperty()
    @IsNumber({ }, { message: 'El campo duracion debe ser un entero ' })
    duracion: number;

    @ApiProperty()
    @IsNumber({ }, { message: 'El campo año de estreno debe ser un entero ' })
    anio_estreno: number;
}
