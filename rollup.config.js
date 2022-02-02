import { defineConfig } from "rollup";
import FileSizePlugin from "rollup-plugin-filesize";
import { nodeResolve as NodeResolvePlugin } from "@rollup/plugin-node-resolve";
import ClosureCompiler from "@ampproject/rollup-plugin-closure-compiler";

export default defineConfig({
  input: "lib/es6/src/Main.mjs",

  output: {
    file: "lib/index.js",
    format: "es",

    generatedCode: {
      constBindings: true,
    },
  },

  plugins: [ClosureCompiler(), FileSizePlugin(), NodeResolvePlugin()],
});
