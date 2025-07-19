🔹 Descrizione
Un semplice contatore di pulsanti che utilizza un display LCD I2C per visualizzare il numero di pressioni. Include anche un pulsante di reset per azzerare il conteggio.

🛠 Componenti necessari

Arduino (Uno, Nano, Mega, etc.)
Display LCD I2C 16x2 (o compatibile)
2 pulsanti (1 per incrementare, 1 per resettare)
Resistenze (se non si usa INPUT_PULLUP)
Breadboard e cavi jumper
📌 Funzionalità
✅ Conteggio incrementale – Ogni pressione del pulsante aumenta il contatore.
✅ Reset del conteggio – Un secondo pulsante azzera il valore.
✅ Visualizzazione su LCD – Mostra il numero di pressioni in tempo reale.
✅ Debounce software – Evita conteggi multipli per una singola pressione.

🔌 Schema Elettrico (Wiring)

Componente	Pin Arduino
Pulsante (+)	11
Pulsante (Reset)	10
LCD I2C SDA	A4
LCD I2C SCL	A5
📁 Struttura del Codice

LiquidCrystal_I2C per gestire il display LCD.
Debounce software per evitare falsi trigger dei pulsanti.
Gestione del reset con un secondo pulsante.
⚙️ Installazione

Collegare il circuito come nello schema.
Caricare lo sketch su Arduino.
Il display mostrerà il conteggio delle pressioni.
🎯 Possibili Miglioramenti

Aggiunta di un buzzer per feedback sonoro.
Memorizzazione del conteggio su EEPROM per ripristino dopo spegnimento.
Implementazione di un timeout per il reset (es. pressione lunga).
📜 Licenza
MIT License - Libero uso, modifica e distribuzione.

📸 Anteprima
(Inserire un'immagine del progetto se disponibile)

🔗 Link utili

Libreria LiquidCrystal_I2C
Tutorial Debounce
🚀 Happy Making!

Come usare questo README
