-- Crear la base de datos
CREATE DATABASE buscador_ia;

-- Crear tabla para soluciones de IA
CREATE TABLE soluciones_ia (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    categoria VARCHAR(100) NOT NULL,
    descripcion TEXT NOT NULL,
    palabras_clave TEXT[] NOT NULL
);

-- Insertar datos de ejemplo (10 soluciones de IA)
INSERT INTO soluciones_ia (nombre, categoria, descripcion, palabras_clave)
VALUES
    ('GPT-4', 'Procesamiento de Lenguaje Natural, Modelado Generativo', 
     'GPT-4 es un modelo de lenguaje avanzado de OpenAI basado en redes neuronales profundas. Es capaz de comprender y generar lenguaje humano con gran precisión, lo que lo hace útil para aplicaciones como chatbots, redacción de contenido, análisis de sentimientos y generación de código. Al entrenarse con grandes volúmenes de texto, GPT-4 aprende patrones y contextos complejos, permitiendo respuestas contextualizadas y detalladas.', 
     ARRAY['lenguaje natural', 'inteligencia artificial', 'chatbots', 'generación de texto', 'análisis de sentimientos', 'OpenAI']),
    
    ('DALL-E', 'Visión por Computadora, Modelado Generativo', 
     'DALL-E es un modelo de IA desarrollado por OpenAI que permite la generación de imágenes a partir de descripciones de texto. Utiliza técnicas de redes neuronales convolucionales y de transformers para crear imágenes únicas, combinando conceptos de forma creativa y realista. Es útil en diseño gráfico, marketing y arte digital.', 
     ARRAY['generación de imágenes', 'visión por computadora', 'OpenAI', 'arte digital', 'redes neuronales', 'transformers']),
    
    ('IBM Watson', 'Analítica de Datos, Procesamiento de Lenguaje Natural', 
     'IBM Watson es una plataforma de IA de IBM que combina procesamiento de lenguaje natural y aprendizaje automático para ofrecer análisis avanzados. Puede procesar grandes volúmenes de datos no estructurados, hacer recomendaciones personalizadas y responder preguntas en lenguaje natural. Se utiliza en áreas como atención médica, finanzas y servicio al cliente.', 
     ARRAY['analítica de datos', 'IBM', 'aprendizaje automático', 'recomendaciones', 'procesamiento de lenguaje natural', 'atención médica', 'finanzas', 'servicio al cliente']),
    
    ('DeepMind AlphaFold', 'Bioinformática, Modelado Predictivo', 
     'AlphaFold es un sistema de IA desarrollado por DeepMind que predice la estructura tridimensional de proteínas a partir de sus secuencias de aminoácidos. Este avance ha revolucionado la investigación en biología molecular, permitiendo a los científicos comprender mejor la función de las proteínas y acelerar el descubrimiento de fármacos. AlphaFold ha demostrado precisión similar a la de métodos experimentales complejos.', 
     ARRAY['bioinformática', 'biología molecular', 'DeepMind', 'predicción de proteínas', 'descubrimiento de fármacos', 'estructura tridimensional']),
    
    ('Google BERT', 'Procesamiento de Lenguaje Natural, Análisis de Textos', 
     'BERT (Bidirectional Encoder Representations from Transformers) es un modelo de lenguaje de Google diseñado para comprender la contextualidad de las palabras en un texto. Se utiliza ampliamente en tareas de búsqueda, análisis de sentimientos, chatbots y respuestas automáticas, proporcionando una precisión significativamente mejorada en el procesamiento del lenguaje natural.', 
     ARRAY['lenguaje natural', 'análisis de textos', 'Google', 'transformers', 'búsqueda', 'chatbots', 'análisis de sentimientos', 'respuestas automáticas']),
    
    ('Tesla Autopilot', 'Conducción Autónoma, Visión por Computadora', 
     'Autopilot de Tesla es un sistema avanzado de asistencia a la conducción basado en visión por computadora e inteligencia artificial. Utiliza múltiples cámaras, sensores y algoritmos de aprendizaje profundo para reconocer y responder a señales de tráfico, peatones y otros vehículos en tiempo real. Permite al vehículo mantener el carril, cambiar de carril y detenerse en semáforos, acercándose a la conducción autónoma completa.', 
     ARRAY['conducción autónoma', 'Tesla', 'visión por computadora', 'sensores', 'cámaras', 'aprendizaje profundo', 'asistencia a la conducción']),
    
    ('OpenCV', 'Visión por Computadora, Procesamiento de Imágenes', 
     'OpenCV es una biblioteca de visión por computadora que proporciona herramientas para procesar y analizar imágenes y videos en tiempo real. Se usa ampliamente en aplicaciones de seguridad, manufactura, medicina y automóviles autónomos, permitiendo el reconocimiento de patrones, detección de objetos, rastreo de movimiento y reconstrucción 3D.', 
     ARRAY['visión por computadora', 'procesamiento de imágenes', 'OpenCV', 'seguridad', 'medicina', 'reconocimiento de patrones', 'detección de objetos', 'rastreo de movimiento', 'reconstrucción 3D']),
    
    ('Amazon Rekognition', 'Visión por Computadora, Análisis de Imágenes y Videos', 
     'Amazon Rekognition es un servicio de AWS que permite a los desarrolladores integrar capacidades de reconocimiento de imágenes y análisis de videos en sus aplicaciones. Utiliza redes neuronales profundas para detectar objetos, rostros, escenas y actividades, y para identificar contenido inapropiado. Es útil en seguridad, marketing y monitoreo de contenido.', 
     ARRAY['Amazon', 'AWS', 'visión por computadora', 'análisis de imágenes', 'análisis de videos', 'reconocimiento de objetos', 'detección de rostros', 'monitoreo de contenido']),
    
    ('Microsoft Azure AI', 'Computación en la Nube, Análisis de Datos, Modelado Predictivo', 
     'Azure AI de Microsoft proporciona una amplia gama de servicios de inteligencia artificial en la nube, que incluyen modelos de procesamiento de lenguaje natural, visión por computadora, reconocimiento de voz y predicciones basadas en datos. Es una plataforma versátil para empresas que buscan integrar IA en sus procesos de negocio y mejorar la toma de decisiones.', 
     ARRAY['Microsoft', 'Azure', 'computación en la nube', 'análisis de datos', 'predicciones', 'reconocimiento de voz', 'visión por computadora', 'procesamiento de lenguaje natural', 'integración empresarial']),
    
    ('NVIDIA DeepStream', 'Análisis de Video, Visión por Computadora, IoT', 
     'DeepStream de NVIDIA es una plataforma para analizar videos y datos en tiempo real en dispositivos de IoT y aplicaciones de visión por computadora. Utiliza GPU de NVIDIA para procesamiento intensivo, permitiendo detectar objetos, reconocer rostros y analizar flujos de video con alta eficiencia. Es ideal para seguridad, retail y ciudades inteligentes.', 
     ARRAY['NVIDIA', 'DeepStream', 'visión por computadora', 'análisis de video', 'IoT', 'ciudades inteligentes', 'reconocimiento de objetos', 'seguridad', 'GPU'])
;

DROP TABLE IF EXISTS soluciones_ia;