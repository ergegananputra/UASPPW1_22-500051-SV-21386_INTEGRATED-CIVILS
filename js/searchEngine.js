function startSearch(){
    var keyword = document.getElementById("keywordToSearch").value;

    // Send the keyword to the PHP script using AJAX
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            // Handle the response from the PHP script if needed
            var response = this.responseText;
            // Process the response here
            document.getElementById("resultQuery").innerHTML = response;
        }
    };
    xhttp.open("GET", "php/searchQuery.php?keyword=" + encodeURIComponent(keyword), true);
    xhttp.send();

}