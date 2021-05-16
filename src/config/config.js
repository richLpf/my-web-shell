class Config {
    DEV = "pre"
    PRODUCTION = "production"
    environment = process.env.REACT_APP_BUILD_ENV || this.DEV;

    isDev () {
        return this.environment = this.DEV
    }

    currentEnvironment () {
        return this.environment;
    }

    isProduction () {
        return this.environment === this.PRODUCTION
    }
}

export default new Config