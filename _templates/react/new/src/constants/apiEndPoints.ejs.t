---
to:  "<%= (backendPresent ? (appName + '/src/constants/apiEndPoints.js') : null) %>"
force: true
---
export const BACKEND_URL = '<%= backendUrl%>:<%= backendPort%>';

export const PING_BACKEND = {
  url: '',
  method: 'ping',
};