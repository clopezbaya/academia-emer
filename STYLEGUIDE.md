# Guía de Estilo Visual - Academia Emer

Este documento resume la línea gráfica y los componentes visuales principales para la plataforma Academia Emer. El objetivo es mantener una identidad visual coherente, profesional y moderna.

## 1. Fundamentos de la Marca

### 1.1 Paleta de Colores

Se han definido colores primarios y secundarios para ser usados a través de variables CSS.

| Variable CSS             | Valor Hex | Descripción                             |
| ------------------------ | --------- | --------------------------------------- |
| `--e-color-principal`    | `#ba1557` | Rosa oscuro. Para botones, enlaces activos y acentos. |
| `--e-color-texto`        | `#515151` | Gris oscuro. Para texto principal y fondos oscuros (footer). |
| `--e-color-blanco`       | `#FFFFFF` | Blanco. Para fondos claros y texto sobre fondos oscuros. |
| `--e-color-fondo`        | `#f8f9fa` | Gris muy claro. Para fondos de secciones. |
| `--e-color-borde`        | `#dee2e6` | Gris claro. Para bordes y separadores.  |
| `--e-color-acento-hover` | `#a3134d` | Variante más oscura del principal para interacciones (hover). |

**Ubicación:** Las variables están definidas en `:root` dentro de `public/assets/frontend/default/css/branding.css`.

### 1.2 Tipografía

-   **Fuente Principal:** `Inter` (importada de Google Fonts).
-   **Peso Normal:** `400`
-   **Peso Medio:** `500` (enlaces de menú)
-   **Peso Semi-Negrita:** `600` (títulos y botones)

La fuente se aplica globalmente en el `body`. Los títulos (`h1`-`h6`) tienen un peso de `600` por defecto.

## 2. Componentes Globales

Se han creado clases CSS para componentes reutilizables. Todos los estilos se encuentran en `public/assets/frontend/default/css/branding.css`.

### 2.1 Botones

-   **Botón Primario:** `.btn-e-primary`
    -   **Uso:** Para llamadas a la acción principales (Login, Comprar, Enviar).
    -   **Estilo:** Fondo rosa (`--e-color-principal`), texto blanco.

-   **Botón Secundario:** `.btn-e-secondary`
    -   **Uso:** Para acciones secundarias (Ver más, Cancelar, Contacto).
    -   **Estilo:** Fondo blanco, borde y texto rosa (`--e-color-principal`).

Ambos botones tienen estados `:hover` definidos para una mejor experiencia de usuario.

### 2.2 Cabecera (Header)

-   **Archivo:** `resources/views/components/home_made_by_developer/header.blade.php`
-   **Estilos:**
    -   Fondo blanco con una sombra sutil para darle elevación.
    -   El logo principal es `public/assets/frontend/default/image/logo-principal.svg`.
    -   Los enlaces del menú usan el color de texto (`--e-color-texto`) y el color principal (`--e-color-principal`) en estado activo o hover.

### 2.3 Pie de Página (Footer)

-   **Archivo:** `resources/views/components/home_made_by_developer/footer.blade.php`
-   **Estilos:**
    -   Fondo oscuro (`--e-color-texto`).
    -   Todo el texto y los enlaces son de color blanco con opacidad variable para la jerarquía visual.
    -   El logo se muestra en blanco (usando `filter: brightness(0) invert(1)`).

### 2.4 Tarjetas de Curso

-   **Clase principal:** `.single-feature`
-   **Estilos:**
    -   Fondo blanco, borde sutil y esquinas redondeadas.
    -   Efecto de sombra y elevación al pasar el cursor (`:hover`) para incentivar la interacción.
    -   Tipografía limpia y legible para el título y los detalles del curso.

## 3. Uso y Consistencia

Para mantener la consistencia en futuros desarrollos:

1.  **Utiliza las variables CSS:** Siempre que necesites usar un color de la marca, utiliza las variables (ej: `color: var(--e-color-principal);`) en lugar de códigos hexadecimales. Esto permite cambios de marca globales editando un solo archivo.
2.  **Aplica las clases de componentes:** En lugar de crear nuevos estilos para elementos comunes como botones, reutiliza las clases `.btn-e-primary` y `.btn-e-secondary`.
3.  **Consulta esta guía:** Ante la duda, revisa este documento para asegurar que los nuevos diseños se alinean con la identidad visual establecida.
