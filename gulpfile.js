// gulpfile.js
const gulp = require('gulp');
const elm = require('gulp-elm');
const gutil = require('gulp-util');
const plumber = require('gulp-plumber');
const connect = require('gulp-connect');

// File paths
const paths = {
    dest_js: 'dist/js',
    dest_html: 'dist',
    dest_css: 'dist/css',
    elm: 'src/Main.elm',
    static_css: 'src/css/*.css',
    static_html: 'index.html'
};

gulp.task('elm-init', elm.init);

gulp.task('elm', ['elm-init'], function () {
    return gulp.src(paths.elm)
        .pipe(elm())
        .pipe(gulp.dest(paths.dest_js));
});

gulp.task('static_html', function () {
    return gulp.src(paths.static_html)
        .pipe(plumber())
        .pipe(gulp.dest(paths.dest_html));
});

gulp.task('static_css', function () {
    return gulp.src(paths.static_css)
        .pipe(plumber())
        .pipe(gulp.dest(paths.dest_css));
});

gulp.task('watch', function () {
    gulp.watch('src/**/*.elm', ['elm']);
    gulp.watch(paths.static, ['static']);
});

gulp.task('connect', function () {
    connect.server({
        root: 'dist',
        port: 3000
    });
});


gulp.task('build', ['elm', 'static_html', 'static_css']);
gulp.task('default', ['connect', 'build', 'watch']);