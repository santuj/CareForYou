<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NurseCertificateView.aspx.cs" Inherits="Admin_NurseCertificateView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Docoment</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">

</head>
<body>
    <form id="form1" runat="server">
    <div class="container my-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card shadow-lg rounded-4">
                <div class="card-body text-center">
                    <h5 class="card-title mb-4 text-primary fw-bold">Nurse Certificate</h5>
                    
                    <!-- Certificate Thumbnail -->
                    <img src="" id="imgDocument" runat="server" alt="Nurse Certificate" 
                         class="img-fluid rounded-3 shadow-sm mb-3" 
                         style="max-height: 250px; cursor: pointer;" 
                         data-bs-toggle="modal" data-bs-target="#certificateModal">
                    
                    <p class="text-muted">Click on the certificate to enlarge</p>
                </div>
            </div>
            <center>            <asp:Button ID="Button1" runat="server" CssClass="btn btn-danger mt-3" Text="Back" OnClick="back_Click" />
</center>
        </div>
    </div>
</div>

<!-- Modal for Full View -->
<div class="modal fade" id="certificateModal" tabindex="-1" aria-labelledby="certificateModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg">
    <div class="modal-content rounded-4">
      <div class="modal-header border-0">
        <h5 class="modal-title text-primary" id="certificateModalLabel">Certificate Preview</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body text-center">
          <asp:Image runat="server" ID="imgDocumentFull" CssClass="img-fluid rounded-3 shadow" />
      </div>
    </div>
  </div>
</div>

<!-- Bootstrap JS Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    </form>
</body>
</html>
