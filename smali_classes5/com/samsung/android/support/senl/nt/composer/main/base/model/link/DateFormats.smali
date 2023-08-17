.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateFormats;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static DATE_FORMAT:Ljava/lang/String; = "yyyy/MM/dd"

.field public static final DATE_SEPERATOR:Ljava/lang/String; = "(\\/|\\-|\\.)"

.field public static DAY_FORMAT:Ljava/lang/String; = "EEE"

.field public static final ENGLISH_DATE_KEYWORD_FORMAT:Ljava/lang/String; = "([tT](onight|oday|omorrow))"

.field public static final ENGLISH_DAY_KEYWORD_FORMAT:Ljava/lang/String; = "(([sS](unday|aterday))|([mM]onday)|([tT](uesday|hursday))|([wW]ednesday)|([fF]riday))"

.field public static final ENGLISH_DAY_MONTH_FORMAT:Ljava/lang/String; = "((0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|[2]([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|3(0(th)?|1(st)?)) ((J(anuary|uly)|Ma(rch|y)|August|(Octo|Decem)ber)|((J(an|ul)|Ma(r|y)|Aug|Oct|Dec)[\\.\\,]?))|(0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|[2]([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|30(th)?) ((April|June|(Sept|Nov)ember)|((Apr|Jun|Sep|Nov)[\\.\\,]?))|(0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|2([1](st)?|[2](nd)?|[3](rd)?|[4-80](th)?)) (February|Feb[\\.\\,]?)|29(th)? (February|Feb[\\.\\,]?) ((0[48]|[2468][048]|[13579][26])00|[0-9]{2}(0[48]|[2468][048]|[13579][26])))"

.field public static final ENGLISH_MONTH_DAY_FORMAT:Ljava/lang/String; = "(((J(anuary|uly)|Ma(rch|y)|August|(Octo|Decem)ber)|((J(an|ul)|Ma(r|y)|Aug|Oct|Dec)[\\.\\,]?)) (0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|[2]([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|3(0(th)?|1(st)?))|((April|June|(Sept|Nov)ember)|((Apr|Jun|Sep|Nov)[\\.\\,]?)) (0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|[2]([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|30(th)?)|(February|Feb[\\.\\,]?) (0[1-9]|([1](st)?|[2](nd)?|[3](rd)?|[4-90](th)?)|[1][0-9](th)?|2([1](st)?|[2](nd)?|[3](rd)?|[4-80](th)?))|(February|Feb[\\.\\,]?)29(th)? ((0[48]|[2468][048]|[13579][26])00|[0-9]{2}(0[48]|[2468][048]|[13579][26])))"

.field public static final ENGLISH_TIME_KEYWORD_FORMAT:Ljava/lang/String; = "((([mM]orning) ([0][6-9]|[1][0-1]|[6-9])(\\:)([0-5][0-9]|[1-9]))|(([aA]fternoon) ([0][1-5]|[1][2]|[1-5])(\\:)([0-5][0-9]|[1-9]))|(([eE]vening) ([0][6-9]|[1][0]|[6-9])(\\:)([0-5][0-9]|[1-9]))|(([nN]ight) ([0][8-9]|[1][0-2]|[8-9])(\\:)([0-5][0-9]|[1-9])))"

.field public static final KOREAN_DATE_FORMAT:Ljava/lang/String; = "(18|19|20|21)\\d{2}\ub144 ([1][0-2]|[1-9]|[0][1-9])\uc6d4 ([1-2][0-9]|[3][0-1]|[1-9]|[0][1-9])\uc77c"

.field public static KOREAN_DATE_KEYWORD_FORMAT:Ljava/lang/String; = null

.field public static KOREAN_DAY_KEYWORD_FORMAT:Ljava/lang/String; = null

.field public static final KOREAN_TIME_FORMAT:Ljava/lang/String; = "((([0-1][0-9]|[1-9]|([2][0-4]))\uc2dc)[ ]?(([0-5][0-9]|[1-9])\ubd84)?)"

.field public static KOREAN_TIME_KEYWORD_FORMAT:Ljava/lang/String; = null

.field public static final SEPERATOR_FORMAT:Ljava/lang/String; = "[ \\,][ ]?"

.field public static final STANDARD_DAY_FORMAT:Ljava/lang/String; = "([1-2][0-9]|[3][0-1]|[1-9]|[0][1-9])"

.field public static final STANDARD_MONTH_FORMAT:Ljava/lang/String; = "([1][0-2]|[1-9]|[0][1-9])"

.field public static final STANDARD_TIME_FORMAT:Ljava/lang/String; = "(((([1][3-9])|([2][0-4]))[\\:]([0-5][0-9]|[1-9]))|(([0-1][0-9]|[1-9])[ ]?[aApP][mM])|(([0-1][0-9]|[1-9])[\\:]([0-5][0-9]|[1-9])([ ]?[aApP][mM])?))"

.field public static final STANDARD_YEAR_FORMAT:Ljava/lang/String; = "(18|19|20|21)\\d{2}"

.field public static WESTERN_DATE_KEYWORD_FORMAT:Ljava/lang/String;

.field public static WESTERN_DAY_KEYWORD_FORMAT:Ljava/lang/String;

.field public static WESTERN_DAY_MONTH_FORMAT:Ljava/lang/String;

.field public static WESTERN_MONTH_DAY_FORMAT:Ljava/lang/String;

.field public static WESTERN_TIME_KEYWORD_FORMAT:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
