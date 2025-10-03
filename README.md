# ☕ Mi Catálogo de Cafés

Un catálogo personal de cafés que se actualiza automáticamente desde GitHub Issues.

## 🚀 Cómo funciona

Este proyecto utiliza GitHub Issues como base de datos para el catálogo de cafés. Cada vez que creas, editas o cierras un issue con el label `cafe`, se ejecuta automáticamente un GitHub Action que:

1. Lee todos los issues abiertos con el label `cafe`
2. Extrae la información del café desde el contenido del issue
3. Genera un archivo `cafes.json` con todos los datos
4. La web carga automáticamente este JSON y muestra el catálogo

## 📝 Cómo añadir un nuevo café

1. **Crea un nuevo issue** en este repositorio
2. **Añade el label `cafe`** al issue
3. **Usa el título** para el nombre del café
4. **En el contenido del issue**, incluye la información usando este formato:

```
**Nombre:** Café de Colombia Premium
**Origen:** Colombia, Huila
**Tostador:** Café Central
**Precio:** 12.50
**Puntuación:** 4
**Fecha de compra:** 2024-03-15
**Proceso:** Lavado
**Variedad:** Caturra
**Altitud:** 1650
**Peso:** 250
**Nivel de tueste:** Medio
**Notas de sabor:** Chocolate, Frutas rojas, Caramelo
**Foto del paquete:** https://ejemplo.com/imagen-paquete.jpg
**Notas:** Café con excelentes notas a chocolate y frutas rojas, cuerpo medio y acidez balanceada. Perfecto para método V60.
```

### Campos disponibles

- **Nombre:** Nombre del café (si no se especifica, se usa el título del issue)
- **Origen:** País/región de origen (ej: Colombia, Huila)
- **Tostador:** Marca o tostador (ej: Café Central, Nømad Coffee)
- **Precio:** Precio en euros (solo números, ej: 12.50)
- **Puntuación:** Valoración del 1 al 5
- **Fecha de compra:** Formato YYYY-MM-DD (ej: 2024-03-15)
- **Proceso:** Método de procesado (ej: Lavado, Natural, Honey, Semi-lavado)
- **Variedad:** Variedad del café (ej: Caturra, Geisha, Bourbon)
- **Altitud:** Altitud en metros (ej: 1650)
- **Peso:** Peso del paquete en gramos (ej: 250)
- **Nivel de tueste:** Nivel de tostado (ej: Claro, Medio, Oscuro)
- **Notas de sabor:** Lista separada por comas (ej: Chocolate, Frutas rojas, Caramelo)
- **Foto del paquete:** URL de una imagen del paquete del café
- **Imagen:** URL de una imagen del café (campo adicional/alternativo)
- **Notas:** Descripción detallada, notas de cata, comentarios

## ✏️ Cómo editar un café

1. Encuentra el issue correspondiente al café
2. Edita el contenido del issue
3. El catálogo se actualizará automáticamente

## 🗑️ Cómo eliminar un café

1. Cierra el issue correspondiente al café
2. El café desaparecerá del catálogo automáticamente

## 🔄 Actualización automática

- El GitHub Action se ejecuta cada vez que hay cambios en los issues con label `cafe`
- La actualización es automática y no requiere intervención manual
- Puedes ver el estado de las ejecuciones en la pestaña "Actions" del repositorio

## 🌐 Ver el catálogo

Abre `index.html` en tu navegador o configura GitHub Pages para acceder a tu catálogo online.

### ✨ Características de la web

- **🔍 Filtros avanzados:** Por tostador, origen, puntuación, proceso de beneficiado
- **🔍 Búsqueda de texto:** Busca por nombre, notas, variedad, etc.
- **📊 Estadísticas:** Total de cafés, puntuación media, gasto total
- **📱 Responsive:** Funciona perfectamente en móvil y desktop
- **🏷️ Etiquetas visuales:** Proceso, origen, tostador con colores distintivos
- **⭐ Sistema de puntuación:** Estrellas visuales de 1 a 5
- **🖼️ Imágenes:** Soporta fotos de los paquetes de café
- **🔗 Integración con GitHub:** Enlaces directos a los issues para editar
- **📈 Ordenación:** Por fecha, puntuación, precio, nombre

## 📋 Ejemplo de issue

**Título:** Geisha Panama Especial

**Labels:** `cafe`

**Contenido:**
```
**Nombre:** Geisha Panama Especial
**Origen:** Panamá, Boquete
**Tostador:** Third Wave Coffee
**Precio:** 28.00
**Puntuación:** 5
**Fecha de compra:** 2024-03-20
**Proceso:** Natural
**Variedad:** Geisha
**Altitud:** 1800
**Peso:** 200
**Nivel de tueste:** Claro
**Notas de sabor:** Florales, Té blanco, Bergamota, Miel
**Foto del paquete:** https://example.com/geisha-panama-package.jpg
**Notas:** Café excepcional con notas florales distintivas y toques de té blanco. Acidez brillante y muy aromático. Uno de los mejores cafés que he probado.
```

## 🛠️ Configuración técnica

- **GitHub Actions:** `.github/workflows/generate-catalog.yml`
- **Archivo de datos:** `cafes.json` (generado automáticamente)
- **Frontend:** `index.html` (carga el JSON y muestra el catálogo)

¡Disfruta catalogando tus cafés! ☕️