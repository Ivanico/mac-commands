# Creating templates in experimental

This are just some handy ready made sample codes to get started creating templates on Experimental folder.

## Directory structure

```
experimental
├── app1                   
│   ├── scss
│   ├── css
│   ├── js
│   ├── imgs
│   └── index.html
├── app1
└── ...
```

## HTML boilerplate

```
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Aircraft Tracker</title>

    <link href="/public/stellwagen_portal/main.css" rel="stylesheet">
    <link href="css/app.css" rel="stylesheet">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="js/scripts.js"></script>

</head>
<body>
    
</body>
</html>
```

## SCSS boilerplate

On the `app.scss` file include this at the top:

```
@import "../../../src/lib/shared/browser/scss/main.scss";
```

This will insert the work built on the Design System we can reuse the components across all the apps that we'll do.

