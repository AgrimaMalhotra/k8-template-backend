const { spawn } = require('child_process');


const runHygen = (generator, action, config) => {
    const params = [];
    Object.keys(config).forEach(key => {
        params.push(`--${key}`);
        params.push((config[key] ? config[key] : 0));
    });
    const hygenProcess = spawn('npx', ['hygen', generator, action, ...params]);
    
    hygenProcess.stdout.on('data', data => {
        console.log(data.toString());
    });
    hygenProcess.stderr.on('data', data => {
        console.error(data.toString());
    });
    hygenProcess.on('close', code => {
        console.log(`Hygen process exited with code ${code}`);
    });
};


const config = {
    appName: 'fe-boilerplate',
    // appName: 'test',
    port: 4005,
    backendPresent: true,
    backendUrl: 'http://localhost',
    backendPort: 5500,
    
}

runHygen('react', 'new', config);
