import time, logging
from google import genai
from google.genai.errors import ServerError

logger = logging.getLogger(__name__)

# Models can be swapped when you run out of requests per day
#MODEL = "gemini-3-flash-preview"
MODEL = "gemini-2.5-flash"

def gemini(prompt, max_retries=3, backoff_seconds=1.0):
    attempt = 0
    while True:
        try:
            client = client = genai.Client()
            response = client.models.generate_content(
                model=MODEL,
                contents=prompt
            )
            return response.text
        except ServerError as e:
            attempt += 1
            # If it's a 503 UNAVAILABLE, retry up to max_retries
            err = getattr(e, "error", None) or {}
            code = err.get("code") or getattr(e, "code", None)
            message = err.get("message") or str(e)
            if code == 503 and attempt <= max_retries:
                logger.warning(f"ServerError 503 UNAVAILABLE: {message}. Retrying attempt {attempt}/{max_retries} after {backoff_seconds * attempt} seconds...")
                time.sleep(backoff_seconds * attempt)  # simple exponential backoff
                continue
            raise