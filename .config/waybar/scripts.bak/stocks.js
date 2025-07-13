const url = 'https://nse-market.p.rapidapi.com/index_metrics?index=NIFTY%2050';
const options = {
	method: 'GET',
	headers: {
		'X-RapidAPI-Host': 'nse-market.p.rapidapi.com',
		'X-RapidAPI-Key': 'ad8ed94f70mshff72323f1186195p185498jsn4fe4fb8cac84'
	}
};

try {
	const response = fetch(url, options);
	const result = await response.text();
	console.log(result);
} catch (error) {
	console.error(error);
}