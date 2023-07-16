<div>
    <form method="POST">
        <label for="Lastname">Nom</label>
        <input type="text" id="Lastname" name="Lastname" placeholder="Dupont" value="<?= @$_POST['lastname'] ?>" class="<?= isset($formErrors['lastname']) ? 'inputError' : '' ?>">
        <label for="firtname">Prénom</label>
        <input type="text" id="firtname" name="firtname" placeholder="Marine" value="<?= @$_POST['firtname'] ?>" class="<?= isset($formErrors['firtname']) ? 'inputError' : '' ?>">
        <label for="mail">Mail</label>
        <input type="email" id="mail" name="mail" placeholder="dupont@marine.com" value="<?= @$_POST['mail'] ?>" class="<?= isset($formErrors['mail']) ? 'inputError' : '' ?>">
        <label for="password">Mot de passe</label>
        <input type="text" id="password" name="password">
        <label for="password">Confirmation du mot de passe</label>
        <input type="text" id="password" name="password">
        <input type="submit">
    </form>
</div>
