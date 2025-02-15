// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AlternativeDistributionPackageVersions.WithID {
	public var deltas: Deltas {
		Deltas(path: path + "/deltas")
	}

	public struct Deltas {
		/// Path: `/v1/alternativeDistributionPackageVersions/{id}/deltas`
		public let path: String

		public func get(fieldsAlternativeDistributionPackageDeltas: [FieldsAlternativeDistributionPackageDeltas]? = nil, limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.AlternativeDistributionPackageDeltasResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(fieldsAlternativeDistributionPackageDeltas, limit), id: "alternativeDistributionPackageVersions-deltas-get_to_many_related")
		}

		private func makeGetQuery(_ fieldsAlternativeDistributionPackageDeltas: [FieldsAlternativeDistributionPackageDeltas]?, _ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsAlternativeDistributionPackageDeltas, forKey: "fields[alternativeDistributionPackageDeltas]", explode: false)
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}

		public enum FieldsAlternativeDistributionPackageDeltas: String, Codable, CaseIterable {
			case alternativeDistributionKeyBlob
			case url
			case urlExpirationDate
		}
	}
}
