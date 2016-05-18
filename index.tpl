<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="noindex, nofollow">

    <title>更新 {{ site_name }} 的密码</title>

    <link rel="stylesheet" href="{{ url('static', filename='style.css') }}">
  </head>

  <body>
    <main>
      <h1>更新 {{ site_name }} 的密码</h1>

      <form method="post">
        <label for="username">用户名</label>
        <input id="username" name="username" value="{{ get('username', '') }}" type="text" required autofocus>

        <label for="old-password">旧密码</label>
        <input id="old-password" name="old-password" type="password" required>

        <label for="new-password">新密码</label>
        <input id="new-password" name="new-password" type="password"
            pattern=".{8,}" x-moz-errormessage="密码至少8个字符" required>

        <label for="confirm-password">确认新密码</label>
        <input id="confirm-password" name="confirm-password" type="password"
            pattern=".{8,}" x-moz-errormessage="密码至少8个字符" required>

        <button type="submit">更新密码</button>
      </form>

      <div class="alerts">
        %for type, text in get('alerts', []):
          <div class="alert {{ type }}">{{ text }}</div>
        %end
      </div>
    </main>
  </body>
</html>
