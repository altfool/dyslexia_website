��    y      �  �   �      8
  �  9
  I     e   N  �  �  4   X  f   �  6   �     +     /     ;     A  +   Q     }     �     �     �  5   �  @   �  	          D   '  g   l    �  R   �  g   D     �     �  
   �     �  
   �  
   �  
   �     �     �            6   &     ]     b  W   g  W   �  �     a   �  ~   ,  3   �  �   �  
   c  Y   n     �  :   �  P     J   ]  R   �  9   �     5     <  &   D  z   k  6   �          .     <  	   S  
   ]  G   h     �  D   �          *     7  9   F  3   �  b   �               "  	   1     ;  
   M  	   X     b     q     �     �     �     �     �  5   �               
                0      A   C   G      �      �      �      �   &   �      �   5   �      *!  t   0!     �!  �   �!  '   7"     _"     r"     x"     �"  	   �"  B   �"  5   �"  5   #  <   O#     �#     �#     �#  	   �#  �  �#  �  �%  V   �*  �   �*  �  m+  l   R1    �1  /   �2     �2     3     3     =3  p   N3  
   �3     �3     �3     �3  ~   �3  h   z4  !   �4     5  g   5  �   v5  �  )6  �   �7  �   �8     9     �9     �9     �9     �9     �9     �9     :     ":     B:     Q:  6   e:     �:     �:  n   �:  �   );  E  �;  �   =  �   �=  y   �>  �   �>     �?  {   @     �@  �   �@  �   "A  �   �A  v   GB  Y   �B  
   C  
   #C  K   .C  s   zC  �   �C  R   �D     �D  T   �D     RE     dE  j   rE  '   �E  W   F     ]F     xF     �F  �   �F  x   6G  �   �G     �H     �H  &   �H     �H  !   �H  !    I     BI     ]I     {I  .   �I     �I  
   �I  !   �I  9   �I  [   8J  $   �J     �J     �J     �J     �J  
   K  }   K  -   �K     �K  $   �K     �K  B   L     QL  m   ZL     �L  "  �L     �M  �   N  E   �N     @O     YO     pO  $   �O  &   �O  s   �O  q   NP  p   �P  X   1Q     �Q      �Q     �Q     �Q         E       U       g      r   J   j       M      O   S   6   W   ;   s       /      Y   .       x       @   4   )   %   e   K      y   2       T   C   
   k              5      3   a   <   d   ,       B          ^           u       o   L                      H      i      -       G   b   >   "              l   Z      	   D           v       Q      V   _          w   7   N   [          `   (          $   1   n                 m      F           p         =   \   P   t       q       +       #   f   9   R   &   ?   c       I                 0       h   A   X      *   8      '             !      :       ]            
<h2>Congratulations!</h2>
<p>
    Welcome to your new Mezzanine powered website.
    Here are some quick links to get you started:
</p>
<ul>
    <li><a href="/admin/">Log in to the admin interface</a></li>
    <li><a href="http://mezzanine.jupo.org/docs/content-architecture.html">Creating custom page types</a></li>
    <li><a href="http://mezzanine.jupo.org/docs/frequently-asked-questions.html#templates">Modifying HTML templates</a></li>
    <li><a href="http://mezzanine.jupo.org/docs/frequently-asked-questions.html#why-isn-t-the-homepage-a-page-object-i-can-edit-via-the-admin">Changing this homepage</a></li>
    <li><a href="http://mezzanine.jupo.org/docs/frequently-asked-questions.html">Other frequently asked questions</a></li>
    <li><a href="http://mezzanine.jupo.org/docs/configuration.html#default-settings">Full list of settings</a></li>
    <li><a href="http://mezzanine.jupo.org/docs/deployment.html">Deploying to a production server</a></li>
</ul>
 
No results were found in %(search_type)s matching your query: %(query)s
 
Showing %(start)s to %(end)s of %(total)s results in %(search_type)s matching your query: %(query)s
 *Do not change this setting unless you know what you're doing.*

When content is saved in a Rich Text (WYSIWYG) field, unsafe HTML tags and attributes are stripped from the content to protect against staff members intentionally adding code that could be used to cause problems, such as changing their account to a super-user with full access to the system.

This setting allows you to change the level of filtering that occurs. Setting it to low will allow certain extra tags to be permitted, such as those required for embedding video. While these tags are not the main candidates for users adding malicious code, they are still considered dangerous and could potentially be mis-used by a particularly technical user, and so are filtered out when the filtering level is set to high.

Setting the filtering level to no filtering, will disable all filtering, and allow any code to be entered by staff members, including script tags. A tag line that will appear at the top of all pages. A three item sequence, each containing a sequence of template tags used to render the admin dashboard. Access token for http://bit.ly URL shortening service. Add Add another Admin Akismet API Key An open source content management platform. Author Cancel Change Content Controls the ordering and grouping of the admin menu. Could not import the value of settings.RICHTEXT_WIDGET_CLASS: %s Dashboard Description Device specific template sub-directory to use as the default device. Directory name to store thumbnails in, that will be created relative to the original image's directory. Dotted Python path to the callable for converting strings into URL slugs. Defaults to ``mezzanine.utils.urls.slugify_unicode`` which allows for non-ascii URLS. Change to ``django.template.defaultfilters.slugify`` to use Django's slugify function, or something of your own if required. Dotted package path and class name of the widget to use for the ``RichTextField``. Dotted path to the function to call on a ``RichTextField`` value before it is rendered to the template. Draft Edit Enable SSL Error Everything Expires on Force Host Forgot password? Generate description Go Google Analytics ID Google Analytics ID (http://www.google.com/analytics/) High Home Host name that the site should always be accessed via that matches the SSL certificate. If ``True``, each site will use its own directory within the filebrowser media library. If ``True``, only URLs specified by the ``SSL_FORCE_URL_PREFIXES`` setting will be accessible over SSL, and all other URLs will be redirected back to HTTP if accessed over HTTPS. If ``True``, the south application will be automatically added to the ``INSTALLED_APPS`` setting. If ``True``, users will be automatically redirected to HTTPS for the URLs specified by the ``SSL_FORCE_URL_PREFIXES`` setting. If ``True``, website forms will use HTML5 features. If checked, the description will be automatically generated from content. Uncheck if you want to manually set a custom description. Interface: Key for http://akismet.com spam filtering service. Used for filtering comments and forms. Keywords Leave blank to have the URL auto-generated from the title. List of HTML attributes that won't be stripped from ``RichTextField`` instances. List of HTML tags that won't be stripped from ``RichTextField`` instances. List of inline CSS styles that won't be stripped from ``RichTextField`` instances. List of words which will be stripped from search queries. Log in Log out Low (allows video, iframe, Flash, etc) Mapping of device specific template sub-directory names to the sequence of strings that may be found in their user agents. Max number of paging links to display when paginating. Max paging links Media Library Media library per site Meta data My Actions Name of the jQuery UI file found in mezzanine/core/static/mezzanine/js/ Name of the jQuery UI file. Name of the jQuery file found in mezzanine/core/static/mezzanine/js/ Name of the jQuery file. No filtering None available Number of different sizes for tags when shown as a cloud. Number of results shown in the search results page. Optional title to be used in the HTML title tag. If left blank, the main title field will be used. Order Page Page not found Password: Permission denied Powered by Published Published from Recent Actions Rich Text filter level Save Search Search Results Search results per page Sequence of setting names available within templates. Show in sitemap Site Site Title Site permission Site permissions Sites Size of thumbnail previews for image fields in the admin interface. Sorry, an error occurred. Status Tag Cloud Sizes Tagline The page you requested does not exist. Theme by This field is required if status is set to published. Title Title that will display at the top of the site, and be appended to the content of the HTML title tags on every page. URL URL for the JavaScript file (relative to ``STATIC_URL``) that handles configuring TinyMCE when the default ``RICHTEXT_WIDGET_CLASS`` is used. Unregister these models from the admin. Username or email: Users View Mobile Site View on site View site With Draft chosen, will only be shown for admin users on the site. With Published chosen, won't be shown after this time With Published chosen, won't be shown until this time You don't have permission to access the admin for this site. and bit.ly access token of read more Project-Id-Version: Mezzanine
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2013-10-05 07:20-0430
PO-Revision-Date: 2013-06-10 14:01+0000
Last-Translator: Roman Kozlovskiy <krzroman@gmail.com>
Language-Team: Ukrainian (Ukraine) (http://www.transifex.com/projects/p/mezzanine/language/uk_UA/)
Language: uk_UA
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2);
 
<h2>Вітаємо!</h2>
<p>
Ласкаво просимо на новостворений веб-сайт, створений з допомогою Mezzanine.⏎
Ось деякі швидкі посилання, щоб ви почали:
</p>
<ul>
<li><a href="/admin/">Вхід в інтерфейс адміністратора</a></li>
<li><a href="http://mezzanine.jupo.org/docs/content-architecture.html">Створення  користувацьких типів сторінок</a></li>
<li><a href="http://mezzanine.jupo.org/docs/frequently-asked-questions.html#templates">Зміна HTML шаблонів</a></li>
<li><a href="http://mezzanine.jupo.org/docs/frequently-asked-questions.html#why-isn-t-the-homepage-a-page-object-i-can-edit-via-the-admin">Зміна цієї стартовою сторінки</a></li>
<li><a href="http://mezzanine.jupo.org/docs/frequently-asked-questions.html">Інші часті  питання</a></li>
<li><a href="http://mezzanine.jupo.org/docs/configuration.html#default-settings">Повний перелік налаштувань</a></li>
<li><a href="http://mezzanine.jupo.org/docs/deployment.html">Розгортання на робочому сервері</a></li>
</ul>
 
Нічого не знайдено в %(search_type)s із запитои: %(query)s
 
Відображаються від %(start)s до %(end)s із %(total)s резульматів в %(search_type)s із запитом: %(query)s
 * Не змінюйте цей параметр, якщо ви не знаєте що він робите. *

Коли вміст Rich Text (WYSIWYG) поля зберігається в базу, небезпечні HTML теги і атрибути виключаються з тексту для захисту від навмисного додавання редакторами сайту коду, який може привести до зміни типу їх облікового запису на супер-користувача з повним доступом до системи.

Цей параметр дозволяє змінити рівень фільтрації HTML тегів. Установка параметра в `` Низький `` дозволяє додавати деякі додаткові теги, які потрібні для вставки відео. Хоча вони і не є небезпечними, все ж можуть бути побічно використані технічно грамотними користувачами. Тому навіть ці теги фільтруються, якщо виставлений `` Високий `` рівень фільтрації.

Установка параметра в стан `` Без фільтра `` відключає фільтрацію, що дозволяє редакторам сайт додавати будь-який HTML код, включаючи скриптові теги. Підзаголовок, який відображається на всіх сторінках сайту. Послідовності з трьома значеннями, кожна з яких містить послідовність тегів шаблону використовується для відображення панелі адміністратрування. Токен доступу для http://bit.ly. Додати Додати ще Адміністрування Ключ Akismet Платформа з управління контентом з відкритим вихідним кодом. Автор Скасувати Змінити Контент Порядок і групування відображення елементів адміністративного меню Не вдалось імпортувати значення налаштувань.HTML_WIDGET_CLASS: %s Панель управління Опис Папка шаблону за замовчуванням для мобільних пристроїв. Назва папки, в якій зберігати іскізи. Папка буде створена відносно основної папки з зображеннями. Розділений точками шлях до функції, що перетворює стрічки відносний шлях. За замовчуванням `` mezzanine.utils.urls.slugify_unicode ``,  яка дозволяє використовувати не-ASCII символи в посиланні. Можлива зміна на `` django.template.defaultfilters.slugify `` або на власну функцію перетворення. Розділений точками шлях до пакету та ім'я класу віджета, який використовується для відображення віджета `` RichTextField ``. Розділений точками шлях до функції, перетворюючої значення `` RichTextField ``, при відображенні в шаблоні. Чернетка Редагувати Включити SSL Помилка Усі Завершується Встановити хост Забули пароль? Згенерувати опис Перейти Google Analytics ID Google Analytics ID (http://www.google.com/analytics/) Високий Головна Ім'я хоста, яке сайт буде використовувати для SSL-сертифіката. Якщо `` Так ``, кожен сайт буде використовувати свій власний каталог для медіа-бібліотеки. Якщо `` Так `` , тільки посилання зазначені в налаштуванні `` SSL_FORCE_URL_PREFIXES ``  будуть доступні через SSL, всі інші посилання будуть перенаправлені до HTTP, якщо доступ до них був через HTTPS. Якщо `` Так ``, то South буде автоматично додано до списку додатків `` INSTALLED_APPS ``. Якщо `` Так ``, то користувачі будуть автоматично перенаправлені на HTTPS для посилань, які вказані в налаштуванні `` SSL_FORCE_URL_PREFIXES ``. Якщо `` Так ``, форми на сайті будуть використовувати можливості HTML5. Якщо прапорець встановлений, опис буде автоматично генерується із контенту. Зніміть прапорець, якщо ви хочете вручну встановити опис. Інтерфейс: Ключ для сервісу фільтрації спаму http://akismet.com. Для коментарів і форм. Ключові слова Якщо залишите порожнім, то це поле автоматично заповниться із заголовку. Список HTML атрибутів, що не будуть видалені при редагувані в текстовому редакторі. Список HTML тегів що не будуть видалені при редагуванні в текстовому редакторі. Список вбудованих стилів CSS, які не будуть вирізані з `` RichTextField  ``. Список слів, що виключаються з пошукових запитів Зайти Вийти Низький (дозволяти відео, флеш, iframe та ін.) Відповідність різних моделей мобільних пристроїв з шаблонами. Максимальна кількість посилань на сторінки, які відображаються в області пагінації. Максимальна кількість посилань в пагінаторе Медія Бібліотека Окрема медіа-бібліотека для кожного із сайтів Мета дані Мої дії Назва файлу JQuery UI, якого можна знайти в mezzanine/core/static/mezzanine/js/ Назва файлу для JQuery UI. Ім'я jQuery файлу знаходиться в mezzanine/core/static/mezzanine/js/ Ім'я jQuery файлу. Без фільтрації Недоступно Кількість різноманітних розмірів написів, які відображаються в хмарі тегів. Кількість результатів, які відображатимуться на сторінці пошуку. Необов'язковий заголовок для використання в титульному тезі сторінки. Якщо залишите порожнім, то буде використаний головний заголовок. Порядок Сторінка Сторінку не знайдено Пароль: Доступ заборонено Сайт використовує Опублікований Опублікований з Останні дії Рівень фільтрації тексту Зберегти Пошук Результати пошуку Результатів пошуку на сторінці Список налаштувань, доступних всередині шаблонів Показати в сайтмапі Сайт Заголовок сайту Права сайту Права сайту Сайти Розмір мініатюри для  полів зображень в інтерфейсі адміністрування. На жаль, сталася помилка. Статус Розміри хмари тегів Підзаголовок Сторінка, яку ви запросили, не існує. Тема Це поле обов'язково, якщо встановлено опублікований статус. Заголовок заголовок, що відображається як назва вкладки браузера або назва вікна браузера, складається з заголовка відображуваної сторінки з додаванням даної частини. URL Посилання для файлу JavaScript (відносно `` STATIC_URL ``), який обробляє налаштування TinyMCE, коли за замовчуванням використовується `` RICHTEXT_WIDGET_CLASS ``. Прибрати ці моделі з адміністрування. Логін або email: Користувачі Мобільна версія Переглянути в сайті Переглянути на сайті Якщо обрано Чернетка, то буде показано тільки адміністраторам. Якщо обрано ``Опубліковано``, то буде показано після цього часу Якщо обрано ``Опубліковано``, то не буде показано до цього часу У вас немає прав на адміністрування цього сайту. і bit.ly токен доступу з читати далі 