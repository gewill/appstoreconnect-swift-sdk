// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AlternativeDistributionPackageVersions {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/alternativeDistributionPackageVersions/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AlternativeDistributionPackageVersionResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "alternativeDistributionPackageVersions-get_instance")
		}

		public struct GetParameters {
			public var fieldsAlternativeDistributionPackageVersions: [FieldsAlternativeDistributionPackageVersions]?
			public var include: [Include]?
			public var fieldsAlternativeDistributionPackageVariants: [FieldsAlternativeDistributionPackageVariants]?
			public var fieldsAlternativeDistributionPackageDeltas: [FieldsAlternativeDistributionPackageDeltas]?
			public var limitDeltas: Int?
			public var limitVariants: Int?

			public enum FieldsAlternativeDistributionPackageVersions: String, Codable, CaseIterable {
				case alternativeDistributionPackage
				case deltas
				case state
				case url
				case urlExpirationDate
				case variants
				case version
			}

			public enum Include: String, Codable, CaseIterable {
				case alternativeDistributionPackage
				case deltas
				case variants
			}

			public enum FieldsAlternativeDistributionPackageVariants: String, Codable, CaseIterable {
				case alternativeDistributionKeyBlob
				case url
				case urlExpirationDate
			}

			public enum FieldsAlternativeDistributionPackageDeltas: String, Codable, CaseIterable {
				case alternativeDistributionKeyBlob
				case url
				case urlExpirationDate
			}

			public init(fieldsAlternativeDistributionPackageVersions: [FieldsAlternativeDistributionPackageVersions]? = nil, include: [Include]? = nil, fieldsAlternativeDistributionPackageVariants: [FieldsAlternativeDistributionPackageVariants]? = nil, fieldsAlternativeDistributionPackageDeltas: [FieldsAlternativeDistributionPackageDeltas]? = nil, limitDeltas: Int? = nil, limitVariants: Int? = nil) {
				self.fieldsAlternativeDistributionPackageVersions = fieldsAlternativeDistributionPackageVersions
				self.include = include
				self.fieldsAlternativeDistributionPackageVariants = fieldsAlternativeDistributionPackageVariants
				self.fieldsAlternativeDistributionPackageDeltas = fieldsAlternativeDistributionPackageDeltas
				self.limitDeltas = limitDeltas
				self.limitVariants = limitVariants
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsAlternativeDistributionPackageVersions, forKey: "fields[alternativeDistributionPackageVersions]")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsAlternativeDistributionPackageVariants, forKey: "fields[alternativeDistributionPackageVariants]")
				encoder.encode(fieldsAlternativeDistributionPackageDeltas, forKey: "fields[alternativeDistributionPackageDeltas]")
				encoder.encode(limitDeltas, forKey: "limit[deltas]")
				encoder.encode(limitVariants, forKey: "limit[variants]")
				return encoder.items
			}
		}
	}
}
