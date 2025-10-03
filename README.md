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
**Imagen:** https://ejemplo.com/imagen-del-cafe.jpg
**Notas:** Café con excelentes notas a chocolate y frutas rojas, cuerpo medio y acidez balanceada. Perfecto para método V60.
```

### Campos disponibles

- **Nombre:** Nombre del café (si no se especifica, se usa el título del issue)
- **Origen:** País/región de origen
- **Tostador:** Marca o tostador
- **Precio:** Precio en euros (solo números, ej: 12.50)
- **Puntuación:** Valoración del 1 al 5
- **Fecha de compra:** Formato YYYY-MM-DD (ej: 2024-03-15)
- **Imagen:** URL de una imagen del café
- **Notas:** Descripción, notas de cata, comentarios

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
**Imagen:** https://example.com/geisha-panama.jpg
**Notas:** Café excepcional con notas florales distintivas y toques de té blanco. Acidez brillante y muy aromático. Uno de los mejores cafés que he probado.
```

## 🛠️ Configuración técnica

- **GitHub Actions:** `.github/workflows/generate-catalog.yml`
- **Archivo de datos:** `cafes.json` (generado automáticamente)
- **Frontend:** `index.html` (carga el JSON y muestra el catálogo)

¡Disfruta catalogando tus cafés! ☕️