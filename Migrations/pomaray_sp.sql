--------------------ESTUDIANTE--------------------
EXEC INSERT_ESTUDIANTE 
    @primer_nombre = 'Ana',
    @segundo_nombre = 'María',
    @primer_apellido = 'García',
    @segundo_apellido = 'Pérez',
    @grado = 9,
    @num_lista = 18,
    @fecha_nacimiento = '2003-05-20';

EXEC DELETE_ESTDUIANTE @p_id_estudiante = 1;


EXEC UPDATE_ESTUDIANTE
    @id_estudiante = 2,
    @primer_nombre = 'Juan',
    @segundo_nombre = 'Carlos',
    @primer_apellido = 'González',
    @segundo_apellido = 'Pérez',
    @grado = 11,
    @num_lista = 20,
    @fecha_nacimiento = '2003-05-10';

--------------------DOCENTE--------------------
EXEC INSERT_DOCENTE 
    @primer_nombre = 'Juan',
    @segundo_nombre = NULL,
    @primer_apellido = 'Perez',
    @segundo_apellido = 'Gomez',
    @cedula = '123456789',
    @fecha_nacimiento = '1990-05-15',
    @correo = 'juan@example.com',
    @num_telefonico = '123-456-7890';


EXEC DELETE_DOCENTE @id_docente = 1;


EXEC UPDATE_DOCENTE 
    @id_docente = 1,
    @primer_nombre = 'Pedro',
    @segundo_nombre = NULL,
    @primer_apellido = 'Gomez',
    @segundo_apellido = 'Perez',
    @cedula = '987654321',
    @fecha_nacimiento = '1985-10-20',
    @correo = 'pedro@example.com',
    @num_telefonico = '987-654-3210';
-- Aquí se actualizará el docente con ID_DOCENTE = 1

