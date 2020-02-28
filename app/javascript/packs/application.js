require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";
import { initAlgoliaSearch } from '../plugins/algoliasearch'


initAlgoliaSearch();
