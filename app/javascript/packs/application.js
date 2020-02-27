require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";
import { croque } from '../plugins/croque';
import { initAlgoliaSearch } from '../plugins/algoliasearch'


croque();
initAlgoliaSearch();


// Pour Test - à supprimer
console.log(window.algolia_application_id);
console.log(window.algolia_search_only_api_key);
//
