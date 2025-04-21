# ThisIsNotARepo
DefinitelyNotASecretProject
![image](https://github.com/user-attachments/assets/1a70b4ee-abd0-4dce-9537-083d21ea1c7f)



# 🚀 Inicialización del Proyecto

Guía rápida para levantar el proyecto localmente y configurarlo correctamente.

---

## 📦 1. Instalar dependencias

Ejecuta el siguiente comando para instalar todas las gemas necesarias del proyecto:

```bash
bundle install
```

---

## 🎨 2. Configurar Tailwind CSS

Este proyecto ya incluye la gema `tailwindcss-rails`. Para completar su configuración, ejecuta:

```bash
./bin/rails tailwindcss:install
```

Este comando generará los archivos de configuración y habilitará Tailwind en la aplicación.

---

## 🗃️ 3. Configurar base de datos

El proyecto está diseñado para funcionar con **subdominios**, por lo tanto es necesario que:

1. Crees y migres la base de datos.
2. Registres al menos una empresa (`company`) en la tabla `companies`, asegurándote de establecer un `subdomain`.

### Si estás comenzando desde cero:

```bash
./bin/rails db:setup
```

### Si la base de datos ya está creada:

```bash
./bin/rails db:migrate
```

---

## 🌐 4. Acceso con subdominios en local

Después de registrar una empresa con su subdominio, podrás acceder al proyecto desde una URL con el siguiente formato:

### 🔗 Ejemplo de URL local:

```text
http://ejemplo-1.localhost:3000/
```

> 🔸 Asegúrate de que el subdominio en la URL coincida exactamente con el que ingresaste en la base de datos.

---

## ✅ ¡Listo!

Con estos pasos completados, tu entorno local debería estar funcionando correctamente.

¡Feliz desarrollo! 🛠️
