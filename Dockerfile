# Використовуємо офіційний образ LiteLLM
FROM ghcr.io/berriai/litellm:main-latest

# Render підкладе твій Secret File (litellm_config.yaml) у папку /etc/secrets/ під час запуску.
# Ми вказуємо LiteLLM читати конфіг саме звідти.
CMD ["--config", "/etc/secrets/litellm_config.yaml", "--detailed_debug"]