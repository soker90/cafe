#!/bin/bash

# Script para crear issues de ejemplo para el catálogo de cafés
# Uso: ./create-example-issues.sh

# Colores para output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}🚀 Creando issues de ejemplo para el catálogo de cafés...${NC}"

# Issue 1: Café Colombiano
echo -e "${GREEN}📝 Creando issue: Café de Colombia Premium${NC}"
gh issue create \
  --title "Café de Colombia Premium" \
  --label "cafe" \
  --body "### Nombre del Café
Café de Colombia Premium

### Origen
Colombia, Huila

### Tostador
Café Central

### Precio
12.50

### Puntuación
4

### Fecha de Compra
2024-03-15

### Proceso
Lavado

### Variedad
Caturra

### Altitud
1650

### Notas de Sabor
Chocolate, Frutas rojas, Caramelo

### Notas Adicionales
Café con excelentes notas a chocolate y frutas rojas, cuerpo medio y acidez balanceada. Perfecto para método V60. Muy consistente en cada taza."

# Issue 2: Geisha Panama
echo -e "${GREEN}📝 Creando issue: Geisha Panama Especial${NC}"
gh issue create \
  --title "Geisha Panama Especial" \
  --label "cafe" \
  --body "### Nombre del Café
Geisha Panama Especial

### Origen
Panamá, Boquete

### Tostador
Third Wave Coffee

### Precio
28.00

### Puntuación
5

### Fecha de Compra
2024-03-20

### Proceso
Natural

### Variedad
Geisha

### Altitud
1800

### Notas de Sabor
Florales, Té blanco, Bergamota, Miel

### Notas Adicionales
Café excepcional con notas florales distintivas y toques de té blanco. Acidez brillante y muy aromático. Uno de los mejores cafés que he probado."

# Issue 3: Brasil Santos
echo -e "${GREEN}📝 Creando issue: Brasil Santos${NC}"
gh issue create \
  --title "Brasil Santos" \
  --label "cafe" \
  --body "### Nombre del Café
Brasil Santos

### Origen
Brasil, Santos

### Tostador
Café Lokál

### Precio
8.90

### Puntuación
3

### Fecha de Compra
2024-03-10

### Proceso
Natural

### Variedad
Bourbon

### Altitud
1200

### Notas de Sabor
Nuez, Caramelo, Chocolate con leche

### Notas Adicionales
Café suave con notas a nuez y caramelo. Perfecto para café con leche. Buen café de diario, relación calidad-precio excelente."

# Issue 4: Etiopía Yirgacheffe
echo -e "${GREEN}📝 Creando issue: Etiopía Yirgacheffe${NC}"
gh issue create \
  --title "Etiopía Yirgacheffe" \
  --label "cafe" \
  --body "**Nombre:** Etiopía Yirgacheffe
**Origen:** Etiopía, Yirgacheffe
**Tostador:** Nømad Coffee
**Precio:** 16.00
**Puntuación:** 4
**Fecha de compra:** 2024-03-25
**Notas:** Café con intensas notas florales y cítricas. Acidez vibrante y muy aromático. Excelente como café filtrado."

# Issue 5: Guatemala Antigua
echo -e "${GREEN}📝 Creando issue: Guatemala Antigua${NC}"
gh issue create \
  --title "Guatemala Antigua" \
  --label "cafe" \
  --body "**Nombre:** Guatemala Antigua
**Origen:** Guatemala, Antigua
**Tostador:** Cafés El Magnífico
**Precio:** 14.50
**Puntuación:** 4
**Fecha de compra:** 2024-03-18
**Notas:** Café con cuerpo completo, notas a chocolate negro y especias. Retrogusto persistente. Excelente para espresso."

echo -e "${BLUE}✅ ¡Issues de ejemplo creados! El GitHub Action se ejecutará automáticamente para generar el catálogo.${NC}"
echo -e "${GREEN}💡 Tip: Puedes editar estos issues para cambiar la información o crear nuevos issues con el label 'cafe'${NC}"