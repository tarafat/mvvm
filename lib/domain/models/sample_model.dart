// This file defines the domain model for SampleModel.
// Domain models represent core business entities and logic.

/// Represents a sample entity in the domain layer.
class SampleModel {
  /// Unique identifier for the sample.
  final String id;

  /// Name of the sample.
  final String name;

  /// Constructs a SampleModel with required id and name.
  SampleModel({required this.id, required this.name});
}
