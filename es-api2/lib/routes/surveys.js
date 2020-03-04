'use strict';

module.exports = [
    {
        method: 'get',
        path: '/api/surveys',
        config: {
            handler: (request, reply) => {
                const Surveys = request.collections().surveys;
                reply(Surveys.find().sort('id ASC'));
            }
        }
    }
];
