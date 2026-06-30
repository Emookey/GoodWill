# Vision Model Testing Update

The custom context work does not replace vision testing.

Current model roles:

- Use `qwen2.5:3b-project` for long text reasoning and recommendations.
- Use `qwen2.5vl:3b` for screenshot/image analysis tests.

Do not use `qwen2.5vl:3b` as the primary model for long project-summary reasoning unless the prompt includes image content. The text-focused `qwen2.5:3b-project` profile is currently better suited for long written project notes.
