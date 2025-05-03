'use strict'

/**
 * New Relic agent configuration.
 */
exports.config = {
  app_name: [process.env.NEW_RELIC_APP_NAME || 'Node Hello App'],
  license_key: process.env.NEW_RELIC_LICENSE_KEY,
  logging: {
    level: 'info'
  }
}
