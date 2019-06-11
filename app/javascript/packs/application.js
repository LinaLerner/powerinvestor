import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import { manageCheckbox } from "../plugins/checkform";
import { manageSlider } from "../plugins/slider";
import { seeMore } from "../plugins/seeMore";
import { manageSpinner } from "../plugins/spinner";
import { initChart } from "../plugins/chart";

initMapbox();
manageCheckbox();
manageSlider();
manageSpinner();
seeMore();
initChart();


