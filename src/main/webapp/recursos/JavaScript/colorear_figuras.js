// JavaScript para manipular el canvas
      const canvas = new fabric.Canvas('myCanvas');
      const imageSrc = '/Portafolio/res/img/d1.png'; // Reemplaza 'ruta_de_tu_imagen.jpg' con la ruta de tu imagen

      // Declaramos la variable isDrawing
      let isDrawing = false;

      // Cargamos la imagen en un objeto img
      const img = new Image();
      img.onload = function () {
        // Calculamos la posición para centrar la imagen en el canvas
        const x = (canvas.width - img.width) / 2;
        const y = (canvas.height - img.height) / 2;

        // Creamos un objeto Fabric.js Image
        const fabricImage = new fabric.Image(img, {
          left: x, // Establecemos la posición en X para centrar la imagen
          top: y, // Establecemos la posición en Y para centrar la imagen
          selectable: false, // Deshabilitamos la interacción con la imagen
          evented: false // Deshabilitamos eventos sobre la imagen
        });

        // Añadimos la imagen al canvas
        canvas.add(fabricImage);
        canvas.renderAll(); // Aseguramos que la imagen se renderice en el canvas
      };
      img.src = imageSrc;

      let currentColor = 'white'; // Color inicial de los círculos
      let currentShape = 'line'; // Forma inicial para dibujar

      function changeColor(color) {
        currentColor = color;
      }

      function enablePencil() {
        // Deshabilitamos el modo de dibujo a mano alzada si se selecciona otra forma
        canvas.isDrawingMode = !canvas.isDrawingMode;
        currentShape = canvas.isDrawingMode ? 'pencil' : 'circle';
      }

      function setShape(shape) {
        canvas.isDrawingMode = false; // Deshabilitamos el modo de dibujo a mano alzada
        currentShape = shape;
      }

      canvas.on('mouse:down', function (event) {
        const x = event.e.offsetX;
        const y = event.e.offsetY;

        if (currentShape === 'line' || currentShape === 'pencil') {
          isDrawing = true;
          lastX = x;
          lastY = y;
        } else {
          isDrawing = false;
          let shape;
          switch (currentShape) {
            case 'circle':
              shape = new fabric.Circle({
                left: x - 10,
                top: y - 10,
                radius: 10,
                fill: currentColor
              });
              break;
            case 'square':
              shape = new fabric.Rect({
                left: x - 10,
                top: y - 10,
                width: 20,
                height: 20,
                fill: currentColor
              });
              break;
            case 'triangle':
              shape = new fabric.Triangle({
                left: x - 10,
                top: y - 10,
                width: 20,
                height: 20,
                fill: currentColor
              });
              break;
          }

          if (shape) {
            canvas.add(shape);
          }
        }
      });

      canvas.on('mouse:move', function (event) {
        if (isDrawing && (currentShape === 'line' || currentShape === 'pencil')) {
          const x = event.e.offsetX;
          const y = event.e.offsetY;

          if (currentShape === 'line') {
            const line = new fabric.Line([lastX, lastY, x, y], {
              stroke: currentColor,
              strokeWidth: 4
            });
            canvas.add(line);
          } else if (currentShape === 'pencil') {
            const line = new fabric.Line([lastX, lastY, x, y], {
              stroke: currentColor,
              strokeWidth: 2
            });
            canvas.add(line);
          }

          lastX = x;
          lastY = y;
        }
      });

      canvas.on('mouse:up', function (event) {
        if (isDrawing) {
          isDrawing = false;
          lastX = null;
          lastY = null;
        }
      });