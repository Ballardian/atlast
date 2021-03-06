import {$,jQuery} from "jquery";
import "bootstrap";

import { mapInModal } from "./modalMap.js";
mapInModal();

import { tagSelector } from '../packs/tag-selector';
tagSelector();

import { clickWishlistHeart } from './wishlist_heart';
clickWishlistHeart();

import { followChange } from './follow_change';
followChange();

import { showTags } from './show_tags';
showTags();

import { hideTags } from './hide_tags';
hideTags();


import { showMore } from './show_more';
showMore();

import { initPhotoPreview, checkForPhoto } from './photoPreview';
initPhotoPreview();
checkForPhoto();

// import { postSubmitButton } from './submit-form-btn';
// postSubmitButton();
