-- ¿Cuántos alumnos desaprobados tenemos en total?
SELECT COUNT(*) AS alumno_desaprobado FROM respuestasmarcadas WHERE estado = 'Desaprobado';

-- Alumnos aprobados
SELECT COUNT(*) AS alumno_desaprobado FROM respuestasmarcadas WHERE estado = 'Aprobado';


-- ¿Cuántos alumnos aprobados en un determinado curso tenemos?
SELECT COUNT(*)
FROM respuestasmarcadas R 
INNER JOIN evaluacion E ON R.idevaluacion = E.idevaluacion
WHERE R.estado = 'Aprobado' AND E.nombreexamen='Java';


-- ¿Cuál es la mejor y peor calificación de una determinada evaluación?
SELECT MAX(puntaje) as 'Nota maxima',E.nombreexamen AS Examen
FROM respuestasmarcadas R
INNER JOIN evaluacion E ON R.idevaluacion = E.idevaluacion
WHERE E.nombreexamen='Java';

SELECT MIN(puntaje) as 'Nota minima',E.nombreexamen AS Examen
FROM respuestasmarcadas R
INNER JOIN evaluacion E ON R.idevaluacion = E.idevaluacion
WHERE E.nombreexamen='Java';