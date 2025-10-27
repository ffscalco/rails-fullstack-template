const path = require("path");
const esbuild = require("esbuild");

const watch = process.argv.includes("--watch");
const minify = !watch;

async function build() {
  const ctx = await esbuild.context({
    entryPoints: ["application.js"],
    bundle: true,
    minify,
    sourcemap: true,
    outdir: path.join(process.cwd(), "app/assets/builds"),
    absWorkingDir: path.join(process.cwd(), "app/javascript"),
    publicPath: "/assets",
    loader: {
      ".js": "jsx",
      ".png": "file",
      ".jpg": "file",
      ".svg": "file",
      ".css": "css",
    },
  });

  if (watch) {
    await ctx.watch();
    console.log("👀 Watching for changes...");
  } else {
    await ctx.rebuild();
    console.log("✅ Build completed.");
    await ctx.dispose();
  }
}

build().catch((error) => {
  console.error(error);
  process.exit(1);
});
