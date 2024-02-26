// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var gameCenterLeaderboardEntrySubmissions: GameCenterLeaderboardEntrySubmissions {
		GameCenterLeaderboardEntrySubmissions(path: path + "/gameCenterLeaderboardEntrySubmissions")
	}

	public struct GameCenterLeaderboardEntrySubmissions {
		/// Path: `/v1/gameCenterLeaderboardEntrySubmissions`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.GameCenterLeaderboardEntrySubmissionCreateRequest) -> Request<AppStoreConnect_Swift_SDK.GameCenterLeaderboardEntrySubmissionResponse> {
			Request(path: path, method: "POST", body: body, id: "gameCenterLeaderboardEntrySubmissions-create_instance")
		}
	}
}