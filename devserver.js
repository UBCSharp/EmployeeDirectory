const express = require("express");
const { createProxyMiddleware } = require("http-proxy-middleware");
const app = express();
const port = 3000;

app.use(express.static("build"));

app.use(
  "/api",
  createProxyMiddleware({
    target: "http://localhost:5000",
    changeOrigin: true,
    ws: true,
  }),
);

app.listen(port, () => {
  console.log(`Listening at http://localhost:${port}`);
});
