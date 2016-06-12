CREATE VIEW `View_Precompte` AS
    SELECT 
        idEmploye AS Employee
    FROM
        Employe 
    UNION SELECT 
        Label AS EtatCivil
    FROM
        EtatCivil
            INNER JOIN
        Employe
    WHERE
        EtatCivil.idEtatCivil = Employe.EtatCivil 
    UNION SELECT 
        Label AS SituationConjoint
    FROM
        SituationConjoint
            INNER JOIN
        Employee
    WHERE
        SituationConjoint.idSituationConjoint = Employe.SituationConjoint 
    UNION SELECT 
        COUNT(idEnfants) AS EnfantsCharge
    FROM
        Enfants
            INNER JOIN
        Employee ON Enfants.Employe = Employe.idEmploye 
    UNION SELECT 
        COUNT(idEnfants) AS HandicapesCharge
    FROM
        Enfants
            INNER JOIN
        Employee ON Enfants.Employe = Employe.idEmploye
            INNER JOIN
        Handicap ON Enfants.idEnfants = Handicap.Enfant