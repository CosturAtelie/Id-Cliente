<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Simples</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .login-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
            position: relative;
            z-index: 1;
        }
        .login-container h2 {
            margin-bottom: 20px;
        }
        .login-container input {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        .login-container button {
            width: 100%;
            padding: 10px;
            background-color: #add8e6; /* Azul claro */
            border: none;
            color: #000; /* Cor do texto preta para melhor contraste */
            border-radius: 3px;
            cursor: pointer;
            font-weight: bold;
        }
        .login-container button:hover {
            background-color: #87ceeb; /* Tom mais escuro de azul claro ao passar o mouse */
        }
        .error-message {
            color: red;
            margin-top: 10px;
        }

        /* Estilos da Modal */
        .modal {
            display: none; /* Escondida por padrão */
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5); /* Fundo escuro semi-transparente */
            justify-content: center;
            align-items: center;
            z-index: 1000;
        }
        .modal-content {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            max-width: 400px;
            width: 100%;
        }
        .modal-content h2 {
            margin-bottom: 15px;
            color: #add8e6; /* Azul claro para o título */
        }
        .modal-content p {
            margin-bottom: 20px;
            font-size: 16px;
        }
        .modal-content button {
            padding: 10px 20px;
            background-color: #add8e6; /* Azul claro */
            border: none;
            color: #000; /* Cor do texto preta para melhor contraste */
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            font-weight: bold;
        }
        .modal-content button:hover {
            background-color: #87ceeb; /* Tom mais escuro de azul claro ao passar o mouse */
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>
        <form id="loginForm">
            <input type="text" id="username" placeholder="Nome de usuário" required>
            <input type="password" id="password" placeholder="Senha" required>
            <button type="submit">Entrar</button>
        </form>
        <p class="error-message" id="errorMessage"></p>
    </div>

    <!-- Modal de Sucesso -->
    <div id="successModal" class="modal">
        <div class="modal-content">
            <h2>Login Bem-Sucedido!</h2>
            <p>Você será redirecionado em instantes.</p>
            <button id="redirectButton">OK</button>
        </div>
    </div>

    <script>
        document.getElementById('loginForm').addEventListener('submit', function(event) {
            event.preventDefault(); // Impede o envio do formulário

            // Dados de login e redirecionamento para blogs no Blogger
            const users = [
                { username: "ihally", password: "15012024", redirect: "costuratelie.my.canva.site/ihallycarvalho" },
                { username: "cicero", password: "15082024", redirect: "https://blogdousuario2.blogspot.com" },
                { username: "joyce", password: "10112024", redirect: "https://blogdousuario3.blogspot.com" },
                { username: "kassyo", password: "12012024", redirect: "https://blogdousuario4.blogspot.com" },
                { username: "usuario5", password: "senha102", redirect: "https://blogdousuario5.blogspot.com" },
                { username: "usuario6", password: "senha103", redirect: "https://blogdousuario6.blogspot.com" },
                { username: "usuario7", password: "senha104", redirect: "https://blogdousuario7.blogspot.com" },
                { username: "usuario8", password: "senha105", redirect: "https://blogdousuario8.blogspot.com" },
                { username: "usuario9", password: "senha106", redirect: "https://blogdousuario9.blogspot.com" },
                { username: "usuario10", password: "senha107", redirect: "https://blogdousuario10.blogspot.com" }
            ];

            // Obtém os valores inseridos pelo usuário
            const username = document.getElementById('username').value;
            const password = document.getElementById('password').value;

            // Verifica se o nome de usuário e a senha estão corretos
            const user = users.find(u => u.username.toLowerCase() === username.toLowerCase() && u.password === password);

            if (user) {
                // Exibe a modal de sucesso
                const modal = document.getElementById('successModal');
                modal.style.display = 'flex';

                // Redireciona após o usuário clicar em "OK"
                document.getElementById('redirectButton').addEventListener('click', function() {
                    window.location.href = user.redirect; // Redireciona para o blog correspondente
                });
            } else {
                document.getElementById('errorMessage').textContent = "Nome de usuário ou senha incorretos.";
            }
        });
    </script>
</body>
</html>
