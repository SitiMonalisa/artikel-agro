const articles = require('./artikel.json');

function getArticlesById(id){
    const article = articles.artikel.find(article => article.id === id);
    if (article) {
        return {
            success: true,
            message: "Data artikel berhasil ditemukan",
            data: article
        };
    } else {
        return {
            success: false,
            message: "Data artikel tidak ditemukan"
        };
    }
}

function getAllArticles() {
    return{
        succes: true,
        message: "Data artikel berhasil diperoleh",
        artikel: articles.artikel
    };
}

module.exports = {
    getArticlesById,
    getAllArticles
};