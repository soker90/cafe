# ☕ Mi Catálogo de Cafés

[![Made with Claude AI](https://img.shields.io/badge/Made%20with-Claude%20AI-orange?style=flat-square&logo=anthropic)](https://claude.ai)
[![GitHub Actions](https://img.shields.io/github/actions/workflow/status/soker90/cafe/generate-catalog.yml?style=flat-square&logo=github-actions&label=Catalog%20Generation)](https://github.com/soker90/cafe/actions)
[![Issues](https://img.shields.io/github/issues/soker90/cafe/cafe?style=flat-square&logo=coffeescript&label=Cafés&color=brown)](https://github.com/soker90/cafe/issues?q=is%3Aopen+label%3Acafe)

Un catálogo personal de cafés que se actualiza automáticamente desde GitHub Issues.

## 🚀 Cómo funciona

Este proyecto utiliza GitHub Issues como base de datos para el catálogo de cafés. Cada vez que creas, editas o cierras un issue con el label `cafe`, se ejecuta automáticamente un GitHub Action que:

1. Lee todos los issues abiertos con el label `cafe`
2. Extrae la información del café desde el contenido del issue
3. Genera un archivo `cafes.json` con todos los datos
4. La web carga automáticamente este JSON y muestra el catálogo

## 📝 Cómo añadir un nuevo café

1. **Ve a la [pestaña de Issues](../../issues)**
2. **Haz clic en "New Issue"**
3. **Selecciona "☕ Nuevo Café"** del template
4. **Completa el formulario** con la información del café
5. **Crea el issue** - ¡El catálogo se actualizará automáticamente!

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
- **Notas de sabor:** Lista separada por comas (ej: Chocolate, Frutas rojas, Caramelo)
- **Notas:** Descripción detallada, notas de cata, comentarios
- **Foto:** Subir imagen arrastrando y soltando directamente en el issue

## ✏️ Cómo editar un café

1. **Encuentra el issue correspondiente** al café que quieres editar
2. **Haz clic en "Edit"** en el issue
3. **Modifica la información** que necesites cambiar
4. **Guarda los cambios** - El catálogo se actualizará automáticamente

## 🗑️ Cómo eliminar un café

### Opción 1: Cerrar el issue
1. **Encuentra el issue** correspondiente al café
2. **Cierra el issue** haciendo clic en "Close issue"
3. El café desaparecerá del catálogo automáticamente

### Opción 2: Quitar el label
1. **Encuentra el issue** correspondiente al café
2. **Quita el label "cafe"** del issue
3. El café desaparecerá del catálogo pero el issue permanecerá abierto

## 🔄 Gestión masiva

- **Reabrir café:** Reabre el issue cerrado y volverá al catálogo
- **Cambiar información:** Cualquier edición del issue actualiza el catálogo instantáneamente
- **Etiquetas adicionales:** Puedes agregar otros labels sin afectar el funcionamiento

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
**Notas de sabor:** Florales, Té blanco, Bergamota, Miel
**Notas:** Café excepcional con notas florales distintivas y toques de té blanco. Acidez brillante y muy aromático. Uno de los mejores cafés que he probado.

![Foto del paquete](https://example.com/geisha-panama-package.jpg)
```

## 🛠️ Configuración técnica

- **GitHub Actions:** `.github/workflows/generate-catalog.yml`
- **Archivo de datos:** `cafes.json` (generado automáticamente)
- **Frontend:** `index.html` (carga el JSON y muestra el catálogo)

¡Disfruta catalogando tus cafés! ☕️