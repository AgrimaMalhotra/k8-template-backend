---
to: output-boilerplates/<%= appName %>/index.js
force: true
---
const express = require('express');
const routes =require("<%='./src/routes/'+ appName+'.routes' %>");

const app = express();
const PORT = process.env.PORT || <%= port %>;

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use('/api', routes);
<%= if(frontend)
app.use(cors({
  origin: ["<%='https://localhost:'+ frontendPort %>"]
})); %>

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});

