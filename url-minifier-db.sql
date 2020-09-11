-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 11 2020 г., 12:29
-- Версия сервера: 5.7.29
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `url-minifier-db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `url_info`
--

CREATE TABLE `url_info` (
  `id` int(11) NOT NULL,
  `minCode` int(11) NOT NULL,
  `info` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `url_info`
--

INSERT INTO `url_info` (`id`, `minCode`, `info`) VALUES
(12, 7, '{\"GLOBALS\":{\"_GET\":[],\"_POST\":[],\"_COOKIE\":[],\"_FILES\":[],\"f3\":{},\"_SESSION\":null},\"_SERVER\":{\"REDIRECT_STATUS\":\"200\",\"HTTP_AUTHORIZATION\":\"\",\"HTTP_HOST\":\"back\",\"HTTP_CONNECTION\":\"keep-alive\",\"HTTP_UPGRADE_INSECURE_REQUESTS\":\"1\",\"HTTP_USER_AGENT\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/85.0.4183.102 Safari\\/537.36\",\"HTTP_ACCEPT\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\",\"HTTP_ACCEPT_ENCODING\":\"gzip, deflate\",\"HTTP_ACCEPT_LANGUAGE\":\"en,uk;q=0.9,ru;q=0.8\",\"PATH\":\"w:\\\\modules\\\\php\\\\PHP_7.4\\\\ext;w:\\\\modules\\\\php\\\\PHP_7.4\\\\pear;w:\\\\modules\\\\php\\\\PHP_7.4\\\\pear\\\\bin;w:\\\\modules\\\\php\\\\PHP_7.4;w:\\\\modules\\\\wget\\\\bin;w:\\\\modules\\\\database\\\\MySQL-5.7\\\\bin;w:\\\\modules\\\\http\\\\Apache_2.4-PHP_7.2-7.4\\\\bin;w:\\\\modules\\\\http\\\\Apache_2.4-PHP_7.2-7.4;C:\\\\WINDOWS\\\\system32;C:\\\\WINDOWS;C:\\\\WINDOWS\\\\system32\\\\Wbem;C:\\\\WINDOWS\\\\SysWOW64\",\"SystemRoot\":\"C:\\\\WINDOWS\",\"COMSPEC\":\"C:\\\\WINDOWS\\\\system32\\\\cmd.exe\",\"PATHEXT\":\".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC\",\"WINDIR\":\"C:\\\\WINDOWS\",\"SERVER_SIGNATURE\":\"\",\"SERVER_SOFTWARE\":\"Apache\",\"SERVER_NAME\":\"back\",\"SERVER_ADDR\":\"127.0.0.1\",\"SERVER_PORT\":\"80\",\"REMOTE_ADDR\":\"127.0.0.1\",\"DOCUMENT_ROOT\":\"E:\\\\work\\\\reactor-company-test-1\\\\back\",\"REQUEST_SCHEME\":\"http\",\"CONTEXT_PREFIX\":\"\",\"CONTEXT_DOCUMENT_ROOT\":\"E:\\/work\\/reactor-company-test-1\\/back\",\"SERVER_ADMIN\":\"[no address given]\",\"SCRIPT_FILENAME\":\"E:\\/work\\/reactor-company-test-1\\/back\\/index.php\",\"REMOTE_PORT\":\"51095\",\"REDIRECT_URL\":\"\\/url\\/7\",\"GATEWAY_INTERFACE\":\"CGI\\/1.1\",\"SERVER_PROTOCOL\":\"HTTP\\/1.1\",\"REQUEST_METHOD\":\"GET\",\"QUERY_STRING\":\"\",\"REQUEST_URI\":\"\\/url\\/7\",\"SCRIPT_NAME\":\"\\/index.php\",\"PHP_SELF\":\"\\/index.php\",\"REQUEST_TIME_FLOAT\":1599815999.033,\"REQUEST_TIME\":1599815999,\"argv\":[],\"argc\":0},\"_ENV\":[],\"_REQUEST\":[]}'),
(13, 7, '{\"GLOBALS\":{\"_GET\":[],\"_POST\":[],\"_COOKIE\":[],\"_FILES\":[],\"f3\":{},\"_SESSION\":null},\"_SERVER\":{\"REDIRECT_STATUS\":\"200\",\"HTTP_AUTHORIZATION\":\"\",\"HTTP_HOST\":\"back\",\"HTTP_CONNECTION\":\"keep-alive\",\"HTTP_UPGRADE_INSECURE_REQUESTS\":\"1\",\"HTTP_USER_AGENT\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/85.0.4183.102 Safari\\/537.36\",\"HTTP_ACCEPT\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\",\"HTTP_ACCEPT_ENCODING\":\"gzip, deflate\",\"HTTP_ACCEPT_LANGUAGE\":\"en,uk;q=0.9,ru;q=0.8\",\"PATH\":\"w:\\\\modules\\\\php\\\\PHP_7.4\\\\ext;w:\\\\modules\\\\php\\\\PHP_7.4\\\\pear;w:\\\\modules\\\\php\\\\PHP_7.4\\\\pear\\\\bin;w:\\\\modules\\\\php\\\\PHP_7.4;w:\\\\modules\\\\wget\\\\bin;w:\\\\modules\\\\database\\\\MySQL-5.7\\\\bin;w:\\\\modules\\\\http\\\\Apache_2.4-PHP_7.2-7.4\\\\bin;w:\\\\modules\\\\http\\\\Apache_2.4-PHP_7.2-7.4;C:\\\\WINDOWS\\\\system32;C:\\\\WINDOWS;C:\\\\WINDOWS\\\\system32\\\\Wbem;C:\\\\WINDOWS\\\\SysWOW64\",\"SystemRoot\":\"C:\\\\WINDOWS\",\"COMSPEC\":\"C:\\\\WINDOWS\\\\system32\\\\cmd.exe\",\"PATHEXT\":\".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC\",\"WINDIR\":\"C:\\\\WINDOWS\",\"SERVER_SIGNATURE\":\"\",\"SERVER_SOFTWARE\":\"Apache\",\"SERVER_NAME\":\"back\",\"SERVER_ADDR\":\"127.0.0.1\",\"SERVER_PORT\":\"80\",\"REMOTE_ADDR\":\"127.0.0.1\",\"DOCUMENT_ROOT\":\"E:\\\\work\\\\reactor-company-test-1\\\\back\",\"REQUEST_SCHEME\":\"http\",\"CONTEXT_PREFIX\":\"\",\"CONTEXT_DOCUMENT_ROOT\":\"E:\\/work\\/reactor-company-test-1\\/back\",\"SERVER_ADMIN\":\"[no address given]\",\"SCRIPT_FILENAME\":\"E:\\/work\\/reactor-company-test-1\\/back\\/index.php\",\"REMOTE_PORT\":\"51095\",\"REDIRECT_URL\":\"\\/url\\/7\",\"GATEWAY_INTERFACE\":\"CGI\\/1.1\",\"SERVER_PROTOCOL\":\"HTTP\\/1.1\",\"REQUEST_METHOD\":\"GET\",\"QUERY_STRING\":\"\",\"REQUEST_URI\":\"\\/url\\/7\",\"SCRIPT_NAME\":\"\\/index.php\",\"PHP_SELF\":\"\\/index.php\",\"REQUEST_TIME_FLOAT\":1599816000.954,\"REQUEST_TIME\":1599816000,\"argv\":[],\"argc\":0},\"_ENV\":[],\"_REQUEST\":[]}'),
(14, 7, '{\"GLOBALS\":{\"_GET\":[],\"_POST\":[],\"_COOKIE\":[],\"_FILES\":[],\"f3\":{},\"_SESSION\":null},\"_SERVER\":{\"REDIRECT_STATUS\":\"200\",\"HTTP_AUTHORIZATION\":\"\",\"HTTP_HOST\":\"back\",\"HTTP_CONNECTION\":\"keep-alive\",\"HTTP_UPGRADE_INSECURE_REQUESTS\":\"1\",\"HTTP_USER_AGENT\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/85.0.4183.102 Safari\\/537.36\",\"HTTP_ACCEPT\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\",\"HTTP_ACCEPT_ENCODING\":\"gzip, deflate\",\"HTTP_ACCEPT_LANGUAGE\":\"en,uk;q=0.9,ru;q=0.8\",\"PATH\":\"w:\\\\modules\\\\php\\\\PHP_7.4\\\\ext;w:\\\\modules\\\\php\\\\PHP_7.4\\\\pear;w:\\\\modules\\\\php\\\\PHP_7.4\\\\pear\\\\bin;w:\\\\modules\\\\php\\\\PHP_7.4;w:\\\\modules\\\\wget\\\\bin;w:\\\\modules\\\\database\\\\MySQL-5.7\\\\bin;w:\\\\modules\\\\http\\\\Apache_2.4-PHP_7.2-7.4\\\\bin;w:\\\\modules\\\\http\\\\Apache_2.4-PHP_7.2-7.4;C:\\\\WINDOWS\\\\system32;C:\\\\WINDOWS;C:\\\\WINDOWS\\\\system32\\\\Wbem;C:\\\\WINDOWS\\\\SysWOW64\",\"SystemRoot\":\"C:\\\\WINDOWS\",\"COMSPEC\":\"C:\\\\WINDOWS\\\\system32\\\\cmd.exe\",\"PATHEXT\":\".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC\",\"WINDIR\":\"C:\\\\WINDOWS\",\"SERVER_SIGNATURE\":\"\",\"SERVER_SOFTWARE\":\"Apache\",\"SERVER_NAME\":\"back\",\"SERVER_ADDR\":\"127.0.0.1\",\"SERVER_PORT\":\"80\",\"REMOTE_ADDR\":\"127.0.0.1\",\"DOCUMENT_ROOT\":\"E:\\\\work\\\\reactor-company-test-1\\\\back\",\"REQUEST_SCHEME\":\"http\",\"CONTEXT_PREFIX\":\"\",\"CONTEXT_DOCUMENT_ROOT\":\"E:\\/work\\/reactor-company-test-1\\/back\",\"SERVER_ADMIN\":\"[no address given]\",\"SCRIPT_FILENAME\":\"E:\\/work\\/reactor-company-test-1\\/back\\/index.php\",\"REMOTE_PORT\":\"51095\",\"REDIRECT_URL\":\"\\/url\\/7\",\"GATEWAY_INTERFACE\":\"CGI\\/1.1\",\"SERVER_PROTOCOL\":\"HTTP\\/1.1\",\"REQUEST_METHOD\":\"GET\",\"QUERY_STRING\":\"\",\"REQUEST_URI\":\"\\/url\\/7\",\"SCRIPT_NAME\":\"\\/index.php\",\"PHP_SELF\":\"\\/index.php\",\"REQUEST_TIME_FLOAT\":1599816002.594,\"REQUEST_TIME\":1599816002,\"argv\":[],\"argc\":0},\"_ENV\":[],\"_REQUEST\":[]}'),
(15, 7, '{\"GLOBALS\":{\"_GET\":[],\"_POST\":[],\"_COOKIE\":[],\"_FILES\":[],\"f3\":{},\"_SESSION\":null},\"_SERVER\":{\"REDIRECT_STATUS\":\"200\",\"HTTP_AUTHORIZATION\":\"\",\"HTTP_HOST\":\"back\",\"HTTP_CONNECTION\":\"keep-alive\",\"HTTP_UPGRADE_INSECURE_REQUESTS\":\"1\",\"HTTP_USER_AGENT\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/85.0.4183.102 Safari\\/537.36\",\"HTTP_ACCEPT\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\",\"HTTP_PURPOSE\":\"prefetch\",\"HTTP_ACCEPT_ENCODING\":\"gzip, deflate\",\"HTTP_ACCEPT_LANGUAGE\":\"en,uk;q=0.9,ru;q=0.8\",\"PATH\":\"w:\\\\modules\\\\php\\\\PHP_7.4\\\\ext;w:\\\\modules\\\\php\\\\PHP_7.4\\\\pear;w:\\\\modules\\\\php\\\\PHP_7.4\\\\pear\\\\bin;w:\\\\modules\\\\php\\\\PHP_7.4;w:\\\\modules\\\\wget\\\\bin;w:\\\\modules\\\\database\\\\MySQL-5.7\\\\bin;w:\\\\modules\\\\http\\\\Apache_2.4-PHP_7.2-7.4\\\\bin;w:\\\\modules\\\\http\\\\Apache_2.4-PHP_7.2-7.4;C:\\\\WINDOWS\\\\system32;C:\\\\WINDOWS;C:\\\\WINDOWS\\\\system32\\\\Wbem;C:\\\\WINDOWS\\\\SysWOW64\",\"SystemRoot\":\"C:\\\\WINDOWS\",\"COMSPEC\":\"C:\\\\WINDOWS\\\\system32\\\\cmd.exe\",\"PATHEXT\":\".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC\",\"WINDIR\":\"C:\\\\WINDOWS\",\"SERVER_SIGNATURE\":\"\",\"SERVER_SOFTWARE\":\"Apache\",\"SERVER_NAME\":\"back\",\"SERVER_ADDR\":\"127.0.0.1\",\"SERVER_PORT\":\"80\",\"REMOTE_ADDR\":\"127.0.0.1\",\"DOCUMENT_ROOT\":\"E:\\\\work\\\\reactor-company-test-1\\\\back\",\"REQUEST_SCHEME\":\"http\",\"CONTEXT_PREFIX\":\"\",\"CONTEXT_DOCUMENT_ROOT\":\"E:\\/work\\/reactor-company-test-1\\/back\",\"SERVER_ADMIN\":\"[no address given]\",\"SCRIPT_FILENAME\":\"E:\\/work\\/reactor-company-test-1\\/back\\/index.php\",\"REMOTE_PORT\":\"51095\",\"REDIRECT_URL\":\"\\/url\\/7\",\"GATEWAY_INTERFACE\":\"CGI\\/1.1\",\"SERVER_PROTOCOL\":\"HTTP\\/1.1\",\"REQUEST_METHOD\":\"GET\",\"QUERY_STRING\":\"\",\"REQUEST_URI\":\"\\/url\\/7\",\"SCRIPT_NAME\":\"\\/index.php\",\"PHP_SELF\":\"\\/index.php\",\"REQUEST_TIME_FLOAT\":1599816004.234,\"REQUEST_TIME\":1599816004,\"argv\":[],\"argc\":0},\"_ENV\":[],\"_REQUEST\":[]}'),
(16, 7, '{\"GLOBALS\":{\"_GET\":[],\"_POST\":[],\"_COOKIE\":[],\"_FILES\":[],\"f3\":{},\"_SESSION\":null},\"_SERVER\":{\"REDIRECT_STATUS\":\"200\",\"HTTP_AUTHORIZATION\":\"\",\"HTTP_HOST\":\"back\",\"HTTP_CONNECTION\":\"keep-alive\",\"HTTP_UPGRADE_INSECURE_REQUESTS\":\"1\",\"HTTP_USER_AGENT\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/85.0.4183.102 Safari\\/537.36\",\"HTTP_ACCEPT\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\",\"HTTP_ACCEPT_ENCODING\":\"gzip, deflate\",\"HTTP_ACCEPT_LANGUAGE\":\"en,uk;q=0.9,ru;q=0.8\",\"PATH\":\"w:\\\\modules\\\\php\\\\PHP_7.4\\\\ext;w:\\\\modules\\\\php\\\\PHP_7.4\\\\pear;w:\\\\modules\\\\php\\\\PHP_7.4\\\\pear\\\\bin;w:\\\\modules\\\\php\\\\PHP_7.4;w:\\\\modules\\\\wget\\\\bin;w:\\\\modules\\\\database\\\\MySQL-5.7\\\\bin;w:\\\\modules\\\\http\\\\Apache_2.4-PHP_7.2-7.4\\\\bin;w:\\\\modules\\\\http\\\\Apache_2.4-PHP_7.2-7.4;C:\\\\WINDOWS\\\\system32;C:\\\\WINDOWS;C:\\\\WINDOWS\\\\system32\\\\Wbem;C:\\\\WINDOWS\\\\SysWOW64\",\"SystemRoot\":\"C:\\\\WINDOWS\",\"COMSPEC\":\"C:\\\\WINDOWS\\\\system32\\\\cmd.exe\",\"PATHEXT\":\".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC\",\"WINDIR\":\"C:\\\\WINDOWS\",\"SERVER_SIGNATURE\":\"\",\"SERVER_SOFTWARE\":\"Apache\",\"SERVER_NAME\":\"back\",\"SERVER_ADDR\":\"127.0.0.1\",\"SERVER_PORT\":\"80\",\"REMOTE_ADDR\":\"127.0.0.1\",\"DOCUMENT_ROOT\":\"E:\\\\work\\\\reactor-company-test-1\\\\back\",\"REQUEST_SCHEME\":\"http\",\"CONTEXT_PREFIX\":\"\",\"CONTEXT_DOCUMENT_ROOT\":\"E:\\/work\\/reactor-company-test-1\\/back\",\"SERVER_ADMIN\":\"[no address given]\",\"SCRIPT_FILENAME\":\"E:\\/work\\/reactor-company-test-1\\/back\\/index.php\",\"REMOTE_PORT\":\"51095\",\"REDIRECT_URL\":\"\\/url\\/7\",\"GATEWAY_INTERFACE\":\"CGI\\/1.1\",\"SERVER_PROTOCOL\":\"HTTP\\/1.1\",\"REQUEST_METHOD\":\"GET\",\"QUERY_STRING\":\"\",\"REQUEST_URI\":\"\\/url\\/7\",\"SCRIPT_NAME\":\"\\/index.php\",\"PHP_SELF\":\"\\/index.php\",\"REQUEST_TIME_FLOAT\":1599816004.52,\"REQUEST_TIME\":1599816004,\"argv\":[],\"argc\":0},\"_ENV\":[],\"_REQUEST\":[]}');

-- --------------------------------------------------------

--
-- Структура таблицы `url_map`
--

CREATE TABLE `url_map` (
  `id` int(11) NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `url_map`
--

INSERT INTO `url_map` (`id`, `url`, `date`) VALUES
(7, 'https://fatfreeframework.com/3.7/sql-mapper#cast', '2020-09-27');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `url_info`
--
ALTER TABLE `url_info`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `url_map`
--
ALTER TABLE `url_map`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `url_info`
--
ALTER TABLE `url_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `url_map`
--
ALTER TABLE `url_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
