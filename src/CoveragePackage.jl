module CoveragePackage

abstract type AbstractExtractor end

struct ExtractKeyAsField{S,V} <: AbstractExtractor
	key::S
	item::V
end

Base.hash(e::ExtractKeyAsField, h::UInt) = hash((e.key, e.item), h)
Base.:(==)(e1::ExtractKeyAsField, e2::ExtractKeyAsField) = e1.key == e2.key && e1.item == e2.item

end
