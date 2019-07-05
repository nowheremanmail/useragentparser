
import com.dag.useragents.MiniScanner172;
import com.dag.useragents.MiniScanner79;
import org.junit.Test;

import java.io.*;

import static junit.framework.TestCase.assertTrue;

public class TestC {

    String convertToBinary(int number) {
        String binaryString = "00000000" + Integer.toBinaryString(number);
        return binaryString.substring(binaryString.length() - 8);
    }

    String convertToBinary(String ip) {
        int i = ip.indexOf('/');
        String _ip = ip;
        int mask = 32;
        if (i > 0) {
            _ip = ip.substring(0, i);
            mask = Integer.parseInt(ip.substring(i + 1));
        }
        String res = "";
        String[] p = _ip.split("\\.");
        for (String pp : p) {
            res += convertToBinary(Integer.parseInt(pp));
        }

        return res.substring(0, mask) + ".............................".substring(0, 32 - mask);
    }

    @Test
    public void test() {

        //
        String res = convertToBinary("4.31.236.64/29");

        assertTrue(res.length() == 32);

    }

    @Test
    public void testAll() throws IOException {
        int n = 79;

        try (BufferedReader st = new BufferedReader(new FileReader("src/test/resources/ips.csv"));
             BufferedWriter wr = new BufferedWriter(new FileWriter("src/main/jflex/test" + n + ".flex"));
            ) {
            String l = null;
            boolean first = true;

            wr.write("package com.dag.useragents;\n" +
                    "\n" +
                    "\n" +
                    "%%\n" +
                    "\n" +
                    "%public\n" +
                    "%integer\n" +
                    "%class MiniScanner" + n+"\n" +
                    "%%\n" +
                    "\n");

            while ((l = st.readLine()) != null) {
                if (!first) {
                    if (l.startsWith(n+".")) {
                        String[] ip = l.split(";");

                        String res = convertToBinary(ip[0]);
                        assertTrue(res.length() == 32);

                        wr.write("" + res + "  { return " + ip[1] + "; }");
                        wr.newLine();
                    }
                }
                first = false;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    @Test
    public void scan() {
        MiniScanner79 scanner = new MiniScanner79(new StringReader(convertToBinary("79.144.76.78")));
        try {
            System.out.println(scanner.yylex());
        } catch (final Exception ioe) {
            ioe.printStackTrace();
        }
    }
}
