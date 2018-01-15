<form action='#' method="POST">
    <br>
    <div>
        <label for="titre">Titre de l'article :</label>
        <input type="text" name="titre" id="titre" placeholder="Tapez votre titre d'article">
    </div>
    <br>
    <div>
        <label for="chapo">Chapô de l'article :</label>
        <input type="text" name="chapo" id="chapo" placeholder="Tapez votre chapô">
    </div>
    <br>
    <div>
        <label for="corps">Corps de l'article :</label>
        <textarea name="corps" id="corps" rows="20" cols="60" placeholder="Tapez votre article"></textarea>
    </div>
    <br>
    <div>
        <label for="date">Date de publication :</label>
        <input type="date" name="date" id="date" placeholder="mm">
    </div>
    <br>
    <div>
        <select name="Catégories">
            <option value="actualité">Actualités</option>
            <option value="archive">Archivé</option>
            <option value="tuto">Tutoriel</option>
        </select>
    </div>
    <div>
        <input type="reset" value="Effacer">
        <input type="submit" value="Envoyer !" name="article">
    </div>
</form>
