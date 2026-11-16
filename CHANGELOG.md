# Changelog

## 2.0.0 — LangGraph & private inference

- Orchestration LangGraph pour les agents de validation, analyse, rédaction, qualité et approbation.
- Rédacteur basé sur LangChain Core LCEL.
- Planification LLM facultative via Groq ou endpoint privé OpenAI-compatible ; mode sans LLM.
- Docker Compose entreprise : PostgreSQL, worker unique, Ollama facultatif, API localhost sur 8001.
- README orienté bénéfices métier et garde-fous de l'automatisation.

## 1.0.0 — Version initiale

- Reporting commercial, relances en brouillon, approbation humaine, outbox et planification UTC.
