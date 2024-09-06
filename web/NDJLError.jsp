<%-- 
    Document   : NDJLError
    Created on : 18-Jan-2015, 9:47:17 PM
    Author     : Meyer
--%>

<jsp:include page="NDJLBanner.jsp" />
    <section>
        <h1>Java Error</h1>
        <p>Sorry, Java has thrown an exception.</p>
        <p>To continue, click the Back button.</p>

        <h2>Details</h2>
        <p>Type: ${pageContext.exception["class"]}</p>
        <p>Message: ${pageContext.exception.message}</p>
    </section>
<jsp:include page="NDJLFooter.jsp" />
