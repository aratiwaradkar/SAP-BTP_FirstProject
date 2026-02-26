sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"bookstore/project1/test/integration/pages/BooksList",
	"bookstore/project1/test/integration/pages/BooksObjectPage",
	"bookstore/project1/test/integration/pages/Books_textsObjectPage"
], function (JourneyRunner, BooksList, BooksObjectPage, Books_textsObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('bookstore/project1') + '/test/flpSandbox.html#bookstoreproject1-tile',
        pages: {
			onTheBooksList: BooksList,
			onTheBooksObjectPage: BooksObjectPage,
			onTheBooks_textsObjectPage: Books_textsObjectPage
        },
        async: true
    });

    return runner;
});

