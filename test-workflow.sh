#!/bin/bash

# Script para probar el workflow de generación del catálogo
# Uso: ./test-workflow.sh

echo "🧪 Probando el workflow de generación del catálogo..."

# Verificar que gh está instalado
if ! command -v gh &> /dev/null; then
    echo "❌ GitHub CLI (gh) no está instalado"
    echo "📦 Instala con: sudo apt install gh"
    exit 1
fi

# Verificar autenticación
if ! gh auth status &> /dev/null; then
    echo "❌ No estás autenticado en GitHub CLI"
    echo "🔑 Ejecuta: gh auth login"
    exit 1
fi

echo "✅ GitHub CLI configurado correctamente"

# Crear un issue de prueba
echo "📝 Creando issue de prueba..."

ISSUE_URL=$(gh issue create \
    --title "🧪 Café de Prueba - $(date '+%Y-%m-%d %H:%M')" \
    --body "### Nombre del Café
Café de Prueba Automatizada

### Origen
Colombia, Test Region

### Tostador
Test Roasters

### Precio
15.99

### Puntuación
4

### Fecha de Compra
$(date '+%Y-%m-%d')

### Proceso
Lavado

### Variedad
Test Variety

### Altitud
1500

### Notas de Sabor
Chocolate, Prueba, Automation

### Notas Adicionales
Este es un café de prueba creado automáticamente para validar el workflow de generación del catálogo. Debería aparecer en cafes.json después de que se ejecute el Action.

### Imagen del Paquete
![Café de prueba](https://images.unsplash.com/photo-1447933625340-f930f8db2942?w=400&h=400&fit=crop&crop=faces&auto=format&q=80)

_Imagen de ejemplo de un paquete de café de alta calidad_")

# Ahora agregar el label para activar el workflow
echo "🏷️ Agregando label 'cafe' para activar el workflow..."
gh issue edit \$ISSUE_NUMBER --add-label "cafe"

echo "✅ Issue creado: $ISSUE_URL"

# Obtener el número del issue
ISSUE_NUMBER=$(echo $ISSUE_URL | grep -o '[0-9]*$')
echo "📋 Número del issue: #$ISSUE_NUMBER"

echo ""
echo "🚀 El workflow debería ejecutarse automáticamente ahora."
echo "📊 Puedes ver el progreso en: https://github.com/$(gh repo view --json owner,name -q '.owner.login + "/" + .name')/actions"
echo ""
echo "⏳ Espera unos segundos y luego verifica:"
echo "   1. Que el Action se haya ejecutado correctamente"
echo "   2. Que cafes.json se haya actualizado"
echo "   3. Que el nuevo café aparezca en el catálogo web"
echo ""
echo "🧹 Para limpiar después de la prueba:"
echo "   gh issue close $ISSUE_NUMBER"
echo ""
echo "🎉 ¡Prueba iniciada con éxito!"