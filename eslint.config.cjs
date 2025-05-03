// eslint.config.cjs
const { FlatCompat } = require('@eslint/eslintrc');
const compat = new FlatCompat();

module.exports = compat.config({
  overrides: [
    {
      files: ["**/*.js", "**/*.cjs", "**/*.mjs"],
      rules: {
        "prefer-const": "warn",
        "no-constant-binary-expression": "error",
      },
    },
  ],
});
