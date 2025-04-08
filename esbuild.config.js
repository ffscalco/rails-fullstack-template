const path = require("path");
const rails = require("esbuild-rails");
const esbuild = require("esbuild");

(async () => {
  const ctx = await esbuild.context({
    entryPoints: ["application.js"],
    bundle: true,
    outdir: path.join(process.cwd(), "app/assets/builds"),
    absWorkingDir: path.join(process.cwd(), "app/javascript"),
    plugins: [rails()],
  });

  if (process.argv.includes("--watch")) {
    await ctx.watch(); // Enable watch mode
    console.log("Watching for changes...");
  } else {
    await ctx.rebuild(); // Perform a single build
    console.log("Build completed.");
    ctx.dispose(); // Dispose of the context if not watching
  }
})();
