<?php
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Slim\Factory\AppFactory;
use Twig\Environment;
use Twig\Loader\FilesystemLoader;
use Blog\PostMapper;

header('Content-Type: text/html; charset=utf-8');

require __DIR__ . '/vendor/autoload.php';

$loader = new FilesystemLoader(paths: 'templates');
$view = new Environment($loader, [
    'charset' => 'utf-8',
]);

$config = include 'config/database.php';
$dsn = 'mysql:host=db;dbname=my_php_blog;charset=utf8mb4;port=3306';

$username = $config['username'];
$password = $config['password'];

try {
    $connection = new PDO($dsn, $username, $password);
    $connection->exec("SET NAMES 'utf8mb4' COLLATE 'utf8mb4_unicode_ci'");
    $connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $connection->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
} catch (PDOException $exception) {
    echo 'Database error:' . $exception->getMessage();
    die;
}

// Restul codului...


$postMapper = new PostMapper($connection);

$app = AppFactory::create();

$app->get('/', function (Request $request, Response $response, $args) use ($view) {
    $body = $view->render(name:'index.twig');
    $response->getBody()->write($body);
    return $response;
});
$app->get('/about', function (Request $request, Response $response, $args) use ($view) {
    $body = $view->render('about.twig', ['name' => 'Basil']);
    $response->getBody()->write($body);
    return $response;
});

$app->get('/{url_key}', function (Request $request, Response $response, $args) use ($view, $postMapper) {
    $post = $postMapper->getByUrlKey((string) $args['url_key']);
    $body = $view->render('post.twig', [
        'post' => $post
    ]);
    $response->getBody()->write($body);
    return $response;
});

$app->run();