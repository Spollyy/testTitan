<html>
<head>
    {{HTML::style('style.css')}}
    {{HTML::script('https://code.jquery.com/jquery-1.11.3.js')}}
    {{HTML::script('js.js')}}
</head>
<body>
        <header>
        <div class="header_links">
            <div id="reg" class="header_link">
                Регистрация
            </div>
            <div class="header_link" id="info">
                Информация
            </div>
            </div>
        </header>
        <div class="content">
            <div class="modal modal_info">
                <h3>Пользователей зарегистрировано {{$total}}</h3>
                @if (isset($first))
                <h3>Последний пользователь зарегистрировался @if(time() - $last->date < 3600) {{ceil((time() - $last->date)/60). ' минут назад' }} @elseif((time() - $last->date) < 86400) {{ceil((time() - $last->date)/3600). ' часов назад' }} @elseif((time() - $last->date) < 604800) {{ceil((time() - $last->date)/86400). ' дней назад' }} @elseif((time() - $last->date) < 2629743 ) {{ceil((time() - $last->date)/604800). ' недель назад' }} @endif</h3>
                <h3>Первый пользователь зарегистрировался @if(time() - $first->date < 3600) {{ceil((time() - $first->date)/60). ' минут назад' }} @elseif((time() - $first->date) < 86400) {{ceil((time() - $first->date)/3600). ' часов назад' }} @elseif((time() - $first->date) < 604800) {{ceil((time() - $first->date)/86400). ' дней назад' }} @elseif((time() - $first->date) < 2629743 ) {{ceil((time() - $first->date)/604800). ' недель назад' }} @endif</h3>
                @endif
            </div>
            <div class="modal modal_registration active">
            <h1>регистрация</h1>
                {{Form::open([route('send_index')])}}
                {{Form::email('email','',['placeholder'=>'email'])}}
                {{Form::text('login','',['placeholder'=>'login'])}}
                {{Form::password('password','',['placeholder'=>'password'])}}
                {{Form::submit('send')}}
                {{Form::close()}}
            </div>
        </div>
        <footer></footer>
    </body>
</html>