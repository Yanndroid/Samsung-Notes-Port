.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/Patterns;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ATOMEXPRESSIONSTRICTPATTERNSTRING:Ljava/lang/String; = "(?:[(-])*([0-9]*\\.[0-9]+|([0]|[1-9][0-9]*))(?:(?:(?:[)])*[\u00d7\u00f7*/+-]?(?:(?:[-])?(?:[(])*)*)([0-9]*\\.[0-9]+|([0]|[1-9][0-9]*)))+(?:[)])*(?:=)?"

.field private static final BETWEENNUMBERS:Ljava/lang/String; = "(?:(?:[)])*[\u00d7\u00f7*/+-]?(?:(?:[-])?(?:[(])*)*)"

.field public static final CALCULATOR_FORMULA:Ljava/util/regex/Pattern;

.field private static final CHINESE_CHAR:Ljava/lang/String; = "\u4e00-\u9fa5"

.field public static final DATE_AND_TIME_TYPE1:Ljava/util/regex/Pattern;

.field public static final DATE_AND_TIME_TYPE2:Ljava/util/regex/Pattern;

.field public static final DATE_AND_TIME_TYPE3:Ljava/util/regex/Pattern;

.field private static final DATE_BASIC:Ljava/lang/String; = "(((19|20)?(([02468][048])|([13579][26]))[\\/|\\-|\\.])?0?2[\\/|\\-|\\.]29)|(((((20)?[0-9][0-9])|((19)?[0-9][0-9]))[\\/|\\-|\\.])?(((0?[13578]|10|12)[\\/|\\-|\\.]31)|((0?[1,3-9]|1[0-2])[\\/|\\-|\\.](29|30))|((0?[1-9]|1[0-2])[\\/|\\-|\\.](1[0-9]|2[0-8]|0?[1-9]))))"

.field private static final DATE_TRANSFORM1:Ljava/lang/String; = "(0?2[\\/|\\-|\\.]29[\\/|\\-|\\.](19|20)(([02468][048])|([13579][26])))|((((0?[13578]|10|12)[\\/|\\-|\\.]31)|((0?[1,3-9]|1[0-2])[\\/|\\-|\\.](29|30))|((0?[1-9]|1[0-2])[\\/|\\-|\\.](1[0-9]|2[0-8]|0?[1-9])))[\\/|\\-|\\.]((20[0-9][0-9])|(19[0-9][0-9])))"

.field private static final DATE_TRANSFORM2:Ljava/lang/String; = "(29[\\/|\\-|\\.]0?2[\\/|\\-|\\.](19|20)(([02468][048])|([13579][26])))|(((31[\\/|\\-|\\.](0?[13578]|10|12))|((29|30)[\\/|\\-|\\.](0?[1,3-9]|1[0-2]))|((1[0-9]|2[0-8]|0?[1-9])[\\/|\\-|\\.](0?[1-9]|1[0-2])))[\\/|\\-|\\.]((20[0-9][0-9])|(19[0-9][0-9])))"

.field public static final DOMAIN_NAME:Ljava/util/regex/Pattern;

.field public static final EMAIL_ADDRESS:Ljava/util/regex/Pattern;

.field private static final EXPRPREFIX:Ljava/lang/String; = "(?:[(-])*"

.field private static final FORBIDDEN_CHAR:Ljava/lang/String; = "[\u3000-\u303f\u4e00-\u9fa5\uff00-\uffef]"

.field private static final GENDASH:Ljava/lang/String; = "[-]"

.field private static final GENLPAR:Ljava/lang/String; = "[(]"

.field private static final GENRPAR:Ljava/lang/String; = "[)]"

.field private static final GOOD_GTLD_CHAR:Ljava/lang/String; = "a-zA-Z\u00a0-\u2fff\u3040-\u4dff\u9fa6-\uabff\uf900-\ufdcf\ufdf0-\ufeff"

.field public static final GOOD_IRI_CHAR:Ljava/lang/String; = "a-zA-Z0-9\u00a0-\uabff\uf900-\ufdcf\ufdf0-\uffef"

.field private static final GOOD_IRI_HOST_CHAR:Ljava/lang/String; = "a-zA-Z0-9\u00a0-\u2fff\u3040-\u4dff\u9fa6-\ud7ff\uf900-\ufdcf\ufdf0-\ufeff"

.field private static final GTLD:Ljava/lang/String; = "[a-zA-Z\u00a0-\u2fff\u3040-\u4dff\u9fa6-\uabff\uf900-\ufdcf\ufdf0-\ufeff]{2,63}"

.field private static final HALF_FULL_WIDTH_CHAR:Ljava/lang/String; = "\uff00-\uffef"

.field private static final HOST_NAME:Ljava/lang/String; = "([a-zA-Z0-9\u00a0-\u2fff\u3040-\u4dff\u9fa6-\ud7ff\uf900-\ufdcf\ufdf0-\ufeff]([a-zA-Z0-9\u00a0-\u2fff\u3040-\u4dff\u9fa6-\ud7ff\uf900-\ufdcf\ufdf0-\ufeff\\-]{0,61}[a-zA-Z0-9\u00a0-\u2fff\u3040-\u4dff\u9fa6-\ud7ff\uf900-\ufdcf\ufdf0-\ufeff]){0,1}\\.)+[a-zA-Z\u00a0-\u2fff\u3040-\u4dff\u9fa6-\uabff\uf900-\ufdcf\ufdf0-\ufeff]{2,63}"

.field public static final IP_ADDRESS:Ljava/util/regex/Pattern;

.field private static final IRI:Ljava/lang/String; = "[a-zA-Z0-9\u00a0-\u2fff\u3040-\u4dff\u9fa6-\ud7ff\uf900-\ufdcf\ufdf0-\ufeff]([a-zA-Z0-9\u00a0-\u2fff\u3040-\u4dff\u9fa6-\ud7ff\uf900-\ufdcf\ufdf0-\ufeff\\-]{0,61}[a-zA-Z0-9\u00a0-\u2fff\u3040-\u4dff\u9fa6-\ud7ff\uf900-\ufdcf\ufdf0-\ufeff]){0,1}"

.field private static final NUMBER:Ljava/lang/String; = "([0-9]*\\.[0-9]+|([0]|[1-9][0-9]*))"

.field private static final OP:Ljava/lang/String; = "[\u00d7\u00f7*/+-]"

.field public static final PHONE:Ljava/util/regex/Pattern;

.field private static final SYMBOLS_PUNCTUATION_CHAR:Ljava/lang/String; = "\u3000-\u303f"

.field private static final TIME_BASIC:Ljava/lang/String; = "((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?[0-6][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?(am|pm|AM|PM))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?([0-6][0-9]))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9])"

.field public static final WEB_URL:Ljava/util/regex/Pattern;

.field public static final WEB_URL_EX:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-string v0, "((25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9]))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/Patterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(([a-zA-Z0-9\u00a0-\u2fff\u3040-\u4dff\u9fa6-\ud7ff\uf900-\ufdcf\ufdf0-\ufeff]([a-zA-Z0-9\u00a0-\u2fff\u3040-\u4dff\u9fa6-\ud7ff\uf900-\ufdcf\ufdf0-\ufeff\\-]{0,61}[a-zA-Z0-9\u00a0-\u2fff\u3040-\u4dff\u9fa6-\ud7ff\uf900-\ufdcf\ufdf0-\ufeff]){0,1}\\.)+[a-zA-Z\u00a0-\u2fff\u3040-\u4dff\u9fa6-\uabff\uf900-\ufdcf\ufdf0-\ufeff]{2,63}|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/Patterns;->DOMAIN_NAME:Ljava/util/regex/Pattern;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "((?:(http|https|Http|Https|rtsp|Rtsp):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)?(?:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")(?:\\:\\d{1,5})?)(\\/(?:(?:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "a-zA-Z0-9\u00a0-\uabff\uf900-\ufdcf\ufdf0-\uffef"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\\;\\/\\?\\:\\@\\&\\=\\#\\~\\-\\.\\+\\!\\*\\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))*)?(?:\\b|$)"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    invoke-static {v1, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "((?:(http|https|Http|Https|rtsp|Rtsp|ftp):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)?(?:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\\;\\/\\?\\:\\@\\&\\=\\#\\~\\-\\.\\+\\!\\*\\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))*)?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/Patterns;->WEB_URL_EX:Ljava/util/regex/Pattern;

    const-string v0, "[a-zA-Z0-9\\+\\.\\_\\%\\-\\+]{1,256}\\@[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}(\\.[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25})+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    const-string v0, "(\\+[0-9]+[\\- \\.]*)?(\\([0-9]+\\)[\\- \\.]*)?([0-9][0-9\\- \\.]+[0-9])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/Patterns;->PHONE:Ljava/util/regex/Pattern;

    const-string v0, "(?:[(-])*([0-9]*\\.[0-9]+|([0]|[1-9][0-9]*))(?:(?:(?:[)])*[\u00d7\u00f7*/+-]?(?:(?:[-])?(?:[(])*)*)([0-9]*\\.[0-9]+|([0]|[1-9][0-9]*)))+(?:[)])*(?:=)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/Patterns;->CALCULATOR_FORMULA:Ljava/util/regex/Pattern;

    const-string v0, "(((((19|20)?(([02468][048])|([13579][26]))[\\/|\\-|\\.])?0?2[\\/|\\-|\\.]29)|(((((20)?[0-9][0-9])|((19)?[0-9][0-9]))[\\/|\\-|\\.])?(((0?[13578]|10|12)[\\/|\\-|\\.]31)|((0?[1,3-9]|1[0-2])[\\/|\\-|\\.](29|30))|((0?[1-9]|1[0-2])[\\/|\\-|\\.](1[0-9]|2[0-8]|0?[1-9])))))([ ]|[ ]?[,][ ]?)(((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?[0-6][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?(am|pm|AM|PM))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?([0-6][0-9]))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9]))([ ]?[\\-|\\~][ ]?)((((19|20)?(([02468][048])|([13579][26]))[\\/|\\-|\\.])?0?2[\\/|\\-|\\.]29)|(((((20)?[0-9][0-9])|((19)?[0-9][0-9]))[\\/|\\-|\\.])?(((0?[13578]|10|12)[\\/|\\-|\\.]31)|((0?[1,3-9]|1[0-2])[\\/|\\-|\\.](29|30))|((0?[1-9]|1[0-2])[\\/|\\-|\\.](1[0-9]|2[0-8]|0?[1-9])))))([ ]|[ ]?[,][ ]?)(((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?[0-6][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?(am|pm|AM|PM))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?([0-6][0-9]))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9])))?(((((19|20)?(([02468][048])|([13579][26]))[\\/|\\-|\\.])?0?2[\\/|\\-|\\.]29)|(((((20)?[0-9][0-9])|((19)?[0-9][0-9]))[\\/|\\-|\\.])?(((0?[13578]|10|12)[\\/|\\-|\\.]31)|((0?[1,3-9]|1[0-2])[\\/|\\-|\\.](29|30))|((0?[1-9]|1[0-2])[\\/|\\-|\\.](1[0-9]|2[0-8]|0?[1-9])))))([ ]|[ ]?[,][ ]?)(((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?[0-6][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?(am|pm|AM|PM))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?([0-6][0-9]))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9]))([ ]?[\\-|\\~][ ]?)(((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?[0-6][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?(am|pm|AM|PM))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?([0-6][0-9]))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9])))?((((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?[0-6][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?(am|pm|AM|PM))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?([0-6][0-9]))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9]))([ ]?[\\-|\\~][ ]?)(((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?[0-6][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?(am|pm|AM|PM))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?([0-6][0-9]))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9]))([ ]|[ ]?[,][ ]?)((((19|20)?(([02468][048])|([13579][26]))[\\/|\\-|\\.])?0?2[\\/|\\-|\\.]29)|(((((20)?[0-9][0-9])|((19)?[0-9][0-9]))[\\/|\\-|\\.])?(((0?[13578]|10|12)[\\/|\\-|\\.]31)|((0?[1,3-9]|1[0-2])[\\/|\\-|\\.](29|30))|((0?[1-9]|1[0-2])[\\/|\\-|\\.](1[0-9]|2[0-8]|0?[1-9]))))))?(((((19|20)?(([02468][048])|([13579][26]))[\\/|\\-|\\.])?0?2[\\/|\\-|\\.]29)|(((((20)?[0-9][0-9])|((19)?[0-9][0-9]))[\\/|\\-|\\.])?(((0?[13578]|10|12)[\\/|\\-|\\.]31)|((0?[1,3-9]|1[0-2])[\\/|\\-|\\.](29|30))|((0?[1-9]|1[0-2])[\\/|\\-|\\.](1[0-9]|2[0-8]|0?[1-9])))))([ ]?[\\-|\\~][ ]?)((((19|20)?(([02468][048])|([13579][26]))[\\/|\\-|\\.])?0?2[\\/|\\-|\\.]29)|(((((20)?[0-9][0-9])|((19)?[0-9][0-9]))[\\/|\\-|\\.])?(((0?[13578]|10|12)[\\/|\\-|\\.]31)|((0?[1,3-9]|1[0-2])[\\/|\\-|\\.](29|30))|((0?[1-9]|1[0-2])[\\/|\\-|\\.](1[0-9]|2[0-8]|0?[1-9]))))))?((((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?[0-6][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?(am|pm|AM|PM))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?([0-6][0-9]))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9]))([ ]?[\\-|\\~][ ]?)(((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?[0-6][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?(am|pm|AM|PM))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?([0-6][0-9]))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9])))?(((((19|20)?(([02468][048])|([13579][26]))[\\/|\\-|\\.])?0?2[\\/|\\-|\\.]29)|(((((20)?[0-9][0-9])|((19)?[0-9][0-9]))[\\/|\\-|\\.])?(((0?[13578]|10|12)[\\/|\\-|\\.]31)|((0?[1,3-9]|1[0-2])[\\/|\\-|\\.](29|30))|((0?[1-9]|1[0-2])[\\/|\\-|\\.](1[0-9]|2[0-8]|0?[1-9])))))([ ]|[ ]?[,][ ]?)(((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?[0-6][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?(am|pm|AM|PM))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?([0-6][0-9]))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9])))?((((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?[0-6][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?(am|pm|AM|PM))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?([0-6][0-9]))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9]))([ ]|[ ]?[,][ ]?)((((19|20)?(([02468][048])|([13579][26]))[\\/|\\-|\\.])?0?2[\\/|\\-|\\.]29)|(((((20)?[0-9][0-9])|((19)?[0-9][0-9]))[\\/|\\-|\\.])?(((0?[13578]|10|12)[\\/|\\-|\\.]31)|((0?[1,3-9]|1[0-2])[\\/|\\-|\\.](29|30))|((0?[1-9]|1[0-2])[\\/|\\-|\\.](1[0-9]|2[0-8]|0?[1-9]))))))?((((19|20)?(([02468][048])|([13579][26]))[\\/|\\-|\\.])?0?2[\\/|\\-|\\.]29)|(((((20)?[0-9][0-9])|((19)?[0-9][0-9]))[\\/|\\-|\\.])?(((0?[13578]|10|12)[\\/|\\-|\\.]31)|((0?[1,3-9]|1[0-2])[\\/|\\-|\\.](29|30))|((0?[1-9]|1[0-2])[\\/|\\-|\\.](1[0-9]|2[0-8]|0?[1-9])))))?(((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?[0-6][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?(am|pm|AM|PM))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?([0-6][0-9]))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9]))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/Patterns;->DATE_AND_TIME_TYPE1:Ljava/util/regex/Pattern;

    const-string v0, "(((0?2[\\/|\\-|\\.]29[\\/|\\-|\\.](19|20)(([02468][048])|([13579][26])))|((((0?[13578]|10|12)[\\/|\\-|\\.]31)|((0?[1,3-9]|1[0-2])[\\/|\\-|\\.](29|30))|((0?[1-9]|1[0-2])[\\/|\\-|\\.](1[0-9]|2[0-8]|0?[1-9])))[\\/|\\-|\\.]((20[0-9][0-9])|(19[0-9][0-9]))))([ ]|[ ]?[,][ ]?)(((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?[0-6][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?(am|pm|AM|PM))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?([0-6][0-9]))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9]))([ ]?[\\-|\\~][ ]?)((0?2[\\/|\\-|\\.]29[\\/|\\-|\\.](19|20)(([02468][048])|([13579][26])))|((((0?[13578]|10|12)[\\/|\\-|\\.]31)|((0?[1,3-9]|1[0-2])[\\/|\\-|\\.](29|30))|((0?[1-9]|1[0-2])[\\/|\\-|\\.](1[0-9]|2[0-8]|0?[1-9])))[\\/|\\-|\\.]((20[0-9][0-9])|(19[0-9][0-9]))))([ ]|[ ]?[,][ ]?)(((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?[0-6][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?(am|pm|AM|PM))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?([0-6][0-9]))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9])))?(((0?2[\\/|\\-|\\.]29[\\/|\\-|\\.](19|20)(([02468][048])|([13579][26])))|((((0?[13578]|10|12)[\\/|\\-|\\.]31)|((0?[1,3-9]|1[0-2])[\\/|\\-|\\.](29|30))|((0?[1-9]|1[0-2])[\\/|\\-|\\.](1[0-9]|2[0-8]|0?[1-9])))[\\/|\\-|\\.]((20[0-9][0-9])|(19[0-9][0-9]))))([ ]|[ ]?[,][ ]?)(((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?[0-6][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?(am|pm|AM|PM))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?([0-6][0-9]))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9]))([ ]?[\\-|\\~][ ]?)(((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?[0-6][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?(am|pm|AM|PM))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?([0-6][0-9]))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9])))?((((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?[0-6][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?(am|pm|AM|PM))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?([0-6][0-9]))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9]))([ ]?[\\-|\\~][ ]?)(((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?[0-6][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?(am|pm|AM|PM))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?([0-6][0-9]))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9]))([ ]|[ ]?[,][ ]?)((0?2[\\/|\\-|\\.]29[\\/|\\-|\\.](19|20)(([02468][048])|([13579][26])))|((((0?[13578]|10|12)[\\/|\\-|\\.]31)|((0?[1,3-9]|1[0-2])[\\/|\\-|\\.](29|30))|((0?[1-9]|1[0-2])[\\/|\\-|\\.](1[0-9]|2[0-8]|0?[1-9])))[\\/|\\-|\\.]((20[0-9][0-9])|(19[0-9][0-9])))))?(((0?2[\\/|\\-|\\.]29[\\/|\\-|\\.](19|20)(([02468][048])|([13579][26])))|((((0?[13578]|10|12)[\\/|\\-|\\.]31)|((0?[1,3-9]|1[0-2])[\\/|\\-|\\.](29|30))|((0?[1-9]|1[0-2])[\\/|\\-|\\.](1[0-9]|2[0-8]|0?[1-9])))[\\/|\\-|\\.]((20[0-9][0-9])|(19[0-9][0-9]))))([ ]?[\\-|\\~][ ]?)((0?2[\\/|\\-|\\.]29[\\/|\\-|\\.](19|20)(([02468][048])|([13579][26])))|((((0?[13578]|10|12)[\\/|\\-|\\.]31)|((0?[1,3-9]|1[0-2])[\\/|\\-|\\.](29|30))|((0?[1-9]|1[0-2])[\\/|\\-|\\.](1[0-9]|2[0-8]|0?[1-9])))[\\/|\\-|\\.]((20[0-9][0-9])|(19[0-9][0-9])))))?((((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?[0-6][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?(am|pm|AM|PM))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?([0-6][0-9]))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9]))([ ]?[\\-|\\~][ ]?)(((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?[0-6][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?(am|pm|AM|PM))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?([0-6][0-9]))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9])))?(((0?2[\\/|\\-|\\.]29[\\/|\\-|\\.](19|20)(([02468][048])|([13579][26])))|((((0?[13578]|10|12)[\\/|\\-|\\.]31)|((0?[1,3-9]|1[0-2])[\\/|\\-|\\.](29|30))|((0?[1-9]|1[0-2])[\\/|\\-|\\.](1[0-9]|2[0-8]|0?[1-9])))[\\/|\\-|\\.]((20[0-9][0-9])|(19[0-9][0-9]))))([ ]|[ ]?[,][ ]?)(((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?[0-6][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?(am|pm|AM|PM))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?([0-6][0-9]))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9])))?((((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?[0-6][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?(am|pm|AM|PM))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?([0-6][0-9]))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9]))([ ]|[ ]?[,][ ]?)((0?2[\\/|\\-|\\.]29[\\/|\\-|\\.](19|20)(([02468][048])|([13579][26])))|((((0?[13578]|10|12)[\\/|\\-|\\.]31)|((0?[1,3-9]|1[0-2])[\\/|\\-|\\.](29|30))|((0?[1-9]|1[0-2])[\\/|\\-|\\.](1[0-9]|2[0-8]|0?[1-9])))[\\/|\\-|\\.]((20[0-9][0-9])|(19[0-9][0-9])))))?((0?2[\\/|\\-|\\.]29[\\/|\\-|\\.](19|20)(([02468][048])|([13579][26])))|((((0?[13578]|10|12)[\\/|\\-|\\.]31)|((0?[1,3-9]|1[0-2])[\\/|\\-|\\.](29|30))|((0?[1-9]|1[0-2])[\\/|\\-|\\.](1[0-9]|2[0-8]|0?[1-9])))[\\/|\\-|\\.]((20[0-9][0-9])|(19[0-9][0-9]))))?(((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?[0-6][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?(am|pm|AM|PM))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?([0-6][0-9]))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9]))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/Patterns;->DATE_AND_TIME_TYPE2:Ljava/util/regex/Pattern;

    const-string v0, "(((29[\\/|\\-|\\.]0?2[\\/|\\-|\\.](19|20)(([02468][048])|([13579][26])))|(((31[\\/|\\-|\\.](0?[13578]|10|12))|((29|30)[\\/|\\-|\\.](0?[1,3-9]|1[0-2]))|((1[0-9]|2[0-8]|0?[1-9])[\\/|\\-|\\.](0?[1-9]|1[0-2])))[\\/|\\-|\\.]((20[0-9][0-9])|(19[0-9][0-9]))))([ ]|[ ]?[,][ ]?)(((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?[0-6][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?(am|pm|AM|PM))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?([0-6][0-9]))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9]))([ ]?[\\-|\\~][ ]?)((29[\\/|\\-|\\.]0?2[\\/|\\-|\\.](19|20)(([02468][048])|([13579][26])))|(((31[\\/|\\-|\\.](0?[13578]|10|12))|((29|30)[\\/|\\-|\\.](0?[1,3-9]|1[0-2]))|((1[0-9]|2[0-8]|0?[1-9])[\\/|\\-|\\.](0?[1-9]|1[0-2])))[\\/|\\-|\\.]((20[0-9][0-9])|(19[0-9][0-9]))))([ ]|[ ]?[,][ ]?)(((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?[0-6][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?(am|pm|AM|PM))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?([0-6][0-9]))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9])))?(((29[\\/|\\-|\\.]0?2[\\/|\\-|\\.](19|20)(([02468][048])|([13579][26])))|(((31[\\/|\\-|\\.](0?[13578]|10|12))|((29|30)[\\/|\\-|\\.](0?[1,3-9]|1[0-2]))|((1[0-9]|2[0-8]|0?[1-9])[\\/|\\-|\\.](0?[1-9]|1[0-2])))[\\/|\\-|\\.]((20[0-9][0-9])|(19[0-9][0-9]))))([ ]|[ ]?[,][ ]?)(((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?[0-6][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?(am|pm|AM|PM))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?([0-6][0-9]))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9]))([ ]?[\\-|\\~][ ]?)(((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?[0-6][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?(am|pm|AM|PM))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?([0-6][0-9]))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9])))?((((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?[0-6][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?(am|pm|AM|PM))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?([0-6][0-9]))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9]))([ ]?[\\-|\\~][ ]?)(((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?[0-6][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?(am|pm|AM|PM))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?([0-6][0-9]))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9]))([ ]|[ ]?[,][ ]?)((29[\\/|\\-|\\.]0?2[\\/|\\-|\\.](19|20)(([02468][048])|([13579][26])))|(((31[\\/|\\-|\\.](0?[13578]|10|12))|((29|30)[\\/|\\-|\\.](0?[1,3-9]|1[0-2]))|((1[0-9]|2[0-8]|0?[1-9])[\\/|\\-|\\.](0?[1-9]|1[0-2])))[\\/|\\-|\\.]((20[0-9][0-9])|(19[0-9][0-9])))))?(((29[\\/|\\-|\\.]0?2[\\/|\\-|\\.](19|20)(([02468][048])|([13579][26])))|(((31[\\/|\\-|\\.](0?[13578]|10|12))|((29|30)[\\/|\\-|\\.](0?[1,3-9]|1[0-2]))|((1[0-9]|2[0-8]|0?[1-9])[\\/|\\-|\\.](0?[1-9]|1[0-2])))[\\/|\\-|\\.]((20[0-9][0-9])|(19[0-9][0-9]))))([ ]?[\\-|\\~][ ]?)((29[\\/|\\-|\\.]0?2[\\/|\\-|\\.](19|20)(([02468][048])|([13579][26])))|(((31[\\/|\\-|\\.](0?[13578]|10|12))|((29|30)[\\/|\\-|\\.](0?[1,3-9]|1[0-2]))|((1[0-9]|2[0-8]|0?[1-9])[\\/|\\-|\\.](0?[1-9]|1[0-2])))[\\/|\\-|\\.]((20[0-9][0-9])|(19[0-9][0-9])))))?((((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?[0-6][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?(am|pm|AM|PM))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?([0-6][0-9]))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9]))([ ]?[\\-|\\~][ ]?)(((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?[0-6][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?(am|pm|AM|PM))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?([0-6][0-9]))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9])))?(((29[\\/|\\-|\\.]0?2[\\/|\\-|\\.](19|20)(([02468][048])|([13579][26])))|(((31[\\/|\\-|\\.](0?[13578]|10|12))|((29|30)[\\/|\\-|\\.](0?[1,3-9]|1[0-2]))|((1[0-9]|2[0-8]|0?[1-9])[\\/|\\-|\\.](0?[1-9]|1[0-2])))[\\/|\\-|\\.]((20[0-9][0-9])|(19[0-9][0-9]))))([ ]|[ ]?[,][ ]?)(((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?[0-6][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?(am|pm|AM|PM))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?([0-6][0-9]))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9])))?((((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?[0-6][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?(am|pm|AM|PM))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?([0-6][0-9]))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9]))([ ]|[ ]?[,][ ]?)((29[\\/|\\-|\\.]0?2[\\/|\\-|\\.](19|20)(([02468][048])|([13579][26])))|(((31[\\/|\\-|\\.](0?[13578]|10|12))|((29|30)[\\/|\\-|\\.](0?[1,3-9]|1[0-2]))|((1[0-9]|2[0-8]|0?[1-9])[\\/|\\-|\\.](0?[1-9]|1[0-2])))[\\/|\\-|\\.]((20[0-9][0-9])|(19[0-9][0-9])))))?((29[\\/|\\-|\\.]0?2[\\/|\\-|\\.](19|20)(([02468][048])|([13579][26])))|(((31[\\/|\\-|\\.](0?[13578]|10|12))|((29|30)[\\/|\\-|\\.](0?[1,3-9]|1[0-2]))|((1[0-9]|2[0-8]|0?[1-9])[\\/|\\-|\\.](0?[1-9]|1[0-2])))[\\/|\\-|\\.]((20[0-9][0-9])|(19[0-9][0-9]))))?(((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?[0-6][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|((0?[1-9]|1[0-2])[[:space:]]?(am|pm|AM|PM))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?\\:[[:space:]]?([0-6][0-9]))|((00|0?[1-9]|1[0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9]))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/Patterns;->DATE_AND_TIME_TYPE3:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final concatGroups(Ljava/util/regex/Matcher;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    const/4 v2, 0x1

    :goto_0
    if-gt v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final digitsAndPlusOnly(Ljava/util/regex/Matcher;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_0

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
