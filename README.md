# Nombre del Proyecto

Descripción breve del proyecto.

## Política de Commits

Este proyecto sigue una política estándar para los mensajes de commit. Asegúrate de seguir estas pautas al hacer tus commits:

- Utiliza la convención de mensajes de commit Conventional Commits.
- Empieza cada mensaje de commit con un verbo en tiempo presente en minúsculas (por ejemplo, "add", "fix", "update").
- Especifica de forma clara y concisa los cambios realizados en el commit.
- Agrega una descripción más detallada después de una línea en blanco si es necesario.

## Organización del Branching

Este proyecto utiliza la estrategia de branching Gitflow para gestionar las ramas. A continuación se detallan las ramas principales y su propósito:

- `main`: Esta rama contiene siempre el código de producción. Se actualiza con las versiones estables del software.
- `develop`: Rama de desarrollo donde se integran todas las características completadas y probadas.
- `feature branches`: Se crean ramas separadas para cada nueva característica o cambio. Cada rama de característica se fusiona de vuelta a `develop` una vez completada y revisada.
- `hotfix branches`: Se utilizan para corregir problemas críticos en producción. Las correcciones se fusionan tanto en `main` como en `develop`.

### Justificación de la Elección de Gitflow

Se ha elegido la estrategia de Gitflow por las siguientes razones:

- **Separación de las características**: Gitflow facilita la gestión de características al mantenerlas en ramas separadas hasta que estén listas para ser fusionadas.
- **Estabilidad**: Al tener una rama `main` dedicada exclusivamente a la producción, se garantiza que el código en producción siempre sea estable y seguro.
- **Flexibilidad**: Permite la corrección rápida de problemas críticos en producción a través de las ramas de hotfix sin interferir con el desarrollo de nuevas características.

## Contribución

Si quieres contribuir a este proyecto, sigue estos pasos:

1. Haz un fork del repositorio.
2. Crea una rama a partir de `develop` para tu trabajo: `git checkout -b feature/nombre-de-la-caracteristica`.
3. Haz tus cambios y asegúrate de seguir la política de commits.
4. Envía un Pull Request a la rama `develop`.
5. Tu Pull Request será revisado y fusionado una vez aprobado.

¡Gracias por contribuir!

