import Foundation
import FirebaseAuth
class FirebaseManager {
    static let shared = FirebaseManager()
    func updateDisplayName(user: User) async {
        let profileUser = user.createProfileChangeRequest()
        profileUser.displayName = user.displayName
        try? await profileUser.commitChanges()
    }
    func login(email: String, pass: String) async -> Result<AuthDataResult?, Error> {
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: pass)
            return .success(result)
        } catch(let err) {
            return .failure(err)
        }
        
    }
    func resigter(email: String, pass: String) async -> Result<AuthDataResult?, Error> {
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: pass)
            return .success(result)
        } catch(let err) {
            return .failure(err)
        }
    }
}
