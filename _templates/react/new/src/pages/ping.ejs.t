---
to:  "<%= (backendPresent ? (appName + '/src/pages/Ping/index.jsx') : null) %>"
force: true
---
import React from 'react'
import Footer from '../../components/Footer'
import Header from '../../components/Header'
import HealthCheck from '../../components/HealthCheck'

const Ping = () => {
    return (
        <div>
            <Header />
            <HealthCheck />
            <Footer />
        </div>
    )
}

export default Ping
