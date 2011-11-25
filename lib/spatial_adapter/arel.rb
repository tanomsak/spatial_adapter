require 'arel/visitors/to_sql'

module Arel
  module Visitors
    class ToSql < Arel::Visitors::Visitor
      private
      def spatial o; visit(o.as_hex_ewkb) end

      alias :visit_GeoRuby_SimpleFeatures_Point               :spatial
      alias :visit_GeoRuby_SimpleFeatures_LineString          :spatial
      alias :visit_GeoRuby_SimpleFeatures_Polygon             :spatial
      alias :visit_GeoRuby_SimpleFeatures_MultiPoint          :spatial
      alias :visit_GeoRuby_SimpleFeatures_MultiLineString     :spatial
      alias :visit_GeoRuby_SimpleFeatures_MultiPolygon        :spatial
      alias :visit_GeoRuby_SimpleFeatures_GeometryCollection  :spatial
    end

    class Visitor
      private
      def spatial o; visit(o.as_ewkt) end

      alias :visit_GeoRuby_SimpleFeatures_Point               :spatial
      alias :visit_GeoRuby_SimpleFeatures_LineString          :spatial
      alias :visit_GeoRuby_SimpleFeatures_Polygon             :spatial
      alias :visit_GeoRuby_SimpleFeatures_MultiPoint          :spatial
      alias :visit_GeoRuby_SimpleFeatures_MultiLineString     :spatial
      alias :visit_GeoRuby_SimpleFeatures_MultiPolygon        :spatial
      alias :visit_GeoRuby_SimpleFeatures_GeometryCollection  :spatial
    end
  end
end
