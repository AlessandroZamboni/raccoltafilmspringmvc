<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!doctype html>
<html lang="it">
<head>
    <jsp:include page="../header.jsp" />
    <title>Visualizza elemento</title>

    <!-- style per le pagine diverse dalla index -->
    <link href="./assets/css/global.css" rel="stylesheet">

</head>
<body>
<jsp:include page="../navbar.jsp" />




<main role="main" class="container">

    <div class="alert alert-warning alert-dismissible fade show " role="alert">
        Attenzione! Non è possibile eliminare un regista se sono registrati film a suo nome
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>

    <div class='card'>
        <div class='card-header'>
            Visualizza dettaglio
        </div>

        <div class='card-body'>
            <dl class="row">
                <dt class="col-sm-3 text-right">Id:</dt>
                <dd class="col-sm-9">${delete_regista_attr.id}</dd>
            </dl>

            <dl class="row">
                <dt class="col-sm-3 text-right">Titolo:</dt>
                <dd class="col-sm-9">${delete_regista_attr.nome}</dd>
            </dl>

            <dl class="row">
                <dt class="col-sm-3 text-right">Genere:</dt>
                <dd class="col-sm-9">${delete_regista_attr.cognome}</dd>
            </dl>

            <dl class="row">
                <dt class="col-sm-3 text-right">Nickname:</dt>
                <dd class="col-sm-9">${delete_regista_attr.nickName}</dd>
            </dl>

            <dl class="row">
                <dt class="col-sm-3 text-right">Data di Nascita:</dt>
                <dd class="col-sm-9"><fmt:formatDate type = "date" value = "${delete_regista_attr.dataDiNascita}" /></dd>
            </dl>

            <dl class="row">
                <dt class="col-sm-3 text-right">Sesso:</dt>
                <dd class="col-sm-9">${delete_regista_attr.sesso}</dd>
            </dl>


        </div>


        <div class='card-footer'>
            <form:form modelAttribute="delete_regista_attr" method="post" action="executedelete" novalidate="novalidate" >
                <spring:bind path="id">
                    <input type="hidden" name="id" id="id" class="form-control ${status.error ? 'is-invalid' : ''}" value="${delete_regista_attr.id }" required>
                </spring:bind>

                <button type="submit" name="submit" value="submit" id="submit" class="btn btn-primary">Conferma</button>
            </form:form>
        </div>
    </div>



    <!-- end main container -->
</main>
<jsp:include page="../footer.jsp" />

</body>
</html>
