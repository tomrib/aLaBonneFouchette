<div>
    <form method="POST">
        <label for="Lastname">Nom</label>
        <input type="text" id="Lastname" name="Lastname" placeholder="Dupont" value="<?= @$_POST['lastname'] ?>" class="<?= isset($formErrors['lastname']) ? 'inputError' : '' ?>">
        <label for="firstname">Prénom</label>
        <input type="text" id="firstname" name="firstname" placeholder="Marine" value="<?= @$_POST['firstname'] ?>" class="<?= isset($formErrors['firstname']) ? 'inputError' : '' ?>">
        <label for="mail">Mail</label>
        <input type="email" id="mail" name="mail" placeholder="dupont@marine.com" value="<?= @$_POST['mail'] ?>" class="<?= isset($formErrors['mail']) ? 'inputError' : '' ?>">
        <label for="password">Mot de passe</label>
        <input type="text" id="password" name="password">
        <label for="password">Confirmation du mot de passe</label>
        <input type="text" id="password" name="password">
    </form>
</div>