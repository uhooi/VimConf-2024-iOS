package import Foundation

package struct LightningTalk: Identifiable, Sendable {
    package let id: UUID
    package let title: String
    package let abstract: String
    package let language: Language
    package let speaker: LightningTalkSpeaker
}
