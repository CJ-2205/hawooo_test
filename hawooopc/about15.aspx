<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="about15.aspx.cs" Inherits="user_about15" %>

<%@ Register Src="~/user/control/about_class.ascx" TagPrefix="uc1" TagName="about_class" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="am-container">
        <div class="am-g">
            <!-- Slider Start-->
            <div class="am-margin-top" style="margin-top: 20px;">
                <img src="../images/aboutpc/images/about-us-banner.png" />
            </div>
            <!-- Slider End-->
        </div>
        <div class="am-g" style="background-color: #ffffff">
            <div class="am-u-md-3" style="margin-top: 20px;">
                <uc1:about_class runat="server" ID="about_class" />
            </div>
            <!--問題開始-->
            <div class="am-u-md-9" style="float: right; display: block; padding-bottom: 20px; padding-left: 0px; margin-top: 20px">
                <div class="am-panel boxshadow">

                    <div class="about-title">服務條款 <span style="font-size: 12px">Terms & Conditions</span></div>
                    <hr />
                    <div class="am-tabs" data-am-tabs style="padding: 0px 10px 10px 10px">
                        <ul class="am-tabs-nav am-nav am-nav-tabs">
                            <li class="am-active"><a href="javascript: void(0)">English</a></li>
                            <%--   <li><a href="javascript: void(0)">English</a></li>--%>
                        </ul>

                        <div class="am-tabs-bd">
                            <div class="am-tab-panel am-active">
                                <div style="line-height: 40px; font-size: 14px">
                                    &nbsp;&nbsp;&nbsp;&nbsp;Welcome to the www.hawooo.com website (the "Site"). By accessing the Site, you confirm your understanding of the Terms and Conditions. If you do not agree to these Terms and Conditions of use, you shall not use this website. The Site reserves the right, to change, modify, add, or remove portions of these Terms and Conditions of use at any time. Changes will be effective when posted on the Site with no other notice provided. Please check these Terms and Conditions of use regularly for updates. Your continued use of the Site following the posting of changes to these Terms and Conditions of use constitutes your acceptance of those changes.
                               <br />
                                    <br />
                                    <div class="about-content-title">
                                        USE OF THE SITE
                                    </div>
                                    &nbsp;&nbsp;&nbsp;&nbsp;We grant you a non-transferable and revocable license to use the Site, under the Terms and Conditions described, for the purpose of shopping for personal items sold on the Site. Commercial use or use on behalf of any third party is prohibited, except as explicitly permitted by us in advance. Any breach of these Terms and Conditions shall result in the immediate revocation of the license granted in this paragraph without notice to you.
                                <br />
                                    Content provided on this site is solely for informational purposes. Product representations expressed on this Site are those of the vendor and are not made by us. Submissions or opinions expressed on this Site are those of the individual posting such content and may not reflect our opinions.
                                <br />
                                    Certain services and related features that may be made available on the Site may require registration or subscription. Should you choose to register or subscribe for any such services or related features, you agree to provide accurate and current information about yourself, and to promptly update such information if there are any changes. Every user of the Site is solely responsible for keeping passwords and other account identifiers safe and secure. The account owner is entirely responsible for all activities that occur under such password or account. Furthermore, you must notify us of any unauthorized use of your password or account. The Site shall not be responsible or liable, directly or indirectly, in any way for any loss or damage of any kind incurred as a result of, or in connection with, your failure to comply with this section.
                                <br />
                                    <br />
                                    <div class="about-content-title">
                                        USER SUBMISSIONS
                                    </div>
                                    &nbsp;&nbsp;&nbsp;&nbsp;Anything that you submit to the Site and/or provide to us, including but not limited to, questions, reviews; comments, and suggestions (collectively, "Submissions") will become our sole and exclusive property and shall not be returned to you. In addition to the rights applicable to any Submission, when you post comments or reviews to the Site, you also grant us the right to use the name that you submit, in connection with such review, comment, or other content. You shall not use a false e-mail address, pretend to be someone other than yourself or otherwise mislead us or third parties as to the origin of any Submissions. We may, but shall not be obligated to, remove or edit any Submissions.
                                <br />
                                    <br />
                                    <div class="about-content-title">
                                        ORDER ACCEPTANCE AND PRICING
                                    </div>
                                    &nbsp;&nbsp;&nbsp;&nbsp;Please note that there are cases when an order cannot be processed for various reasons. The Site reserves the right to refuse or cancel any order for any reason at any given time. You may be asked to provide additional verifications or information, including but not limited to phone number and address, before we accept the order.
                                <br />
                                    <br />
                                    We are determined to provide the most accurate pricing information on the Site to our users; however, errors may still occur, such as cases when the price of an item is not displayed correctly on the website. As such, we reserve the right to refuse or cancel any order. In the event that an item is mispriced, we may, at our own discretion, either contact you for instructions or cancel your order and notify you of such cancellation. We shall have the right to refuse or cancel any such orders whether or not the order has been confirmed and your credit card or bank account charged.
                                <br />
                                    <br />
                                    <div class="about-content-title">
                                        TRADEMARKS AND COPYRIGHTS
                                    </div>
                                    &nbsp;&nbsp;&nbsp;&nbsp;All intellectual property rights, whether registered or unregistered, in the Site, information content on the Site and all the website design, including, but not limited to, text, graphics, software, photos, video, music, sound, and their selection and arrangement, and all software compilations, underlying source code and software shall remain our property. The entire contents of the Site also are protected by copyright as a collective work under Malaysia copyright laws and international conventions. All rights are reserved.
                                <br />
                                    <br />
                                    <div class="about-content-title">
                                        APPLICABLE LAW AND JURISDICTION	
                                    </div>
                                    &nbsp;&nbsp;&nbsp;&nbsp;These Terms and Conditions shall be interpreted and governed by the laws in force in Malaysia. Subject to the Arbitration section below, each party hereby agrees to submit to the jurisdiction of the courts of Government of Malaysia to waive any objections based upon venue.
                                <br />
                                    <br />
                                    <div class="about-content-title">
                                        ARBITRATION
                                    </div>
                                    &nbsp;&nbsp;&nbsp;&nbsp;Any controversy, claim or dispute arising out of or relating to these Terms and Conditions will be referred to and finally settled by private and confidential binding arbitration before a single arbitrator held in Malaysia in English and governed by Malaysian law. The arbitrator shall be a person who is legally trained and who has experience in the information technology field in Malaysia and is independent of either party. Notwithstanding the foregoing, the Site reserves the right to pursue the protection of intellectual property rights and confidential information through injunctive or other equitable relief through the courts.
                                <br />
                                    <br />
                                    <div class="about-content-title">
                                        TERMINATION
                                    </div>
                                    &nbsp;&nbsp;&nbsp;&nbsp;In addition to any other legal or equitable remedies, we may, without prior notice to you, immediately terminate the Terms and Conditions or revoke any or all of your rights granted under the Terms and Conditions. Upon any termination of this Agreement, you shall immediately cease all access to and use of the Site and we shall, in addition to any other legal or equitable remedies, immediately revoke all password(s) and account identification issued to you and deny your access to and use of this Site in whole or in part. Any termination of this agreement shall not affect the respective rights and obligations (including without limitation, payment obligations) of the parties arising before the date of termination. You furthermore agree that the Site shall not be liable to you or to any other person as a result of any such suspension or termination. If you are dissatisfied with the Site or with any terms, conditions, rules, policies, guidelines, in operating the Site, your sole and exclusive remedy is to discontinue using the Site.
                                <br />
                                    <br />
                                    <hr />
                                    <div class="about-content-title" style="text-align: center">
                                        Terms of Use
                                    </div>
                                    <div class="about-content-title">
                                        1. Interpretation
                                    </div>
                                    <table>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">1.1 
                                            </td>
                                            <td>In these Conditions: Buyer" means the person who accepts a quotation of HaWooo for the supply of Goods or who otherwise enters into a contract for the supply of Goods with HaWooo;
"Conditions" mean the general terms and conditions set out in this document and (unless the context otherwise requires) any special terms and conditions agreed in writing between the Buyer and HaWooo;
"Contract" means the contract for the purchase and sale of Goods, howsoever formed or concluded;
"Goods" means the goods (including any installment of the goods or any parts for them), which HaWooo is to supply in accordance with a Contract;
"Writing" includes electronic mail facsimile transmission and any comparable means of communication.
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">1.2
                                            </td>
                                            <td>Any reference in these Conditions to any provision of a statute shall be construed as a reference to that provision as amended re-enacted or extended at the relevant time.
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">1.3
                                            </td>
                                            <td>The headings in these Conditions are for convenience only and shall not affect the interpretation of any parties.
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                    <br />
                                    <div class="about-content-title">
                                        2. Basis of the Contract
                                    </div>
                                    <table>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">2.1 
                                            </td>
                                            <td>The supply of Goods by HaWooo to the Buyer under any Contract shall be subjected to these Conditions which shall govern the Contract to the exclusion of any other terms and conditions contained or referred to in any documentation submitted by the Buyer or in correspondence or elsewhere or implied by trade custom practice or course of dealing.
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">2.2
                                            </td>
                                            <td>Any information made available in HaWooo’s website connection with the supply of Goods, including photographs, drawings, data about the extent of the delivery, appearance, performance, dimensions, weight, consumption of operating materials, operating costs, are not binding and for information purposes only. In entering into the Contract the Buyer acknowledges that it does not rely on and waives any claim based on any such representations or information not so confirmed.</td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">2.3
                                            </td>
                                            <td>No variation to these Conditions shall be binding unless agreed in writing between the authorized representatives of the Buyer and HaWooo.</td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">2.4
                                            </td>
                                            <td>Any typographical clerical or other error or omission in any quotation, invoice or other document or information issued by HaWooo in its website shall be subject to correction without any liability on the part of HaWooo.</td>
                                        </tr>
                                    </table>
                                    <br />
                                    <br />
                                    <div class="about-content-title">
                                        3. Orders and Specifications
                                    </div>
                                    <table>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">3.1 
                                            </td>
                                            <td>Order acceptance and completion of the contract between the Buyer and HaWooo will only be completed upon HaWooo issuing a confirmation of dispatch of the Goods to the Buyer. For the avoidance of doubt, HaWooo shall be entitled to refuse or cancel any order without giving any reasons for the same to the Buyer prior to issue of the confirmation of dispatch. HaWooo shall furthermore be entitled to require the Buyer to furnish HaWooo with contact and other verification information, including but not limited to address, contact numbers prior to issuing a confirmation of dispatch.
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">3.2
                                            </td>
                                            <td>No concluded Contract may be modified or cancelled by the Buyer except with the agreement in writing of HaWooo and on terms that the Buyer shall indemnify HaWooo in full against all loss (including loss of profit) costs (including the cost of all labour and materials used) damages charges and expenses incurred by HaWooo as a result of the modification or cancellation, as the case may be.
                                            </td>
                                        </tr>

                                    </table>

                                    <br />
                                    <br />
                                    <div class="about-content-title">
                                        4. Price
                                    </div>
                                    <table>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top"></td>
                                            <td>The price of the Goods and/or Services shall be the price stated in HaWooo’s website at the time which the Buyer makes its offer purchase to HaWooo. The price excludes the cost of packaging and delivery charges, any applicable goods and services tax, value added tax or similar tax which the Buyer shall be liable to pay to HaWooo in addition to the price.
                                            </td>
                                        </tr>

                                    </table>
                                    <br />
                                    <br />
                                    <div class="about-content-title">
                                        5. Terms of Payment
                                    </div>
                                    <table>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top"></td>
                                            <td>The Buyer shall be entitled to make payment for the Goods pursuant to PayPal in HaWooo’s website. 
                                            </td>
                                        </tr>

                                    </table>
                                    <br />
                                    <br />
                                    <div class="about-content-title">
                                        6. Delivery/Performance
                                    </div>
                                    <table>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">6.1</td>
                                            <td>Delivery of the Goods shall be made to the address specified by the Buyer in its order.
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">6.2</td>
                                            <td>HaWooo has the right at any time to sub-contract all or any of its obligations for the sale/delivery of the Goods to any other party as it may from time to time decide without giving notice of the same to the Buyer.
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">6.3</td>
                                            <td>Any dates quoted for delivery of the Goods are approximate only. The time for delivery/performance shall not be of the essence, and HaWooo shall not be liable for any delay in delivery or performance howsoever caused.
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">6.4</td>
                                            <td>If the Buyer fails to take delivery of the Goods (otherwise than by reason of any cause beyond the Buyer's reasonable control or by reason of HaWooo 's fault) then without prejudice to any other right or remedy available to HaWooo HaWooo may:
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">6.5</td>
                                            <td>sell the Goods at the best price readily obtainable and (after deducting all reasonable storage and selling expenses) account to the Buyer for the excess over the price under the Contract provided the price has been paid in cleared funds in full or charge the Buyer for any shortfall below the price under the Contract; or terminate the Contract and claim damages.
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                    <br />
                                    <div class="about-content-title">
                                        7. Risk and property of the Goods
                                    </div>
                                    <table>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">7.1</td>
                                            <td>Risk of damage to or loss of the Goods shall pass to the Buyer at the time of delivery or if the Buyer wrongfully fails to take delivery of the Goods, the time when HaWooo has tendered delivery of the Goods.
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">7.2</td>
                                            <td>Notwithstanding delivery and the passing of risk in the Goods or any other provision of these Conditions the property in the Goods shall not pass to the Buyer until HaWooo has received in cash or cleared funds payment in full of the price of the Goods and all other goods agreed to be sold by HaWooo to the Buyer for which payment is then due.
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">7.3</td>
                                            <td>Until such time as the property in the Goods passes to the Buyer, the Buyer shall hold the Goods as HaWooo 's fiduciary agent and shall keep the Goods separate from those of the Buyer.
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">7.4</td>
                                            <td>The Buyer agrees with HaWooo that the Buyer shall immediately notify HaWooo of any matter from time to time affecting HaWooo’s title to the Goods and the Buyer shall provide HaWooo with any in-formation relating to the Goods as HaWooo may require from time to time.
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">7.5</td>
                                            <td>Until such time as the property in the Goods passes to the Buyer (and provided the Goods are still in existence and have not been resold) HaWooo shall be entitled at any time to demand the Buyer to deliver up the Goods to HaWooo and in the event of non-compliance HaWooo reserves it’s right to take legal action against the Buyer for the delivery up the Goods and also reserves its right to seek damages and all other costs including but not limited to legal fees against the Buyer.
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">7.6</td>
                                            <td>The Buyer shall not be entitled to pledge or in any way charge by way of security for any indebtedness any of the Goods which remain the property of HaWooo but if the Buyer does so all moneys owing by the Buyer to HaWooo shall (without prejudice to any other right or remedy of HaWooo) forthwith become due and payable.
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">7.7</td>
                                            <td>If the provisions in this Condition 7 are not effective according to the law of the country in which the Goods are located, the legal concept closest in nature to retention of title in that country shall be deemed to apply mutatis mutandis to give effect to the underlying intent expressed in this condition, and the Buyer shall take all steps necessary to give effect to the same.
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">7.8</td>
                                            <td>The Buyer shall indemnify HaWooo against all loss damages costs expenses and legal fees incurred by the Buyer in connection with the assertion and enforcement of HaWooo's rights under this condition.
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                    <br />
                                    <div class="about-content-title">
                                        8. Warranties and Remedies
                                    </div>
                                    <table>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">8.1</td>
                                            <td>Subject as expressly provided in these Conditions all other warranties conditions or terms, including those implied by statute or common law, are excluded to the fullest extent permitted by law.
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">8.2</td>
                                            <td>Subject to this Condition 8, HaWooo warrants that the Goods will correspond with their specification at the time of delivery, and agrees to remedy any non-conformity therein for a period of 12 months commencing from the date on which the Goods are delivered or deemed to be delivered ("Warranty Period"). Where the Buyer is dealing as a consumer (within the meaning of the Sale of Goods Act and the Consumer Protection Act), HaWooo further gives to the Buyer such implied warranties as cannot be excluded by law.
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">8.2.1</td>
                                            <td>HaWooo’s above warranty concerning the Goods is given subject to the following conditions:
                                            (a) No condition is made or to be implied nor is any warranty given or to be implied as to the life or wear of the Goods supplied or that they will be suitable for any particular purpose or use under any specific conditions, notwithstanding that such purpose or conditions may be known or made known to HaWooo.
(b) Any description given of the Goods is given by way of identification only and the use of such description shall not constitute a sale by description.
(c) HaWooo binds itself only to deliver Goods in accordance with the general description under which they were sold, whether or not any special or particular description shall have been given or shall be implied by law. Any such special or particular description shall be taken only as the expression of HaWooo's opinion in that behalf. HaWooo does not give any warranty as to the quality state condition or fitness of the Goods.
(d) HaWooo shall be under no liability for the following measures and actions taken by the Buyer or third parties and the consequences thereof: improper remedy of defects, alteration of the Goods without the prior agreement of HaWooo, addition and insertion of parts, in particular of spare parts which do not come from HaWooo.
(e) HaWooo shall be under no liability in respect of any defect arising from unsuitable or improper use, defective installation or commissioning by the Buyer or third parties, fair wear and tear, willful damage, negligence, abnormal working conditions, defective or negligent handling, improper maintenance, excessive load, unsuitable operating materials and replacement materials, poor work, unsuitable foundation, chemical, electro-technical/electronic or electric influences, failure to follow HaWooo's instructions (whether oral or in writing) misuse or alteration or repair of the Goods without HaWooo's approval.
(f) HaWooo is not liable for any loss damage or liability of any kind suffered by any third party directly or indirectly caused by repairs or remedial work carried out without HaWooo’s prior written approval and the Buyer shall indemnify HaWooo against each loss liability and cost arising out of such claims.
(g) HaWooo shall be under no liability under the above warranty (or any other warranty condition or guarantee) if the total price for the Goods has not been paid in cleared funds by the due date for payment.
(h) HaWooo shall be under no liability whatsoever in respect of any defect in the Goods arising after the expiry of the Warranty Period.

                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">8.2.2</td>
                                            <td>Any claim by the Buyer which is based on any defect in the quality or condition of the Goods or their failure to correspond with specification shall be notified to HaWooo within seven days from the date of receipt of the Goods or (where the defect or failure was not apparent on reasonable inspection) within a reasonable time after discovery of the defect or failure. During use, the Goods shall be monitored constantly with regard to safety and defects. If there are even slight reservations concerning the suitability for use or the slightest reservations concerning safety, the Goods must not be used. HaWooo shall be given written notification immediately, specifying the reservations or the defect. However in no event shall the Buyer be entitled to reject the Goods on the basis of any defect or failure, except where the failure is such that the Goods delivered are of a fundamentally different nature than those which HaWooo had contracted to deliver.
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">8.2.3</td>
                                            <td>If the Buyer does not give due notification to HaWooo in accordance with the Condition 8.2.2, HaWooo shall have no liability for any defect or failure or for any consequences resulting therefrom. Where any valid claim in respect of any of the Goods which is based on any defect in the quality or condition of the Goods or their failure to meet a specification is notified to HaWooo in accordance with Condition 8.2.2, the non-conforming Goods (or part thereof) will be repaired or replaced free of charge as originally ordered. Where the Goods have not been repaired or replaced within a reasonable time, despite a written warning from the Buyer, the Buyer shall be entitled to a reduction of the price in proportion to the reduced value of the Goods, provided that under no circumstance shall such reduction exceed 15% of the price of the affected Goods. In lieu of repair or replacement, HaWooo may, at its sole discretion, grant such a reduction to the Buyer. Upon a repair, replacement or price reduction being made as aforesaid, the Buyer shall have no further claim against HaWooo.
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">8.4</td>
                                            <td>When HaWooo has provided replacement Goods or given the Buyer a refund; the non-conforming Goods or parts thereof shall become HaWooo’s property.
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                    <br />
                                    <div class="about-content-title">
                                        9. Force Majeure
                                    </div>
                                    <table>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">9.1</td>
                                            <td>HaWooo shall not be liable to the Buyer or be deemed to be in breach of the Contract by reason of any delay in performing or any failure to perform any of HaWooo's obligations if the delay or failure was due to any cause beyond HaWooo's reasonable control. Without prejudice to the generality of the foregoing the following shall be regarded as causes beyond HaWooo's reasonable control:
                                            9.1.1 Act of God, explosion, flood, tempest, fire or accident;<br />
                                                9.1.2 war or threat of war, sabotage, insurrection, civil disturbance or requisition;<br />
                                                9.1.3 acts of restrictions, regulations, bye-laws, prohibitions or measures of any kind on the part of any governmental parliamentary or local authority;<br />
                                                9.1.4 import or export regulations or embargoes;<br />
                                                9.1.5 interruption of traffic, strikes, lockouts, other industrial actions or trade disputes (whether involving employees of HaWooo or of a third party);<br />
                                                9.1.6 interruption of production or operation, difficulties in obtaining raw materials labor fuel parts or machinery;<br />
                                                9.1.7 power failure or breakdown in machinery.<br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">9.2</td>
                                            <td>Upon the happening of any one of the events set out in Condition 9.1 HaWooo may at its option:<br />
                                                9.2.1 fully or partially suspend delivery/performance while such event or circumstances continue;<br />
                                                9.2.2 terminate any Contract so affected with immediate effect by written notice to the Buyer and HaWooo shall not be liable for any loss or damage suffered by the Buyer as a result thereof.

                                            </td>
                                        </tr>

                                    </table>
                                    <br />
                                    <br />
                                    <div class="about-content-title">
                                        10. Insolvency of Buyer
                                    </div>
                                    <table>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">10.1</td>
                                            <td>This condition applies if:<br />
                                                10.1.1 the Buyer makes any voluntary arrangement with its creditors or becomes subject to an administration order or (being an individual or firm) becomes bankrupt or (being a company) goes into liquidation (otherwise than for the purposes of amalgamation or reconstruction); or
10.1.2 an encumbrancer takes possession or a receiver is appointed of any of the property or assets of the Buyer; or
10.1.3 the Buyer ceases - or threatens to cease - to carry on business; or
10.1.4 Lazada reasonably apprehends that any of the events mentioned above is about to occur in relation to the Buyer and notifies the Buyer accordingly.

                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">10.2</td>
                                            <td>If this condition applies then without prejudice to any other right or remedy available to HaWooo, HaWooo shall be entitled to cancel the Contract or suspend any further delivery/performance under the Contract without any liability to the Buyer and if Goods have been delivered but not paid for the price shall become immediately due and payable notwithstanding any previous agreement or arrangement to the contrary.
                                            </td>
                                        </tr>

                                    </table>
                                    <br />
                                    <br />
                                    <div class="about-content-title">
                                        11. Notices
                                    </div>
                                    <table>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top"></td>
                                            <td>Any notice required or permitted to be given by either party to the other under these Conditions shall be in writing addressed, if to HaWooo, to its registered office or principal place of business and if to the Buyer, to the address stipulated in the relevant offer to purchase.
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                    <br />
                                    <div class="about-content-title">
                                        12. Liability
                                    </div>
                                    <table>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">12.1</td>
                                            <td>HaWooo shall accept liability to the Buyer for death or injury resulting from its own or that of its employees' negligence. Save as aforesaid, HaWooo’s liability under or in connection with the Contract shall be subject to the limitations set out in this Condition 12.
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">12.2</td>
                                            <td>HaWooo shall be under no liability whatsoever where this arises from a reason beyond its reasonable control as provided in Condition 9 or from an act or default of the Buyer.
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">12.3</td>
                                            <td>In no event shall HaWooo be liable for loss of profit or goodwill, loss of production or revenue or any type of special indirect or consequential loss whatsoever (including loss or damage suffered by the Buyer as a result of an action brought by a third party) even if such loss were reasonably foreseeable or HaWooo had been advised of the possibility of the Buyer incurring the same.
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">12.4</td>
                                            <td>Where time of performance has been agreed by HaWooo becomes the essence of the Contract by means of notice by the Buyer to HaWooo, as provided for in Clause 6.4, and HaWooo fails to comply with its obligations in due time, so that the Buyer becomes entitled to compensation in accordance with Condition 6.4, HaWooo’s liability shall be limited to an amount of ½% for each full week of delay, in total to a maximum cumulative amount of 5%, of the value of the delayed Goods.
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">12.5</td>
                                            <td>The remedies set out in Condition 8 are the Buyer’s sole and exclusive remedies for non-conformity of or defects in the Goods or Services and HaWooo’s liability for the same shall be limited in the manner specified in Condition 8.
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">12.6</td>
                                            <td>Without prejudice to the sub-limits of liability applicable under this Condition 12 or elsewhere in these Conditions, HaWooo’s maximum and cumulative total liability (including any liability for acts and omissions of its employees agents and sub-contractors) in respect of any and all claims for defective performance, breach of contract, compensation, indemnity, tort, misrepresentation, negligence at law or equity and any other damages or losses which may arise in connection with its performance or non-performance under the Contract, shall not exceed the total Contract price.
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">12.7</td>
                                            <td>If a number of events give rise substantially to the same loss they shall be regarded as giving rise to only one claim under these Conditions.
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">12.8</td>
                                            <td>No action shall be brought by HaWooo later than 12 months after the date it became aware of the circumstances giving rise to a claim or the date when it ought reasonably to have become aware, and in any event, no later than 12 months after the end of the Warranty Period.
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                    <br />
                                    <div class="about-content-title">
                                        13. Termination
                                    </div>
                                    <table>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">13.1</td>
                                            <td>On or at any time after the occurrence of any of the events in condition 13.2 HaWooo may stop any Goods in transit, suspend further deliveries to the Buyer and exercise its rights under Condition 7 and/or terminate the Contract with the Buyer with immediate effect by written notice to the Buyer.
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">13.2</td>
                                            <td>The events are:<br />
                                                13.2.1 the Buyer being in breach of an obligation under the Contract;<br />
                                                13.2.2 the Buyer passing a resolution for its winding up or a court of competent jurisdiction making an order for the Buyer’s winding up or dissolution;<br />
                                                13.2.3 the making of an administration order in relation to the Buyer or the appointment of a receiver over or an encumbrancer taking possession of or selling any of the Buyer’s assets;<br />
                                                13.4. the Buyer making an arrangement or composition with its creditors generally or applying to a Court of competent jurisdiction for protection from its creditors.<br />

                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                    <br />
                                    <div class="about-content-title">
                                        14. General
                                    </div>
                                    <table>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">14.1</td>
                                            <td>Unless the context otherwise requires, any term or expression which is defined in or given a particular meaning by the provisions of Incoterms shall have the same meaning in these Conditions but if there is any conflict between the provisions of Incoterms and these Conditions, the latter shall prevail.
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">14.2</td>
                                            <td>No waiver by HaWooo of any breach of the Contract by the Buyer shall be considered as a waiver of any subsequent breach of the same or any other provision.
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">14.3</td>
                                            <td>If any provision of these Conditions is held by any competent authority to be invalid or unenforceable in whole or in part the validity of the other provisions of these Conditions and the remainder of the provision in question shall not be affected thereby.
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">14.4</td>
                                            <td>No person who is not a party to this Contract (including any employee officer agent representative or sub-contractor of either party) shall have any right under the Contracts (Rights of Third Parties) Act to enforce any terms of this Contract which expressly or by implication confers a benefit on that person without the express prior agreement in writing of the parties, which the agreement must refer to Condition 3.2.
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">14.5</td>
                                            <td>The Contract shall be governed by the laws of Malaysia and the Buyer agrees to submit to the non-exclusive jurisdiction of the Courts in Malaysia, as provided for in Clause 14.7.
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">14.6</td>
                                            <td>Except as provided for in Clause 14.7, any dispute, controversy or claim arising out of or relating to this contract, or the breach, termination or invalidity thereof shall be settled by arbitration in accordance with the Rules for Arbitration of the Kuala Lumpur Regional Centre for Arbitration (KLR-CA). The arbitral tribunal shall consist of a sole arbitrator, to be appointed by the Chairman of the KLRCA. The place of arbitration shall be Kuala Lumpur. Any award by the arbitration tribunal shall be final and binding upon the parties.
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">14.7</td>
                                            <td>Notwithstanding Clause 14.6, HaWooo shall be entitled to commence court legal proceedings for the purposes of protecting its intellectual property rights and confidential information by means of injunctive or other equitable relief.
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">14.8</td>
                                            <td>The United Nations Convention on Contracts for the International Sale of Goods shall not apply to any Contract for the sale of Goods.
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 30px; vertical-align: top">14.9</td>
                                            <td>HaWooo reserves their right to these terms and conditions of sale at any time.
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                    <br />
                                </div>

                            </div>


                            <div class="am-tab-panel">
                            </div>

                        </div>
                    </div>


                </div>
            </div>
        </div>
    </div>
</asp:Content>

