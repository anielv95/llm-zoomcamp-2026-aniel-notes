from dataclasses import dataclass
import openai

@dataclass
class RagOutput:
    answer: str
    output: openai.types.responses.response.Response
