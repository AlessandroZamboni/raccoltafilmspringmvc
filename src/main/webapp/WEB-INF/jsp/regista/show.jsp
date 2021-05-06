<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="it">
<head>
    <jsp:include page="../header.jsp" />
    <title>Visualizza elemento</title>

    <!-- style per le pagine diverse dalla index -->
    <link href="${pageContext.request.contextPath }/assets/css/global.css" rel="stylesheet">

</head>
<body>
<jsp:include page="../navbar.jsp" />

<main role="main" class="container">

    <div class='card'>
        <div class='card-header'>
            Visualizza dettaglio
        </div>

        <div class='card-body'>
            <dl class="row">
                <dt class="col-sm-3 text-right">Id:</dt>
                <dd class="col-sm-9">${show_regista_attr.id}</dd>
            </dl>

            <dl class="row">
                <dt class="col-sm-3 text-right">Nome:</dt>
                <dd class="col-sm-9">${show_regista_attr.nome}</dd>
            </dl>

            <dl class="row">
                <dt class="col-sm-3 text-right">Cognome:</dt>
                <dd class="col-sm-9">${show_regista_attr.cognome}</dd>
            </dl>

            <dl class="row">
                <dt class="col-sm-3 text-right">Nickname:</dt>
                <dd class="col-sm-9">${show_regista_attr.nickName}</dd>
            </dl>

            <dl class="row">
                <dt class="col-sm-3 text-right">Data di Nascita:</dt>
                <dd class="col-sm-9"><fmt:formatDate type = "date" value = "${show_regista_attr.dataDiNascita}" /></dd>
            </dl>

        </div>

        <div class='card-footer'>
            <a href="${pageContext.request.contextPath }/regista/" class='btn btn-outline-secondary' style='width:80px'>
                <i class='fa fa-chevron-left'></i> Back
            </a>
        </div>
    </div>



    <!-- end main container -->
</main>
<jsp:include page="../footer.jsp" />

</body>
</html>