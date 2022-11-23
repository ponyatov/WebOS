<img src="http://webosorg.herokuapp.com/logo" width="250">

# Deprecated

## Synopsys

### As a software WebOs follows two concepts:
1. Combine all the newest (2017) technical solutions of web development in
   one place, so representing the society the opportunities of nowadays
   browsers and Javascript programming language.
   The project will be constructing in the base of the newest technical
   concepts and solutions, such as
   - Web Assembly
   - Multithreaded JavaScript
       * Dedicated workers
       * Shared workers
   - Offline web application and full cache logic
       * Service Workers
   - Neural Network on JavaScript
   - Web Components
       * Custom Elements
       * Shadow Dom
       * HTML Templates
       * HTML Import
   - (#) SIMD (Single Instruction/Multiple Data)
   - (#) Intersection Observer API
   - JavaScript Next
       * ES6, ES7 ...
   - Canvas, WebGL
   - Web Bluetooth and etc.
   - (http2, GraphQL)
   - CSS Next and new design philosophy
       * CSSNext
       * Material Design
2. The project WebOs will represent itself a platform for Web Applications
  trying to play the role of an operating system, such as the complete
  operating system  does for desktop applications.

## Motivation

Web unlike the rest of programming areas has a big advantage. It supposes to introduce your product to whole world but the same time it doesn’t require to download any additional application or program. You give only the URl and  that's all. This model is quite attractive for users and for business despite its several defects. I guess that the so-called market in recent years has contributed to the development of this direction which has increased requirements of users for the web applications.
Web developers trying to satisfy all users requirements and have done their **bests at browser side**. Browser’s developers themselves have improved browsers trying to satisfy both web developers and all users. 
Today Web technology is the **powerful tool** and there are many reasons for that:
   - Suitable for business
   - Suitable for users
   - Growth of market requirements
   - IT grands like Google, Facebook want to **conquer the world**
   - Endless technical race of browsers etc..

The aim of this project is to combine all modern and newest features in one place and show this by the OS imitation.

## Install

#### Operating system
It was tested only on Linux.

#### Dependencies
 - Nodejs
 - Npm or Yarn
 - Git

#### Global packages
   - npm-run-all

   ```
   npm i npm-run-all -g
   ```

#### Clone

```
git clone https://github.com/webosorg/webos.git
cd webos
```

#### Install dependencies

```
npm run install-all
```

or if you have to build as root run this line

```
npm run install-all-root
```

It will be run npm install and bower install ::: See => /package.json -> scripts
(Or if 'npm run install-all-root' => run npm install and bower install --allow-root)

For only bower install you can run

```
npm run bower-install
```

or if you have bower global

```
bower install
```

#### Run
```
npm run dev-watch
```

## UI/UX

#### First thoughts about design

<img src="http://webosorg.herokuapp.com/webosDrawing" width="750">

## Moving to WASM/Rust

[[issue1]]
