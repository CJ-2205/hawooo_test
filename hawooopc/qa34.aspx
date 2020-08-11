<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="qa34.aspx.cs" Inherits="user_qa34" %>

<%--<%@ Register Src="~/user/control/qa_class.ascx" TagPrefix="uc1" TagName="qa_class" %>--%>

<%@ Register Src="~/user/control/qa_title.ascx" TagPrefix="uc1" TagName="qa_title" %>
<%@ Register Src="~/user/control/qa_menu.ascx" TagPrefix="uc1" TagName="qa_menu" %>
<%@ Register Src="~/user/control/qa_menu_en.ascx" TagPrefix="uc1" TagName="qa_menu_en" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- 限時團購內頁 -->
    <link rel="stylesheet" href="assets/css/qa.css">
    <!-- 通用＋menu -->
    <link rel="stylesheet" href="assets/css/header.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <!-- content star -->
    <div style="margin-top: 120px; display: block;">
        <uc1:qa_title runat="server" ID="qa_title" />

        <!--  product breadcrumb（商品頁麵包屑） star-->
        <%--        <section class="product-breadcrumb-section">
            <div class="am-container product-breadcrumb-wrapper">
                <ul class="am-u-sm-12 am-cf">
                    <li class="am-fl product-breadcrumb">
                        <a href="#">HaWooo</a>
                    </li>
                    <li class="am-fl product-breadcrumb">
                        <a href="#">F&Q問與答</a>
                    </li>
                    <li class="am-fl product-breadcrumb">
                        <a href="#">如何註冊會員帳號？</a>
                    </li>
                </ul>
            </div>
        </section>--%>


        <!--  products breadcrumb（商品頁麵包屑） end-->
        <section class="am-container qa-wrapper" id="zhPanel" runat="server">
            <!-- qa左邊導覽列 qa-nav end -->
            <uc1:qa_menu runat="server" ID="qa_menu" />
            <!-- 右方內容 qa-content start -->
            <div class="qa-content-text">
                <h4 class="qa-height qa-maintitle">隱私權條款</h4>



                <div class="qa-main">
                    <h4 class="qa-subtitle-eng">Data Protection Act 2010</h4>
                    <p class="qa-text-eng">
                        The Personal Data Protection Act 2010 (the “Act”), which regulates the processing of personal data in commercial transactions, applies to Hawooo.com Trading Inc, Peoples Map Sdn Bhd (“our”, “us” or “we”).  For the purpose of this written notice (“Notice”), the terms “personal data” and “processing” shall have the same meaning as prescribed in the Act.<br>
                        <br>
                        1.  This Notice serves to inform you that your personal data is being processed by us or on our behalf when you access our website at [http://www.hawooo.com/user/index.aspx] (“Website”) and you hereby give your consent to the processing of your personal data.<br>
                        <br>
                        2.  Your personal data includes your name, date of birth, e-mail address, delivery address, contact number, credit card details, bank account number and the message you submit to us in our registration form and all other personal data we again collect from you on any subsequent occasion.<br>
                        <br>
                        3.  Your personal data is being or is to be collected and further processed for:<br>
                        <br>
                        (a) performing our pre-contractual and contractual obligation with you;<br>
                        (b) delivering the products you have purchased from the Website;<br>
                        (c) processing your orders and to provide you with the services and information offered through our Website;<br>
                        (d) verifying and carrying out financial transactions in relation to payments you make online;<br>
                        (e) providing our products and/or services to you;<br>
                        (f) communicating with you;<br>
                        (g) responding to your inquiries  and resolving disputes;<br>
                        (h) market surveys and trend analysis;<br>
                        (i) providing you  with information on our products and/or services, promotional offers and of our related corporations and business partners;<br>
                        (j) conducting internal activities and other legitimate business activities;<br>
                        (k) complying with any legal or regulatory requirements; and<br>
                        (l) such other purposes directly related to the foregoing.
                    <br>
                        <br>
                        (collectively, the “Purposes”).
                    <br>
                        <br>
                        4.  Your personal data is being or is to be collected from the registration form available on the Website, when you log in to the Website or contact our customer service and all other personal data we again collect from you on any subsequent occasion and all other information that you may provide us from time to time.
                    <br>
                        <br>
                        5.  You have the right to request access to and to request correction of your personal data and to contact us with any inquiries or complaints in respect of your personal data (including the possible choices and means for limiting the processing of your personal data or to cease or not begin processing your personal data for purposes of direct marketing) from:
                    <br>
                        <br>
                        Designation:  Customer Service<br>
                        Telephone No.:  03-23866096<br>
                        E-mail address: service@hawooo.com<br>
                        <br>
                        6.  Subject to provisions of the Act:<br>
                        (a) you may, upon payment of a prescribed fee, make a data access request in writing to us; and<br>
                        (b) we may refuse to comply with a data access request or a data correction request and shall, by notice in writing, inform you of our refusal and the reasons of our refusal.
                    <br>
                        <br>
                        7.  We disclose or may disclose your personal data to our related corporations, our group of companies, business partners, service providers, our financial and professional advisors, banks, governmental departments and/or agencies, regulatory and/or statutory bodies and any such third party requested or authorized by you for the Purposes.<br>
                        <br>
                        8.  We may require your assistance if the personal data relating to other persons is required to process your personal data for the Purposes and you hereby agree to use your best endeavors to assist us when required..
                    <br>
                        <br>
                        9.  It is obligatory that you supply us the details marked with asterisk (*) in our registration form (collectively, “compulsory personal data”).   If you fail to supply us the compulsory personal data, we may refuse to process your personal data for any of the Purposes and/or result in us being unable to provide you with the services and/or products requested.<br>
                        <br>
                        10. We may transfer your personal data to a place outside Malaysia and you hereby give your consent to the transfer.<br>
                        <br>
                        11. You are responsible for ensuring that the information you provide us is accurate, complete, not misleading and kept up to date.<br>
                        <br>
                        12. In the event of any inconsistency between the English version and the Bahasa Malaysia version of this Notice, the English version shall prevail over the Bahasa Malaysia version.<br>
                        <br>
                    </p>
                    <div class="content_b"></div>
                    <hr>
                    <h4 class="qa-subtitle-eng">Notis Di Bawah Akta Perlindungan Data Peribadi 2010</h4>
                    <p class="qa-text-eng">
                        Akta Perlindungan Data Peribadi 2010 (“Akta” tersebut) yang mengawal selia pemprosesan data peribadi dalam transaksi komersial, terpakai kepada Hawooo.com Trading Inc,, Peoples Map Sdn Bhd (“kami”). Untuk tujuan notis bertulis ini (“Notis”), terma-terma “data peribadi” dan “pemprosesan” mempunyai maksud yang sama seperti yang ditakrif dalam Akta tersebut.
                    <br>
                        <br>
                        1.  Notis ini bertujuan untuk memaklumkan kepada anda bahawa data peribadi anda sedang diproses oleh atau bagi pihak kami apabila anda mengakses laman web kami di  
                    <br>
                        [http://www.hawooo.com/user/index.aspx] (“Laman Web”) dan anda dengan ini memberikan persetujuan anda bagi pemprosesan data peribadi anda. 
                    <br>
                        <br>
                        2.  Data peribadi anda termasuk nama anda, tarikh lahir, alamat e-mel anda, alamat penghantaran, nombor hubungan anda, butir-butir kad kredit, nombor akaun bank dan mesej anda hantar kepda kami dalam borang pendaftaran online kami dan semua data peribadi lain kami sekali lagi kumpul daripada anda pada bila-bila masa kemudiannya.
                    <br>
                        <br>
                        3.  Data peribadi anda sedang atau akan dikumpulkan dan diproses selanjutnya untuk:
                    <br>
                        <br>
                        (a) melaksanakan obligasi pra-kontrak dan kontrak dengan anda;
                    <br>
                        (b) menghantar produk yang dibeli oleh anda di dalam Laman Web;
                    <br>
                        (c) memproses tempahan anda dan memberikan anda perkhidmatan dan maklumat yang ditawarkan di dalam Laman Web;
                    <br>
                        (d) mengesahkan dan melaksanakan transaksi kewangan berkenaan dengan bayaran online yang dibuat oleh anda;
                    <br>
                        (e) memberikan produk dan/atau perkhidmatan kami kepada anda (;<br>
                        (f) berhubung dengan anda;<br>
                        (g) menjawab pertanyaan anda dan menyelesaikan pertikaian;
                    <br>
                        (h) tinjauan pasaran dan analisis kecenderungan;<br>
                        (i) memberikan anda maklumat tentang produk dan/atau perkhidmatan kami, tawaran promosi dan perbadanan-perbadanan berkaitan kami dan rakan perniagaan kami;<br>
                        (j) menjalankan kegiatan dalaman dan kegiatan-kegiatan perniagaan sah lain;<br>
                        (k) memenuhi apa-apa kehendak undang-undang atau kawal selia; dan<br>
                        (l) maksud-maksud lain yang berhubungan secara langsung dengan yang tersebut di atas.<br>
                        <br>
                        (secara kolektif, “Maksud-maksud” tersebut).<br>
                        <br>
                        4.  Data peribadi anda sedang atau akan dikumpulkan daripada borang pendaftaran online yang tersedia di dalam Laman Web, apabila anda log masuk ke dalam Laman Web atau menghubungi perkhidmatan pelanggan kami dan semua maklumat lain yang anda mungkin akan berikan kami dari masa ke semasa.<br>
                        <br>
                        5.  Anda berhak untuk meminta akses kepada dan meminta pembetulan terhadap data peribadi anda dan untuk menghubungi kami tentang apa-apa pertanyaan atau aduan berkenaan dengan data peribadi anda (termasuk pilihan-pilihan dan cara-cara yang mungkin untuk mengehadkan pemprosesan data peribadi anda atau untuk memberhentikan atau tidak memulakan pemprosesan data peribadi anda bagi tujuan pemasaran langsung) daripada:<br>
                        <br>
                        Perjawatan: Khidmat Pelanggan<br>
                        No. Telefon:  03-23866096<br>
                        Alamat E-mel: service@hawooo.com<br>
                        <br>
                        6.  Tertakluk kepada peruntukan-peruntukan Akta tersebut:<br>
                        (a) Anda boleh, apabila dibayar fi yang ditetapkan, membuat suatu permintaan mengakses data secara bertulis kepada kami; dan<br>
                        (b) Kami boleh enggan mematuhi permintaan mengakses data atau permintaan pembetulan data dan hendaklah, melalui notis bertulis, memaklumkan anda mengenai keengganan tersebut dan sebab-sebab bagi keengganan tersebut.<br>
                        <br>
                        7.  Kami menzahirkan atau boleh menzahirkan data peribadi anda kepada perbadanan berkaitan kami, kumpulan syarikat kami, rakan-rakan perniagaan kami, pembekal-pembekal perkhidmatan kami, penasihat kewangan atau profesional kami, bank, jabatan-jabatan dan agensi-agensi kerajaan, badan-badan kawal selia dan/atau berkanun dan dan mana-mana pihak ketiga yang diminta atau dibenarkan oleh anda untuk Maksud-maksud tersebut.<br>
                        <br>
                        8.  Kami boleh menghendaki bantuan anda jika data peribadi yang berhubungan dengan orang lain dikehendaki untuk memproses data peribadi anda untuk Maksud-maksud tersebut dan anda dengan ini bersetuju untuk menggunakan usaha terbaik anda untuk membantu kami bila dikehendaki.
                    <br>
                        <br>
                        9.  Ia adalah wajib untuk anda memberikan kepada kami butir-butir bertanda asterisk (*) dalam borang pendaftaran online kami (secara kolektif, “data peribadi wajib”).  Jika anda gagal untuk memberikan kami data peribadi wajib tersebut, kami boleh enggan untuk memproses data peribadi anda untuk mana-mana Maksud-maksud tersebut dan/atau menyebabkan kami tidak dapat memberikan anda produk dan/atau perkhidmatan yang diminta.
                    <br>
                        <br>
                        10. Kami boleh memindahkan data peribadi anda ke sesuatu tempat di luar Malaysia dan anda dengan ini memberikan persetujuan anda tehadap pemindahan tersebut.<br>
                        <br>
                        11. Anda bertanggungjawab untuk memastikan bahawa maklumat yang anda berikan kami adalah tepat, lengkap, tidak mengelirukan dan terkini.<br>
                        <br>
                        12. Sekiranya terdapat apa-apa ketidak-konsistenan antara versi Bahasa Inggeris dan versi Bahasa Malaysia Notis ini, versi Bahasa Inggeris akan mengatasi versi Bahasa Malaysia.
                    
                    </p>
                </div>
                <div class="content_b"></div>

                <div class="qa-contact">
                    <h4 class="qa-contact-title">還有其他問題嗎？</h4>
                    <p>
                        電話:
                        <br>
                        +603-23866096
                    </p>
                    <p>
                        E-mail:<br>
                        <a href="mailto:service@hawooo.com">service@hawooo.com</a>
                    </p>
                    <br>
                    <p class="qa-time">星期一 - 星期五(except public holiday) 9AM - 6PM</p>
                </div>
            </div>
            <!-- 右方內容 qa-content end -->
        </section>
        <!--Howard在這裡結束-->


        <!--Howard這邊加Header-->

        <!-- content start -->


        <!--  product breadcrumb（商品頁麵包屑） star-->
        <%--    <uc1:qa_title runat="server" ID="qa_title1_en" />--%>
        <%--  <section class="product-breadcrumb-section">
            <div class="am-container product-breadcrumb-wrapper">
                <ul class="am-u-sm-12 am-cf">
                    <li class="am-fl product-breadcrumb">
                        <a href="#">HaWooo</a>
                    </li>
                    <li class="am-fl product-breadcrumb">
                        <a href="#">FAQ</a>
                    </li>
                    <li class="am-fl product-breadcrumb">
                        <a href="#">How to register an account?</a>
                    </li>

                </ul>
            </div>
        </section>--%>
        <!--  products breadcrumb（商品頁麵包屑） end-->

        <section class="am-container qa-wrapper" id="enPanel" runat="server">
            <!-- qa左邊導覽列 qa-nav start -->
            <uc1:qa_menu_en runat="server" ID="qa_menu_en" />

            <!-- qa左邊導覽列 qa-nav end -->
            <!-- 右方內容 qa-content start -->
            <div class="qa-content-text">
                <h4 class="qa-height qa-maintitle">Privacy Policy</h4>

                <div class="qa-main">
                    <h4 class="qa-subtitle-eng">Data Protection Act 2010</h4>
                    <p class="qa-text-eng">
                        The Personal Data Protection Act 2010 (the “Act”), which regulates the processing of personal data in commercial transactions, applies to Hawooo.com Trading Inc, Peoples Map Sdn Bhd (“our”, “us” or “we”).  For the purpose of this written notice (“Notice”), the terms “personal data” and “processing” shall have the same meaning as prescribed in the Act.<br>
                        <br>
                        1.  This Notice serves to inform you that your personal data is being processed by us or on our behalf when you access our website at [http://www.hawooo.com/user/index.aspx] (“Website”) and you hereby give your consent to the processing of your personal data.<br>
                        <br>
                        2.  Your personal data includes your name, date of birth, e-mail address, delivery address, contact number, credit card details, bank account number and the message you submit to us in our registration form and all other personal data we again collect from you on any subsequent occasion.<br>
                        <br>
                        3.  Your personal data is being or is to be collected and further processed for:<br>
                        <br>
                        (a) performing our pre-contractual and contractual obligation with you;<br>
                        (b) delivering the products you have purchased from the Website;<br>
                        (c) processing your orders and to provide you with the services and information offered through our Website;<br>
                        (d) verifying and carrying out financial transactions in relation to payments you make online;<br>
                        (e) providing our products and/or services to you;<br>
                        (f) communicating with you;<br>
                        (g) responding to your inquiries  and resolving disputes;<br>
                        (h) market surveys and trend analysis;<br>
                        (i) providing you  with information on our products and/or services, promotional offers and of our related corporations and business partners;<br>
                        (j) conducting internal activities and other legitimate business activities;<br>
                        (k) complying with any legal or regulatory requirements; and<br>
                        (l) such other purposes directly related to the foregoing.
                    <br>
                        <br>
                        (collectively, the “Purposes”).
                    <br>
                        <br>
                        4.  Your personal data is being or is to be collected from the registration form available on the Website, when you log in to the Website or contact our customer service and all other personal data we again collect from you on any subsequent occasion and all other information that you may provide us from time to time.
                    <br>
                        <br>
                        5.  You have the right to request access to and to request correction of your personal data and to contact us with any inquiries or complaints in respect of your personal data (including the possible choices and means for limiting the processing of your personal data or to cease or not begin processing your personal data for purposes of direct marketing) from:
                    <br>
                        <br>
                        Designation:  Customer Service<br>
                        Telephone No.:  03-23866096<br>
                        E-mail address: service@hawooo.com<br>
                        <br>
                        6.  Subject to provisions of the Act:<br>
                        (a) you may, upon payment of a prescribed fee, make a data access request in writing to us; and<br>
                        (b) we may refuse to comply with a data access request or a data correction request and shall, by notice in writing, inform you of our refusal and the reasons of our refusal.
                    <br>
                        <br>
                        7.  We disclose or may disclose your personal data to our related corporations, our group of companies, business partners, service providers, our financial and professional advisors, banks, governmental departments and/or agencies, regulatory and/or statutory bodies and any such third party requested or authorized by you for the Purposes.<br>
                        <br>
                        8.  We may require your assistance if the personal data relating to other persons is required to process your personal data for the Purposes and you hereby agree to use your best endeavors to assist us when required..
                    <br>
                        <br>
                        9.  It is obligatory that you supply us the details marked with asterisk (*) in our registration form (collectively, “compulsory personal data”).   If you fail to supply us the compulsory personal data, we may refuse to process your personal data for any of the Purposes and/or result in us being unable to provide you with the services and/or products requested.<br>
                        <br>
                        10. We may transfer your personal data to a place outside Malaysia and you hereby give your consent to the transfer.<br>
                        <br>
                        11. You are responsible for ensuring that the information you provide us is accurate, complete, not misleading and kept up to date.<br>
                        <br>
                        12. In the event of any inconsistency between the English version and the Bahasa Malaysia version of this Notice, the English version shall prevail over the Bahasa Malaysia version.<br>
                        <br>
                    </p>
                    <div class="content_b"></div>
                    <hr>
                    <h4 class="qa-subtitle-eng">Notis Di Bawah Akta Perlindungan Data Peribadi 2010</h4>
                    <p class="qa-text-eng">
                        Akta Perlindungan Data Peribadi 2010 (“Akta” tersebut) yang mengawal selia pemprosesan data peribadi dalam transaksi komersial, terpakai kepada Hawooo.com Trading Inc,, Peoples Map Sdn Bhd (“kami”). Untuk tujuan notis bertulis ini (“Notis”), terma-terma “data peribadi” dan “pemprosesan” mempunyai maksud yang sama seperti yang ditakrif dalam Akta tersebut.
                    <br>
                        <br>
                        1.  Notis ini bertujuan untuk memaklumkan kepada anda bahawa data peribadi anda sedang diproses oleh atau bagi pihak kami apabila anda mengakses laman web kami di  
                    <br>
                        [http://www.hawooo.com/user/index.aspx] (“Laman Web”) dan anda dengan ini memberikan persetujuan anda bagi pemprosesan data peribadi anda. 
                    <br>
                        <br>
                        2.  Data peribadi anda termasuk nama anda, tarikh lahir, alamat e-mel anda, alamat penghantaran, nombor hubungan anda, butir-butir kad kredit, nombor akaun bank dan mesej anda hantar kepda kami dalam borang pendaftaran online kami dan semua data peribadi lain kami sekali lagi kumpul daripada anda pada bila-bila masa kemudiannya.
                    <br>
                        <br>
                        3.  Data peribadi anda sedang atau akan dikumpulkan dan diproses selanjutnya untuk:
                    <br>
                        <br>
                        (a) melaksanakan obligasi pra-kontrak dan kontrak dengan anda;
                    <br>
                        (b) menghantar produk yang dibeli oleh anda di dalam Laman Web;
                    <br>
                        (c) memproses tempahan anda dan memberikan anda perkhidmatan dan maklumat yang ditawarkan di dalam Laman Web;
                    <br>
                        (d) mengesahkan dan melaksanakan transaksi kewangan berkenaan dengan bayaran online yang dibuat oleh anda;
                    <br>
                        (e) memberikan produk dan/atau perkhidmatan kami kepada anda (;<br>
                        (f) berhubung dengan anda;<br>
                        (g) menjawab pertanyaan anda dan menyelesaikan pertikaian;
                    <br>
                        (h) tinjauan pasaran dan analisis kecenderungan;<br>
                        (i) memberikan anda maklumat tentang produk dan/atau perkhidmatan kami, tawaran promosi dan perbadanan-perbadanan berkaitan kami dan rakan perniagaan kami;<br>
                        (j) menjalankan kegiatan dalaman dan kegiatan-kegiatan perniagaan sah lain;<br>
                        (k) memenuhi apa-apa kehendak undang-undang atau kawal selia; dan<br>
                        (l) maksud-maksud lain yang berhubungan secara langsung dengan yang tersebut di atas.<br>
                        <br>
                        (secara kolektif, “Maksud-maksud” tersebut).<br>
                        <br>
                        4.  Data peribadi anda sedang atau akan dikumpulkan daripada borang pendaftaran online yang tersedia di dalam Laman Web, apabila anda log masuk ke dalam Laman Web atau menghubungi perkhidmatan pelanggan kami dan semua maklumat lain yang anda mungkin akan berikan kami dari masa ke semasa.<br>
                        <br>
                        5.  Anda berhak untuk meminta akses kepada dan meminta pembetulan terhadap data peribadi anda dan untuk menghubungi kami tentang apa-apa pertanyaan atau aduan berkenaan dengan data peribadi anda (termasuk pilihan-pilihan dan cara-cara yang mungkin untuk mengehadkan pemprosesan data peribadi anda atau untuk memberhentikan atau tidak memulakan pemprosesan data peribadi anda bagi tujuan pemasaran langsung) daripada:<br>
                        <br>
                        Perjawatan: Khidmat Pelanggan<br>
                        No. Telefon:  03-23866096<br>
                        Alamat E-mel: service@hawooo.com<br>
                        <br>
                        6.  Tertakluk kepada peruntukan-peruntukan Akta tersebut:<br>
                        (a) Anda boleh, apabila dibayar fi yang ditetapkan, membuat suatu permintaan mengakses data secara bertulis kepada kami; dan<br>
                        (b) Kami boleh enggan mematuhi permintaan mengakses data atau permintaan pembetulan data dan hendaklah, melalui notis bertulis, memaklumkan anda mengenai keengganan tersebut dan sebab-sebab bagi keengganan tersebut.<br>
                        <br>
                        7.  Kami menzahirkan atau boleh menzahirkan data peribadi anda kepada perbadanan berkaitan kami, kumpulan syarikat kami, rakan-rakan perniagaan kami, pembekal-pembekal perkhidmatan kami, penasihat kewangan atau profesional kami, bank, jabatan-jabatan dan agensi-agensi kerajaan, badan-badan kawal selia dan/atau berkanun dan dan mana-mana pihak ketiga yang diminta atau dibenarkan oleh anda untuk Maksud-maksud tersebut.<br>
                        <br>
                        8.  Kami boleh menghendaki bantuan anda jika data peribadi yang berhubungan dengan orang lain dikehendaki untuk memproses data peribadi anda untuk Maksud-maksud tersebut dan anda dengan ini bersetuju untuk menggunakan usaha terbaik anda untuk membantu kami bila dikehendaki.
                    <br>
                        <br>
                        9.  Ia adalah wajib untuk anda memberikan kepada kami butir-butir bertanda asterisk (*) dalam borang pendaftaran online kami (secara kolektif, “data peribadi wajib”).  Jika anda gagal untuk memberikan kami data peribadi wajib tersebut, kami boleh enggan untuk memproses data peribadi anda untuk mana-mana Maksud-maksud tersebut dan/atau menyebabkan kami tidak dapat memberikan anda produk dan/atau perkhidmatan yang diminta.
                    <br>
                        <br>
                        10. Kami boleh memindahkan data peribadi anda ke sesuatu tempat di luar Malaysia dan anda dengan ini memberikan persetujuan anda tehadap pemindahan tersebut.<br>
                        <br>
                        11. Anda bertanggungjawab untuk memastikan bahawa maklumat yang anda berikan kami adalah tepat, lengkap, tidak mengelirukan dan terkini.<br>
                        <br>
                        12. Sekiranya terdapat apa-apa ketidak-konsistenan antara versi Bahasa Inggeris dan versi Bahasa Malaysia Notis ini, versi Bahasa Inggeris akan mengatasi versi Bahasa Malaysia.
                    
                    </p>
                </div>

                <div class="content_b"></div>

                <div class="qa-contact">

                    <h4 class="qa-contact-title">Need further clarifications?</h4>
                    <p class="qa-time-eng">
                        You can contact us during our working hours:
                    <br>
                        Mon-Fri: 9am-6pm, except public holidays.
                    </p>
                    <p>Phone:
                        <br>
                        +603-23866096</p>
                    <p>E-mail:<br>
                        <a href="mailto:service@hawooo.com">service@hawooo.com</a></p>
                    <br>
                </div>
            </div>
            <!-- 右方內容 qa-content end -->

        </section>
    </div>
    <!--Howard這邊加footer-->
</asp:Content>

