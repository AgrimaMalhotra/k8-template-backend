---
to:  "<%= (backendPresent ? (appName + '/src/components/HealthCheck/index.jsx') : null) %>"
force: true
---
import React from 'react'
import { useEffect } from 'react'
import { useState } from 'react'
import { PING_BACKEND } from '../../constants/apiEndPoints'
import makeRequest from '../../utils/makeRequest'

const HealthCheck = () => {
    const [response, setResponse] = useState({});
    useEffect(() => {
        makeRequest(PING_BACKEND, {}).then((res) => {
            setResponse(res);
        });
    }, []);
    return (
        <div>
            {response.toString()}
        </div>
    )
}

export default HealthCheck;
