<h2>{msgContact}</h2>
            <p>{msgContactOwnText}</p>
            <p><strong>{msgContactEMail}</strong></p>

            <div id="loader"></div>
            <div id="contacts"></div>

            <form id="formValues" action="#" method="post">
                <input type="hidden" name="lang" id="lang" value="{lang}" />
            
                <p>
                    <label for="name">{msgNewContentName}</label>
                    <input type="text" name="name" id="name" value="{defaultContentName}" required autofocus>
                </p>

                <p>
                    <label for="email">{msgNewContentMail}</label>
                    <input type="email" name="email" id="email" value="{defaultContentMail}" required>
                </p>

                <p>
                    <label for="question">{msgMessage}</label>
                    <textarea cols="37" rows="5" name="question" id="question" required></textarea>
                </p>

                <p>
                    {captchaFieldset}
                </p>

                <p>
                    <input class="submit" type="submit" id="submitcontact" value="{msgS2FButton}" />
                </p>
            </form>
            <script type="text/javascript" >
            $(function() {
                $('#submitcontact').click(function() {
                    saveFormValues('sendcontact', 'contact');
                });
                $('form#formValues').submit(function() { return false; });
            });
            </script>
            
            <!-- DO NOT REMOVE THE COPYRIGHT NOTICE -->
            <div id="copyright">
                &copy; 2001 - 2013 by <a href="http://www.phpmyfaq.de/">phpMyFAQ Team</a> under the <a href="http://www.mozilla.org/MPL/2.0">Mozilla Public License</a>.
                All rights reserved.
                Template/CSS by <a href="http://www.rinne.info">Thorsten Rinne</a>.
                phpMyFAQ logo by <a href="http://www.lieven.be/">Lieven Op De Beeck</a>.
                Template sponsored by <a href="http://www.zakk.com/">ZAKK Marketing</a>
            </div>
            <!-- DO NOT REMOVE THE COPYRIGHT NOTICE -->
