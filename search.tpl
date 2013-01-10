<section>
            <header>
                <h2>{msgAdvancedSearch}</h2>
            </header>
    
            {printResult}
            
            <aside class="well" id="searchBox">
            <form  class="form-search" action="{writeSendAdress}" method="get">
                <div class="input-append">
                    <input id="searchfield" type="search" name="search" size="50" value="{searchString}"
                           autofocus="autofocus" class="input-medium search-query">
                    <button type="submit" class="btn btn-primary">{msgSearch}</button>
                    <input type="hidden" name="action" value="search" />
                </div>
                <p>
                    <label>{searchOnAllLanguages}</label>
                    <input type="checkbox"{checkedAllLanguages} name="langs" value="all" />
                </p>

                <p>
                    <label>{selectCategories}</label>
                    <select name="searchcategory" size="1">
                    <option value="%" selected="selected">{allCategories}</option>
                    {printCategoryOptions}
                    </select>
                </p>
                
                <div id="mostpopularsearches">
                    <p><strong>{msgMostPopularSearches}</strong></p>
                    {printMostPopularSearches}
                </div>
                
                <p>{openSearchLink}</p>
            </form>
            </aside>
        </section>