const path = require('path');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');
const { CleanWebpackPlugin } = require('clean-webpack-plugin');

let distFolder = '../back/src/view/assets/';
let = './dist';

module.exports = {
    mode: 'development',
    devtool:'source-map',
    entry: {
        error: './src/scripts/react/pages/error-pages/error/page.tsx',
        home: './src/scripts/react/pages/main/home/page.tsx',
        minifier: './src/scripts/react/pages/main/minifier/page.tsx',
        url_info: './src/scripts/react/pages/main/url-info/page.tsx',
    },
    output: {
        path: path.resolve(__dirname, distFolder),
        filename: 'scripts/[name].bundle.js',
        publicPath: process.env.ASSET_PATH || '/'
    },
    module: {
        rules: [
            {
                test: /\.tsx?$/,
                use: 'ts-loader',
                exclude: /node_modules/,
            },
            {
                test: /\.css$/,
                use: [
                    {
                        loader: MiniCssExtractPlugin.loader,
                        options: {
                            publicPath: 'styles/'
                        }
                    }, 'css-loader'
                ]
            },
            {
                test: /\.scss$/,
                use: [{
                    loader: MiniCssExtractPlugin.loader,
                    options: {
                        publicPath: 'styles/'
                    }
                }, 'css-loader', 'sass-loader'],
                exclude: /node_modules/
            },
            {
                test: [/\.woff?$/, /\.woff2?$/, /\.ttf?$/, /\.eot?$/],
                loader: 'url-loader',
                options: {
                    name: 'fonts/[name].[ext]'
                }
            },
            {
                test: /\.svg$/i,
                loader: 'file-loader',
                options: {
                    name: 'svg/[name].[ext]',
                },
            }
        ]
    },
    plugins: [
        new MiniCssExtractPlugin({
            filename: 'styles/[name].css'
        }),
        new CleanWebpackPlugin()
    ],
    resolve: {
        extensions: ['.ts', '.tsx', '.js', '.jsx']
    },
    watch: true
}
