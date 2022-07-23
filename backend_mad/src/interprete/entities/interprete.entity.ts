import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity('interpretes')
export class InterpreteEntity {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  nombre: string;

  @Column()
  nacionalidad: string;
}
