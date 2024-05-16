
public with sharing class PolyEncoder {
        private final static Integer PRECISION_CONST = 5;
        public static String compress(List<LatLng> points) {
                Integer oldLng = 0;
                Integer oldLat = 0;
                Integer index = 0;
                Integer len = points.size();
                Integer[] encoded = new List<Integer>();

                Integer precision = (Integer) Math.pow(10, PRECISION_CONST);

                while (index < len) {
                        //  Round to N decimal places
                        Integer lat = (Integer) Math.round(points[index].lat * precision);
                        Integer lng = (Integer) Math.round(points[index].lng * precision);
                        index++;
                        //  Encode the differences between the points
                        encodeNumber((lat - oldLat), encoded);
                        encodeNumber((lng - oldLng), encoded);
                        oldLat = lat;
                        oldLng = lng;
                }

                return  String.fromCharArray(encoded);
        }

        private static void encodeNumber(Integer num, Integer[] encoded) {
                num = num << 1;
                if (num < 0) {
                        num = ~(num);
                }
                while (num >= 32) {
                        encoded.add((32 | (num & 31)) + 63);
                        num >>= 5;
                }
                encoded.add(num + 63);
        }
}
