package com.qveo.qveoweb.utils;

import java.util.Calendar;
import java.util.Date;

public class DateUtils {

    public static boolean isDateGreaterThanToday(Date fecha) {
        return getMillisWithoutTimeFromDate(fecha) > getMillisWithoutTimeFromDate(new Date());
    }

    public static long getMillisWithoutTimeFromDate(Date fecha) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(fecha);
        cal.set(Calendar.HOUR_OF_DAY, 0);
        cal.set(Calendar.MINUTE, 0);
        cal.set(Calendar.SECOND, 0);
        cal.set(Calendar.MILLISECOND, 0);
        return cal.getTimeInMillis();
    }
}
