func home() {
print("Bonjour Voyageur ! Vous devrez choisir trois des quatre classes suivantes afin de vous créer trois personnages !"
    + "\n1. Knight"
    + "\n2. Wizard"
    + "\n3. Giant")

if let choice = readLine() {
    switch choice {
        case "1":
            CharacterType.knight
        print("Très bon choix! Donnez lui un nom.")
        _ = Character(name: "Arthur", life: 1000, canHeal: true, canAttack: true, characterType: .knight)
        
        case "2":
            CharacterType.wizard
        print("Très bon choix! Donnez lui un nom.")
        _ = Character(name: "Gandalf", life: 800, canHeal: true, canAttack: true, characterType: .wizard)
        
        case "3":
            CharacterType.giant
        print("Très bon choix! Donnez lui un nom.")
        _ = Character(name: "Gullivert", life: 2000, canHeal: false, canAttack: true, characterType: .giant)
        
        default:
        print("HOP HOP HOP, on revient par ici")
        
        }
    }
}

enum CharacterType {
case knight
case wizard
case giant
}

class Character {
    var name : String
    var life : Int
    var canHeal : Bool
    var canAttack : Bool
    var characterType : CharacterType
    
    init(name: String, life: Int, canHeal: Bool, canAttack: Bool, characterType: CharacterType) {
        self.name = name
        self.life = life
        self.canHeal = canHeal
        self.canAttack = canAttack
        self.characterType = characterType
    }
}
