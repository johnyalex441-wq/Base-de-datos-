-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-06-2026 a las 14:29:19
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda accesorios de pc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente_asociados`
--

CREATE TABLE `cliente_asociados` (
  `id_cliente` int(11) NOT NULL,
  `nombres_cliente` varchar(150) DEFAULT NULL,
  `apellidos_clientes` varchar(150) DEFAULT NULL,
  `contactos` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente_asociados`
--

INSERT INTO `cliente_asociados` (`id_cliente`, `nombres_cliente`, `apellidos_clientes`, `contactos`) VALUES
(1, 'Lenin Josafat', 'Alvarado Castro', 'lenin.dugan@email.com'),
(2, 'David Alexander', 'Mendoza Ortiz', 'david.mendoza@email.com'),
(3, 'Kevin Alberto', 'Gomez Estrada', 'kevin.gomez@email.com'),
(4, 'Henry Eliseo', 'Palacios Rivera', 'henry.palacios@email.com'),
(5, 'Jose Antonio', 'Rodriguez Beltran', 'jose.rodriguez@email.com'),
(6, 'Daniel Antonio', 'Villalobos Saenz', 'daniel.villa@email.com'),
(7, 'Carlos Alberto', 'Peña Nieto', 'carlos.pena@email.com'),
(8, 'Ana Maria', 'Lopez Jaramillo', 'ana.lopez@email.com'),
(9, 'Luis Fernando', 'Torres Duarte', 'luis.torres@email.com'),
(10, 'Maria Elena', 'Chavez Flores', 'maria.chavez@email.com'),
(11, 'Jorge Luis', 'Ramirez Portal', 'jorge.ramirez@email.com'),
(12, 'Sofia Isabelle', 'Herrera Meza', 'sofia.herrera@email.com'),
(13, 'Andres Felipe', 'Castro Marin', 'andres.castro@email.com'),
(14, 'Claudia Patricia', 'Morales Solis', 'claudia.morales@email.com'),
(15, 'Ricardo Javier', 'Soto Espinoza', 'ricardo.soto@email.com'),
(16, 'Gabriela Alejandra', 'Reyes Cruz', 'gaby.reyes@email.com'),
(17, 'Alejandro Steven', 'Vargas Pardo', 'ale.vargas@email.com'),
(18, 'Melissa Yamileth', 'Montes de Oca', 'valeria.montes@email.com'),
(19, 'Francisco Jose', 'Guzman Ruiz', 'pancho.guzman@email.com'),
(20, 'Diana Marcela', 'Salazar Luna', 'diana.salazar@email.com'),
(21, 'Manuel Antonio', 'Delgado Silva', 'manuel.delgado@email.com'),
(22, 'Beatriz Maria', 'Paredes Benitez', 'beatriz.p@email.com'),
(23, 'Roberto', 'Cordero Esquivel', 'roberto.c@email.com'),
(24, 'Alisson Gisele', 'Fuentes Miranda', 'natalia.f@email.com'),
(25, 'Carlos Antonio', 'Sandoval Mejia', 'memito.sando@email.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distribuidores`
--

CREATE TABLE `distribuidores` (
  `id_distribuidores` int(11) NOT NULL,
  `nombre_distribuidor` varchar(150) NOT NULL,
  `ubicación` varchar(150) NOT NULL,
  `contactos` varchar(150) NOT NULL,
  `id_productos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `distribuidores`
--

INSERT INTO `distribuidores` (`id_distribuidores`, `nombre_distribuidor`, `ubicación`, `contactos`, `id_productos`) VALUES
(1, 'TechSupply Mayorista', 'Ciudad de México, México', 'ventas@techsupply.com', 1),
(2, 'Logística Intercontinental', 'Bogotá, Colombia', '+57 310 555 0123', 2),
(3, 'Componentes del Norte', 'Monterrey, México', 'soporte@compnorte.mx', 3),
(4, 'Global PC Accessories', 'Miami, USA', 'info@globalpc.com', 4),
(5, 'AsiaImport S.A.', 'Santiago, Chile', 'contacto@asiaimport.cl', 5),
(6, 'Distribuidora Eléctrica Central', 'Lima, Perú', '+51 1 444 7788', 6),
(7, 'Soluciones Gamer Mayoristas', 'Buenos Aires, Argentina', 'info@solucionesgamer.com', 7),
(8, 'Importaciones Tech S.A. de C.V.', 'Guadalajara, México', 'gdl@imptech.com', 8),
(9, 'EuroComponentes', 'Madrid, España', 'pedidos@eurocomp.es', 9),
(10, 'Pacífico Tech Distribución', 'Guayaquil, Ecuador', '+593 4 222 1111', 10),
(11, 'Almacén Tecnológico del Sur', 'San José, Costa Rica', 'ventas@almacentech.cr', 11),
(12, 'Periféricos Digitales Inc.', 'California, USA', 'sales@peripheraldigital.com', 12),
(13, 'Logística Express de Oriente', 'Sinaloa, México', 'contacto@logexpress.mx', 13),
(14, 'Todo Cable y Conexión', 'Medellín, Colombia', 'info@todocable.co', 14),
(15, 'Suministros Informáticos S.A.', 'Asunción, Paraguay', '+595 21 666 999', 15),
(16, 'Inversiones Computación Global', 'Caracas, Venezuela', 'ventas@invcompglobal.ve', 16),
(17, 'Tech & Gadgets Distribuidora', 'Panamá, Panamá', 'info@techgadgets.pa', 17),
(18, 'Mayorista Informático del Centro', 'Puebla, México', 'puebla@mayoinfo.mx', 18),
(19, 'Conectividad y Redes S.A.', 'Montevideo, Uruguay', 'redes@conectividad.com.uy', 19),
(20, 'Accesorios PC Express', 'La Paz, Bolivia', '+591 2 222 3344', 20),
(21, 'Mundo Digital Distribución', 'Guatemala, Guatemala', 'ventas@mundodigital.gt', 21),
(22, 'Soportes y Bases S.A.', 'San Salvador, El Salvador', 'contacto@soportessa.sv', 22),
(23, 'Cooling & Power Mayorista', 'Tegucigalpa, Honduras', 'ventas@coolingpower.hn', 23),
(24, 'Estilos y Teclados S.A.', 'Santo Domingo, Rep. Dominicana', 'info@estilosteclados.do', 24),
(25, 'Limpieza Tech Internacional', 'Miami, USA', 'shipping@limptechint.com', 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id_empleados` int(11) NOT NULL,
  `nombres_empleado` varchar(150) DEFAULT NULL,
  `apellidos_empleados` varchar(150) DEFAULT NULL,
  `cargo_empleado` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id_empleados`, `nombres_empleado`, `apellidos_empleados`, `cargo_empleado`) VALUES
(1, 'Carlos Javier', 'Mendoza Solis', 'Gerente de Tienda'),
(2, 'Ana Beatriz', 'Gomez Estrada', 'Subgerente'),
(3, 'Luis Fernando', 'Torres Duarte', 'Cajero Principal'),
(4, 'Maria Elena', 'Chavez Flores', 'Cajera Turno Tarde'),
(5, 'Jorge Luis', 'Ramirez Portal', 'Asesor de Ventas Senior'),
(6, 'Sofia Isabelle', 'Herrera Meza', 'Asesora de Componentes Gamer'),
(7, 'Andres Felipe', 'Castro Marin', 'Asesor de Periféricos y Audio'),
(8, 'Claudia Patricia', 'Morales Solis', 'Especialista en Armado de PC'),
(9, 'Ricardo Javier', 'Soto Espinoza', 'Técnico de Soporte Hardware'),
(10, 'Gabriela Alejandra', 'Reyes Cruz', 'Encargada de Garantías'),
(11, 'Alejandro', 'Vargas Pardo', 'Jefe de Almacén e Inventario'),
(12, 'Valeria', 'Montes de Oca', 'Auxiliar de Inventario'),
(13, 'Francisco', 'Guzman Ruiz', 'Encargado de Envíos y Delivery'),
(14, 'Diana Marcela', 'Salazar Luna', 'Atención al Cliente Postventa'),
(15, 'Manuel Antonio', 'Delgado Silva', 'Comunity Manager / Ventas Online'),
(16, 'Beatriz', 'Paredes Benitez', 'Asesora de Ventas Interna'),
(17, 'Roberto', 'Cordero Esquivel', 'Técnico Reparador de Laptops'),
(18, 'Natalia', 'Fuentes Miranda', 'Asesora de Ventas Express'),
(19, 'Guillermo', 'Sandoval Mejia', 'Soporte Técnico de Redes'),
(20, 'Christian', 'Palacios Rivera', 'Asesor de Ventas Junior'),
(21, 'Eduardo', 'Villalobos Saenz', 'Auxiliar de Almacén'),
(22, 'Laura', 'Rodriguez Beltran', 'Cajera de Fin de Semana'),
(23, 'Mauricio', 'Alvarado Castro', 'Asesor de Hardware Avanzado'),
(24, 'Verónica', 'Peña Nieto', 'Especialista en Setup Streamer'),
(25, 'Héctor', 'Lopez Jaramillo', 'Supervisor de Ventas Online');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_productos` int(11) NOT NULL,
  `nombre_productos` varchar(150) DEFAULT NULL,
  `descripcion_del_producto` varchar(150) DEFAULT NULL,
  `stock_disponible` int(11) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `id_distribuidores` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_productos`, `nombre_productos`, `descripcion_del_producto`, `stock_disponible`, `precio`, `id_distribuidores`) VALUES
(1, 'Soporte Elevador para Laptop', 'Base de aluminio ajustable para levantar la laptop y mejorar la postura al trabajar.', 45, 24.99, 1),
(2, 'Adaptador USB-C Multifunción', 'Conector que añade puertos USB normales, entrada de tarjeta de memoria y conexión para TV.', 60, 35.50, 2),
(3, 'Alfombrilla de Ratón Gigante con Luces', 'Mousepad grande de tela que cubre todo el escritorio y se ilumina en los bordes.', 80, 19.99, 3),
(4, 'Cable HDMI de Alta Velocidad', 'Cable de 2 metros para conectar la computadora al monitor o la televisión con excelente imagen.', 150, 14.95, 4),
(5, 'Pasta Térmica para Procesador', 'Crema especial que se aplica al motor de la computadora para evitar que se caliente.', 200, 9.99, 5),
(6, 'Kit de Limpieza para Pantallas y PC', 'Líquido con paño suave y cepillo para quitar el polvo de la pantalla y el teclado.', 110, 12.50, 6),
(7, 'Brazo Articulado para Monitor', 'Soporte que se sujeta a la mesa para mover la pantalla arriba, abajo y a los lados.', 25, 49.99, 7),
(8, 'Barra de Luz para Monitor', 'Lámpara alargada que se coloca sobre la pantalla para iluminar el escritorio sin deslumbrar.', 35, 39.99, 8),
(9, 'Organizador de Cables con Velcro', 'Tira de tela flexible de 2 metros para amarrar y esconder los cables sueltos.', 90, 8.50, 9),
(10, 'Almohadilla Ergonómica para Muñeca', 'Cojín de gel suave para apoyar la mano mientras usas el teclado y el mouse.', 75, 16.99, 10),
(11, 'Adaptador Bluetooth USB mini', 'Pequeña antena para conectar audífonos o controles inalámbricos a la computadora.', 130, 11.49, 11),
(12, 'Tarjeta de Sonido USB Externa', 'Adaptador sencillo para conectar audífonos y micrófono si los conectores de tu PC no funcionan.', 55, 15.00, 12),
(13, 'Ventilador con Luces de Colores', 'Ventilador para la caja de la computadora que ayuda a enfriarla y cambia de color.', 120, 18.25, 13),
(14, 'Cables de Colores para Decoración', 'Extensiones de cables de color blanco para que el interior de la computadora se vea más ordenado.', 40, 29.99, 14),
(15, 'Soporte para Tarjeta de Video', 'Pequeña barra metálica para sostener las tarjetas gráficas grandes y evitar que se doblen.', 65, 13.99, 15),
(16, 'Capturadora de Video Económica', 'Dispositivo para grabar o transmitir en vivo tus juegos de consola o computadora.', 20, 45.00, 16),
(17, 'Mini Kit de Destornilladores', 'Estuche con puntas pequeñas ideal para abrir la computadora o reparar el celular.', 85, 21.50, 17),
(18, 'Caja Protectora para Disco Duro', 'Carcasa que convierte un disco interno en un disco duro portátil para llevar tus archivos.', 50, 27.99, 18),
(19, 'Selector de Computadora (KVM)', 'Caja con botón para usar un mismo teclado y mouse en dos computadoras diferentes.', 15, 32.50, 19),
(20, 'Tira de Luces LED para Escritorio', 'Cinta de luces de colores para pegar detrás del escritorio y decorar tu habitación.', 70, 22.99, 20),
(21, 'Antena Wi-Fi potente para PC', 'Antena USB que mejora la recepción de internet inalámbrico en computadoras de escritorio.', 42, 38.00, 21),
(22, 'Soporte de Audífonos para Mesa', 'Gancho que se pega debajo del escritorio para colgar tus audífonos y ahorrar espacio.', 95, 9.95, 22),
(23, 'Mallas Filtro Antipolvo (Par)', 'Rejillas con imán para colocar en la computadora y evitar que le entre suciedad.', 140, 6.50, 23),
(24, 'Teclas de Colores Intercambiables', 'Paquete de teclas de repuesto de colores para personalizar el diseño de tu teclado mecánico.', 30, 26.00, 24),
(25, 'Gel Limpiador de Teclados', 'Goma elástica moldeable que atrapa la basura y migas atrapadas entre las teclas.', 180, 5.99, 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_ventas` int(11) NOT NULL,
  `id_empleados` int(11) DEFAULT NULL,
  `id_productos` int(11) DEFAULT NULL,
  `fecha_de_venta` date DEFAULT NULL,
  `id_cliente_asociado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_ventas`, `id_empleados`, `id_productos`, `fecha_de_venta`, `id_cliente_asociado`) VALUES
(1, 1, 1, '2026-06-01', 1),
(2, 2, 2, '2026-06-01', 2),
(3, 3, 3, '2026-06-02', 3),
(4, 4, 4, '2026-06-02', 4),
(5, 5, 5, '2026-06-03', 5),
(6, 6, 6, '2026-06-03', 6),
(7, 7, 7, '2026-06-04', 7),
(8, 8, 8, '2026-06-04', 8),
(9, 9, 9, '2026-06-05', 9),
(10, 10, 10, '2026-06-05', 10),
(11, 11, 11, '2026-06-06', 11),
(12, 12, 12, '2026-06-06', 12),
(13, 13, 13, '2026-06-07', 13),
(14, 14, 14, '2026-06-07', 14),
(15, 15, 15, '2026-06-08', 15),
(16, 16, 16, '2026-06-08', 16),
(17, 17, 17, '2026-06-09', 17),
(18, 18, 18, '2026-06-09', 18),
(19, 19, 19, '2026-06-10', 19),
(20, 20, 20, '2026-06-10', 20),
(21, 21, 21, '2026-06-11', 21),
(22, 22, 22, '2026-06-11', 22),
(23, 23, 23, '2026-06-12', 23),
(24, 24, 24, '2026-06-12', 24),
(25, 25, 25, '2026-06-13', 25);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente_asociados`
--
ALTER TABLE `cliente_asociados`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `distribuidores`
--
ALTER TABLE `distribuidores`
  ADD PRIMARY KEY (`id_distribuidores`),
  ADD KEY `id_productos` (`id_productos`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id_empleados`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_productos`),
  ADD KEY `id_distribuidores` (`id_distribuidores`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_ventas`),
  ADD KEY `id_cliente_asociado` (`id_cliente_asociado`),
  ADD KEY `id_empleados` (`id_empleados`,`id_productos`),
  ADD KEY `id_productos` (`id_productos`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente_asociados`
--
ALTER TABLE `cliente_asociados`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `distribuidores`
--
ALTER TABLE `distribuidores`
  MODIFY `id_distribuidores` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id_empleados` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_productos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_ventas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `distribuidores`
--
ALTER TABLE `distribuidores`
  ADD CONSTRAINT `distribuidores_ibfk_1` FOREIGN KEY (`id_productos`) REFERENCES `productos` (`id_productos`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_distribuidores`) REFERENCES `distribuidores` (`id_distribuidores`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_empleados`) REFERENCES `empleados` (`id_empleados`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`id_productos`) REFERENCES `productos` (`id_productos`),
  ADD CONSTRAINT `ventas_ibfk_3` FOREIGN KEY (`id_cliente_asociado`) REFERENCES `cliente_asociados` (`id_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
