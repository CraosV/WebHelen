<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Instrumentos</title>
    <link rel="stylesheet" href="view/css/bootstrap.min.css">
    <script src="view/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <?php include_once 'view/navbar.php'; ?>
    <!-- carrusel -->
    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel" >
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active w-100">
                <img src="view/img/banner.jpg" class="d-block w-100" style=" height: 450px;
    object-fit: cover;">
                <div class="carousel-caption d-none d-md-block">
                    <h2>LA MEJOR IMAGEN</h2>
                    <p>AOC MONITOR GAMING A 165 HZ</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="view/img/hds.jpg" class="d-block w-100" alt="..." style=" height: 450px;
    object-fit: cover;">
                <div class="carousel-caption d-none d-md-block">
                    <h3>¿BUSCAS LA MEJOR EXPERIENCIA?</h3>
                    <p>EL TECLADO RAZR 2570G OCELOT ES PARA TI!</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="view/img/teclado.jpg" class="d-block w-100" alt="..." style=" height: 450px;
    object-fit: cover;">
                <div class="carousel-caption d-none d-md-block">
                    <h3>¿BUSCAS LA MEJOR EXPERIENCIA?</h3>
                    <p>EL TECLADO RAZR 2570G OCELOT ES PARA TI!</p>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
        </button>
    </div>
    <!-- fin carrusel -->
    <?php   
        include 'view/productos.php';
        include_once 'view/footer.php';
        include 'view/modals.php';
    ?>
</body>
</html>