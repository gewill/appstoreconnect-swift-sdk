// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AlternativeDistributionPackageVariants {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/alternativeDistributionPackageVariants/{id}`
		public let path: String

		public func get(fieldsAlternativeDistributionPackageVariants: [FieldsAlternativeDistributionPackageVariants]? = nil) -> Request<AppStoreConnect_Swift_SDK.AlternativeDistributionPackageVariantResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(fieldsAlternativeDistributionPackageVariants), id: "alternativeDistributionPackageVariants-get_instance")
		}

		private func makeGetQuery(_ fieldsAlternativeDistributionPackageVariants: [FieldsAlternativeDistributionPackageVariants]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsAlternativeDistributionPackageVariants, forKey: "fields[alternativeDistributionPackageVariants]", explode: false)
			return encoder.items
		}

		public enum FieldsAlternativeDistributionPackageVariants: String, Codable, CaseIterable {
			case alternativeDistributionKeyBlob
			case url
			case urlExpirationDate
		}
	}
}
