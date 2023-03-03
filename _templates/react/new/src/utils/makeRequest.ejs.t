---
to:  "<%= (backendPresent ? (appName + '/src/utils/makeRequest/index.js') : null) %>"
force: true
---
import axios from 'axios';
import { BACKEND_URL } from '../../constants/apiEndPoints';

const makeRequest = async (apiEndPoint, dynamicConfig, navigate) => {
    const requestDetails = {
        baseURL: BACKEND_URL,
        url: apiEndPoint.url,
        method: apiEndPoint.method,
        ...dynamicConfig,
    };
    const { data } = await axios(requestDetails);
    return data;
};

export default makeRequest;
