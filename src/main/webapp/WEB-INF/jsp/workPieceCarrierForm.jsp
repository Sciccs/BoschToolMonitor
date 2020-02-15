<!DOCTYPE html>
<html lang="en" xmlns:th="https://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Work Piece Carrier Form</title>
</head>
<body>
<form action=#" th:action=@{/workPieceCarrier}" th:object="${WorkPieceCarrier}" method="post" enctype="multipart/form-data">
    <h1>Characteristics</h1>
    <h2>File Details</h2>
    <p>Author: <input type="text" th:field="*{author}"/></p>
    <p>Revision #: <input type="text" th:field="*{revisionNumber}"/></p>
    <p>Revision Reason: <input type="text" th:field="*{revisionReason}"/></p>

    <label>File Type:</label>
    <select th:field="*{fileType}">
        <option value="Assembly Drawing">Assembly Drawing</option>
        <option value="BOM">BOM</option>
        <option value="Component Drawing">Component Drawing"</option>
        <option value="Data Sheet">Data Sheet</option>
        <option value="Reference Image">Reference Image</option>
    </select>

    <h2>Components List: <input type="file" th:field="*{componentsList}" multiple="multiple"/></h2>
    <h2>Work Piece Carrier #: <input type="text" th:field="*{workPieceCarrierNumber}"/></h2>
    <h2>Location: <input type="text" th:field="*{location}"/></h2>

    <hr>

    <h1>Features</h1>
    <h2>Drawing Library: <input type="file" th:field="*{drawingLibrary}" multiple="multiple"/></h2>

    <hr>

    <h1>Repair Ticket</h1>
    <h2>Reason for change: <input type="text" th:field="*{reasonForChange}"/></h2>
    <h2>Reason Category: <input type="text" th:field="*{reasonCategory}"/></h2>
    <input type="checkbox" th:field="*{toolLifeAchieved}"/><h2>Tool Life Achieved</h2>
    <h2>Location:<input type="text" th:field="*{locationRepairTicket}"/></h2>
    <h2>Downtime Impact in Minutes: <input type="text" th:field="*{downTimeImpact}"/></h2>

    <hr>

    <h1>File Storage</h1>
    <h2>PDFs:<input type="file" th:field="*{PDFs}" multiple="multiple"/></h2>
    <h2>CADs:<input type="file" th:field="*{CADs}" multiple="multiple"/></h2>
    <h2>JPEG:<input type="file" th:field="*{JPEG}"/></h2>
</form>

</body>
</html>