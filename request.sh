curl -X POST http://192.168.0.94:11434/api/chat -H "Content-Type: application/json" -d '{
  "model": "llama3.2-numkeep",
  "messages": [{"role": "user", "content": "Tell me about Poland."}],
  "stream": false,
  "format": {
    "type": "object",
    "properties": {
      "name": {
        "type": "string"
      },
      "capital": {
        "type": "string"
      },
      "summary": {
        "type": "string"
      },
      "tags": {
        "type": "array",
        "items": {
          "type": "string"
        }
      },
      "languages": {
        "type": "array",
        "items": {
          "type": "string"
        }
      }
    },
    "required": [
      "name",
      "capital", 
      "languages",
      "tags"
    ]
  }
}'