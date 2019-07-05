package com.dag.useragents;

import java.io.StringReader;

/**
 * A small utility class.
 * TODO: use resource bundle
 */
public class Utility {

    public static boolean debug = true;

    public static DeviceSummary getDeviceSummary(String userAgentString) {
        Yylex scanner = new Yylex(new StringReader(userAgentString));

        LexParse parser = new LexParse(scanner);

        DeviceSummary result = null;

        try {
            result = (DeviceSummary) parser.parse().value;
        } catch (Exception e) {
            if (debug) e.printStackTrace();
        } catch (Error e) {
            if (debug) e.printStackTrace();
        }


        return result;
    }

}

