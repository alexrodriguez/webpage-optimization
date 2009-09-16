
var CCS = {
    Util: {
        isBlank: function(value) {
            return value == "" || /^\s+$/.test(value);
        },

        isInteger: function(value) {
            return value == parseInt(value, 10);
        },

        isDate: function(value) {
            var year, month, day, regex;
            regex = new RegExp("(0[1-9]|1[012])([- /.])(0[1-9]|[12][0-9]|3[01])\\2(19|20)(\\d\\d)");
            if (value.match(regex)) {
                month = parseInt(regex[1], 10);
                day = parseInt(regex[3], 10);
                year = parseInt(regex[4] + regex[5], 10);
                if (day == "31" && (month == 4 || month == 6 || month == 9 || month
                        == 11)) return false;
                else if (day >= 30 && month == 2) return false;
                else if (month == 2 && day == 29 && !(year % 4 == 0 && (year % 100 != 0 || year % 400 == 0))) return false;
                else return true;
            } else return false;
        },

        isArray: function(value) {
            return value && typeof value === 'object' && typeof value.length === 'number' &&
                   typeof value.splice === 'function' && !(value.propertyIsEnumerable('length'));
        }
    }
};
