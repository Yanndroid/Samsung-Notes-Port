.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ENGLISH_DATE_KEYWORD_PATTERN:Ljava/util/regex/Pattern;

.field public static final ENGLISH_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

.field public static final ENGLISH_ONLY_DATE_PATTERN:Ljava/util/regex/Pattern;

.field public static final ENGLISH_TIME_DATE_PATTERN:Ljava/util/regex/Pattern;

.field public static final ENGLISH_TIME_KEYWORD_PATTERN:Ljava/util/regex/Pattern;

.field public static KOREAN_DATE_KEYWORD_PATTERN:Ljava/util/regex/Pattern;

.field public static final KOREAN_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

.field public static final KOREAN_ONLY_DATE_PATTERN:Ljava/util/regex/Pattern;

.field public static final KOREAN_ONLY_TIME_PATTERN:Ljava/util/regex/Pattern;

.field public static final KOREAN_TIME_DATE_PATTERN:Ljava/util/regex/Pattern;

.field public static KOREAN_TIME_KEYWORD_PATTERN:Ljava/util/regex/Pattern;

.field public static final STANDARD_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

.field public static final STANDARD_ONLY_DATE_PATTERN:Ljava/util/regex/Pattern;

.field public static final STANDARD_ONLY_TIME_PATTERN:Ljava/util/regex/Pattern;

.field public static final STANDARD_TIME_DATE_PATTERN:Ljava/util/regex/Pattern;

.field public static WESTERN_DATE_KEYWORD_PATTERN:Ljava/util/regex/Pattern;

.field public static WESTERN_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

.field public static WESTERN_ONLY_DATE_PATTERN:Ljava/util/regex/Pattern;

.field public static WESTERN_TIME_DATE_PATTERN:Ljava/util/regex/Pattern;

.field public static WESTERN_TIME_KEYWORD_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "(((18|19|20|21)\\d{2}(\\/|\\-|\\.)([1][0-2]|[1-9]|[0][1-9])(\\/|\\-|\\.)([1-2][0-9]|[3][0-1]|[1-9]|[0][1-9]))|(([1][0-2]|[1-9]|[0][1-9])(\\/|\\-|\\.)([1-2][0-9]|[3][0-1]|[1-9]|[0][1-9])(\\/|\\-|\\.)(18|19|20|21)\\d{2})|(([1-2][0-9]|[3][0-1]|[1-9]|[0][1-9])(\\/|\\-|\\.)([1][0-2]|[1-9]|[0][1-9])(\\/|\\-|\\.)(18|19|20|21)\\d{2}))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->STANDARD_ONLY_DATE_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "(((([1][3-9])|([2][0-4]))[\\:]([0-5][0-9]|[1-9]))|(([0-1][0-9]|[1-9])[ ]?[aApP][mM])|(([0-1][0-9]|[1-9])[\\:]([0-5][0-9]|[1-9])([ ]?[aApP][mM])?))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->STANDARD_ONLY_TIME_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "(((18|19|20|21)\\d{2}(\\/|\\-|\\.)([1][0-2]|[1-9]|[0][1-9])(\\/|\\-|\\.)([1-2][0-9]|[3][0-1]|[1-9]|[0][1-9])[ \\,][ ]?(((([1][3-9])|([2][0-4]))[\\:]([0-5][0-9]|[1-9]))|(([0-1][0-9]|[1-9])[ ]?[aApP][mM])|(([0-1][0-9]|[1-9])[\\:]([0-5][0-9]|[1-9])([ ]?[aApP][mM])?)))|(([1][0-2]|[1-9]|[0][1-9])(\\/|\\-|\\.)([1-2][0-9]|[3][0-1]|[1-9]|[0][1-9])(\\/|\\-|\\.)(18|19|20|21)\\d{2}[ \\,][ ]?(((([1][3-9])|([2][0-4]))[\\:]([0-5][0-9]|[1-9]))|(([0-1][0-9]|[1-9])[ ]?[aApP][mM])|(([0-1][0-9]|[1-9])[\\:]([0-5][0-9]|[1-9])([ ]?[aApP][mM])?)))|(([1-2][0-9]|[3][0-1]|[1-9]|[0][1-9])(\\/|\\-|\\.)([1][0-2]|[1-9]|[0][1-9])(\\/|\\-|\\.)(18|19|20|21)\\d{2}[ \\,][ ]?(((([1][3-9])|([2][0-4]))[\\:]([0-5][0-9]|[1-9]))|(([0-1][0-9]|[1-9])[ ]?[aApP][mM])|(([0-1][0-9]|[1-9])[\\:]([0-5][0-9]|[1-9])([ ]?[aApP][mM])?))))"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->STANDARD_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "(((((([1][3-9])|([2][0-4]))[\\:]([0-5][0-9]|[1-9]))|(([0-1][0-9]|[1-9])[ ]?[aApP][mM])|(([0-1][0-9]|[1-9])[\\:]([0-5][0-9]|[1-9])([ ]?[aApP][mM])?))[ \\,][ ]?(18|19|20|21)\\d{2}(\\/|\\-|\\.)([1][0-2]|[1-9]|[0][1-9])(\\/|\\-|\\.)([1-2][0-9]|[3][0-1]|[1-9]|[0][1-9]))|((((([1][3-9])|([2][0-4]))[\\:]([0-5][0-9]|[1-9]))|(([0-1][0-9]|[1-9])[ ]?[aApP][mM])|(([0-1][0-9]|[1-9])[\\:]([0-5][0-9]|[1-9])([ ]?[aApP][mM])?))[ \\,][ ]?([1][0-2]|[1-9]|[0][1-9])(\\/|\\-|\\.)([1-2][0-9]|[3][0-1]|[1-9]|[0][1-9])(\\/|\\-|\\.)(18|19|20|21)\\d{2})|((((([1][3-9])|([2][0-4]))[\\:]([0-5][0-9]|[1-9]))|(([0-1][0-9]|[1-9])[ ]?[aApP][mM])|(([0-1][0-9]|[1-9])[\\:]([0-5][0-9]|[1-9])([ ]?[aApP][mM])?))[ \\,][ ]?([1-2][0-9]|[3][0-1]|[1-9]|[0][1-9])(\\/|\\-|\\.)([1][0-2]|[1-9]|[0][1-9])(\\/|\\-|\\.)(18|19|20|21)\\d{2}))"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->STANDARD_TIME_DATE_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "(((((J(anuary|uly)|Ma(rch|y)|August|(Octo|Decem)ber)|((J(an|ul)|Ma(r|y)|Aug|Oct|Dec)[\\.\\,]?)) (0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|[2]([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|3(0(th)?|1(st)?))|((April|June|(Sept|Nov)ember)|((Apr|Jun|Sep|Nov)[\\.\\,]?)) (0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|[2]([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|30(th)?)|(February|Feb[\\.\\,]?) (0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|2([1](st)?|[2](nd)?|[3](rd)?|[4-80](th)?))|(February|Feb[\\.\\,]?)29(th)? ((0[48]|[2468][048]|[13579][26])00|[0-9]{2}(0[48]|[2468][048]|[13579][26])))|((0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|[2]([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|3(0(th)?|1(st)?)) ((J(anuary|uly)|Ma(rch|y)|August|(Octo|Decem)ber)|((J(an|ul)|Ma(r|y)|Aug|Oct|Dec)[\\.\\,]?))|(0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|[2]([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|30(th)?) ((April|June|(Sept|Nov)ember)|((Apr|Jun|Sep|Nov)[\\.\\,]?))|(0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|2([1](st)?|[2](nd)?|[3](rd)?|[4-80](th)?)) (February|Feb[\\.\\,]?)|29(th)? (February|Feb[\\.\\,]?) ((0[48]|[2468][048]|[13579][26])00|[0-9]{2}(0[48]|[2468][048]|[13579][26])))) (18|19|20|21)\\d{2})"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->ENGLISH_ONLY_DATE_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "(((((J(anuary|uly)|Ma(rch|y)|August|(Octo|Decem)ber)|((J(an|ul)|Ma(r|y)|Aug|Oct|Dec)[\\.\\,]?)) (0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|[2]([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|3(0(th)?|1(st)?))|((April|June|(Sept|Nov)ember)|((Apr|Jun|Sep|Nov)[\\.\\,]?)) (0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|[2]([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|30(th)?)|(February|Feb[\\.\\,]?) (0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|2([1](st)?|[2](nd)?|[3](rd)?|[4-80](th)?))|(February|Feb[\\.\\,]?)29(th)? ((0[48]|[2468][048]|[13579][26])00|[0-9]{2}(0[48]|[2468][048]|[13579][26])))|((0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|[2]([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|3(0(th)?|1(st)?)) ((J(anuary|uly)|Ma(rch|y)|August|(Octo|Decem)ber)|((J(an|ul)|Ma(r|y)|Aug|Oct|Dec)[\\.\\,]?))|(0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|[2]([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|30(th)?) ((April|June|(Sept|Nov)ember)|((Apr|Jun|Sep|Nov)[\\.\\,]?))|(0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|2([1](st)?|[2](nd)?|[3](rd)?|[4-80](th)?)) (February|Feb[\\.\\,]?)|29(th)? (February|Feb[\\.\\,]?) ((0[48]|[2468][048]|[13579][26])00|[0-9]{2}(0[48]|[2468][048]|[13579][26])))) (18|19|20|21)\\d{2}[ \\,][ ]?(((([1][3-9])|([2][0-4]))[\\:]([0-5][0-9]|[1-9]))|(([0-1][0-9]|[1-9])[ ]?[aApP][mM])|(([0-1][0-9]|[1-9])[\\:]([0-5][0-9]|[1-9])([ ]?[aApP][mM])?)))"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->ENGLISH_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "((((([1][3-9])|([2][0-4]))[\\:]([0-5][0-9]|[1-9]))|(([0-1][0-9]|[1-9])[ ]?[aApP][mM])|(([0-1][0-9]|[1-9])[\\:]([0-5][0-9]|[1-9])([ ]?[aApP][mM])?))[ \\,][ ]?((((J(anuary|uly)|Ma(rch|y)|August|(Octo|Decem)ber)|((J(an|ul)|Ma(r|y)|Aug|Oct|Dec)[\\.\\,]?)) (0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|[2]([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|3(0(th)?|1(st)?))|((April|June|(Sept|Nov)ember)|((Apr|Jun|Sep|Nov)[\\.\\,]?)) (0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|[2]([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|30(th)?)|(February|Feb[\\.\\,]?) (0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|2([1](st)?|[2](nd)?|[3](rd)?|[4-80](th)?))|(February|Feb[\\.\\,]?)29(th)? ((0[48]|[2468][048]|[13579][26])00|[0-9]{2}(0[48]|[2468][048]|[13579][26])))|((0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|[2]([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|3(0(th)?|1(st)?)) ((J(anuary|uly)|Ma(rch|y)|August|(Octo|Decem)ber)|((J(an|ul)|Ma(r|y)|Aug|Oct|Dec)[\\.\\,]?))|(0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|[2]([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|30(th)?) ((April|June|(Sept|Nov)ember)|((Apr|Jun|Sep|Nov)[\\.\\,]?))|(0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|2([1](st)?|[2](nd)?|[3](rd)?|[4-80](th)?)) (February|Feb[\\.\\,]?)|29(th)? (February|Feb[\\.\\,]?) ((0[48]|[2468][048]|[13579][26])00|[0-9]{2}(0[48]|[2468][048]|[13579][26])))) (18|19|20|21)\\d{2})"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->ENGLISH_TIME_DATE_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "(([tT](onight|oday|omorrow))([ \\,][ ]?(((([1][3-9])|([2][0-4]))[\\:]([0-5][0-9]|[1-9]))|(([0-1][0-9]|[1-9])[ ]?[aApP][mM])|(([0-1][0-9]|[1-9])[\\:]([0-5][0-9]|[1-9])([ ]?[aApP][mM])?)))?)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->ENGLISH_DATE_KEYWORD_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "((([sS](unday|aterday))|([mM]onday)|([tT](uesday|hursday))|([wW]ednesday)|([fF]riday))[ \\,][ ]?((((([1][3-9])|([2][0-4]))[\\:]([0-5][0-9]|[1-9]))|(([0-1][0-9]|[1-9])[ ]?[aApP][mM])|(([0-1][0-9]|[1-9])[\\:]([0-5][0-9]|[1-9])([ ]?[aApP][mM])?))|((([mM]orning) ([0][6-9]|[1][0-1]|[6-9])(\\:)([0-5][0-9]|[1-9]))|(([aA]fternoon) ([0][1-5]|[1][2]|[1-5])(\\:)([0-5][0-9]|[1-9]))|(([eE]vening) ([0][6-9]|[1][0]|[6-9])(\\:)([0-5][0-9]|[1-9]))|(([nN]ight) ([0][8-9]|[1][0-2]|[8-9])(\\:)([0-5][0-9]|[1-9])))))"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->ENGLISH_TIME_KEYWORD_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "((18|19|20|21)\\d{2}\ub144 ([1][0-2]|[1-9]|[0][1-9])\uc6d4 ([1-2][0-9]|[3][0-1]|[1-9]|[0][1-9])\uc77c)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->KOREAN_ONLY_DATE_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "((18|19|20|21)\\d{2}\ub144 ([1][0-2]|[1-9]|[0][1-9])\uc6d4 ([1-2][0-9]|[3][0-1]|[1-9]|[0][1-9])\uc77c[ \\,][ ]?(((([0-1][0-9]|[1-9]|([2][0-4]))\uc2dc)[ ]?(([0-5][0-9]|[1-9])\ubd84)?)|(((([1][3-9])|([2][0-4]))[\\:]([0-5][0-9]|[1-9]))|(([0-1][0-9]|[1-9])[ ]?[aApP][mM])|(([0-1][0-9]|[1-9])[\\:]([0-5][0-9]|[1-9])([ ]?[aApP][mM])?))))"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->KOREAN_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "((((([0-1][0-9]|[1-9]|([2][0-4]))\uc2dc)[ ]?(([0-5][0-9]|[1-9])\ubd84)?)|(((([1][3-9])|([2][0-4]))[\\:]([0-5][0-9]|[1-9]))|(([0-1][0-9]|[1-9])[ ]?[aApP][mM])|(([0-1][0-9]|[1-9])[\\:]([0-5][0-9]|[1-9])([ ]?[aApP][mM])?)))[ \\,][ ]?(18|19|20|21)\\d{2}\ub144 ([1][0-2]|[1-9]|[0][1-9])\uc6d4 ([1-2][0-9]|[3][0-1]|[1-9]|[0][1-9])\uc77c)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->KOREAN_TIME_DATE_PATTERN:Ljava/util/regex/Pattern;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateFormats;->KOREAN_DAY_KEYWORD_FORMAT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[ \\,][ ]?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")|(("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateFormats;->KOREAN_DAY_KEYWORD_FORMAT:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateFormats;->KOREAN_TIME_KEYWORD_FORMAT:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")|("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateFormats;->KOREAN_DAY_KEYWORD_FORMAT:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "((([0-1][0-9]|[1-9]|([2][0-4]))\uc2dc)[ ]?(([0-5][0-9]|[1-9])\ubd84)?)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "))"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->KOREAN_TIME_KEYWORD_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "(((([0-1][0-9]|[1-9]|([2][0-4]))\uc2dc)[ ]?(([0-5][0-9]|[1-9])\ubd84)?))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->KOREAN_ONLY_TIME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
