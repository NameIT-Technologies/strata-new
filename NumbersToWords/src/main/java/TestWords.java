import pl.allegro.finance.tradukisto.MoneyConverters;

import java.math.BigDecimal;

public class TestWords {

    public static void main(String[] args)
    {
        MoneyConverters converter = MoneyConverters.ENGLISH_BANKING_MONEY_VALUE;
        System.out.println(converter.asWords(new BigDecimal("12345")).split("£")[0]);
    }

}
