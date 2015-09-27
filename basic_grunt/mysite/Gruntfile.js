module.exports = function(grunt) {
    // config
    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),

        less: {
            options: {
                compress: true
            },
            build1: {
                src: 'src/style1.less',
                dest: 'build/styles1.css'
            },
            build2: {
                files: {
                    // 'build/styles.css': 'src/style1.less'
                    // 'build/styles.css': ['src/style1.less', 'src/style2.less']
                    'build/styles.css': 'src/**/*.less'
                }
            }
        },
        csslint: {
            check: {
                // src: 'build/styles.css'
                src: '<%= less.build1.dest %>'
            }
        },
        cssmin: {
            minimize: {
                options: {
                    banner: '/*! <%= pkg.name %> <%= grunt.template.today("yyyy-mm-dd") %> */'
                },
                files: {
                    'build/styles.min.css': 'build/styles.css'
                }
            }
        },
        
        watch: {
            options:{
                livereload: true
            },
            files: 'src/*.less',
            tasks: ['less', 'csslint', 'cssmin']
        },

        connect: {
            server: {
                options: {
                    port: 8080,
                    hostname: 'localhost'
                }
            }
        }

    });

    // plugin
    grunt.loadNpmTasks('grunt-contrib-less');
    grunt.loadNpmTasks('grunt-contrib-csslint');
    grunt.loadNpmTasks('grunt-contrib-cssmin');
    grunt.loadNpmTasks('grunt-contrib-watch');
    grunt.loadNpmTasks('grunt-contrib-connect');

    // task
    grunt.registerTask('default', ['less', 'csslint', 'cssmin', 'connect', 'watch']);
    grunt.registerTask('task1', 'less:build1');
    grunt.registerTask('task2', 'less:build2');
};
