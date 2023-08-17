.class public Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;
    }
.end annotation


# static fields
.field private static final DOMAIN_EXTNS:Ljava/lang/String; = "(com|in|kr|se|org|net|io|gle|mil|tk|cn|de|uk|nl|icu|ru|ir|au|ua|us|fr|es|ca|it|sg|gov|edu|co|ms|at)"

.field private static GROUP_URL_HTTP:I = 0x0

.field private static GROUP_URL_HTTP_SYMBOLS:I = 0x0

.field private static final HTTP_SYMBOL_VARIATIONS:Ljava/lang/String; = "([.:;1l\\/\\s]{2,5})"

.field private static final HTTP_VARIATIONS:Ljava/lang/String; = "((http|nttp|ntip|htip|htto|httr|htp)(s)?)"

.field private static final PAT_HTTP_SPACE_COMMA:Ljava/util/regex/Pattern;

.field private static final PAT_STRICT_DOMAIN:Ljava/util/regex/Pattern;

.field private static final PAT_URL_BASIC:Ljava/util/regex/Pattern;

.field private static final PAT_URL_COMMA:Ljava/util/regex/Pattern;

.field private static final PAT_URL_COMMA_WO_SPACE:Ljava/util/regex/Pattern;

.field private static final PAT_URL_HTTP_BASIC:Ljava/util/regex/Pattern;

.field private static final PAT_URL_WWW_BASIC:Ljava/util/regex/Pattern;

.field private static final PAT_WEB_PAGE_URL:Ljava/util/regex/Pattern;

.field private static final REGEX_HTTP_SPACE_COMMA:Ljava/lang/String; = "((http|nttp|ntip|htip|htto|httr|htp)(s)?)([.:;1l\\/\\s]{2,5})(www)(\\.|\\s)+((([a-zA-Z0-9-]+)(\\s)*(,)(\\s)*)+)(\\s)*(com|in|kr|se|org|net|io|gle|mil|tk|cn|de|uk|nl|icu|ru|ir|au|ua|us|fr|es|ca|it|sg|gov|edu|co|ms|at)"

.field private static final REGEX_STRICT_DOMAIN:Ljava/lang/String; = "(?<=^|\\s)((([a-zA-Z0-9-]+)\\s*(\\.)\\s*(\\.)?\\s*)+)(\\s)*(com|in|kr|se|org|net|io|gle|mil|tk|cn|de|uk|nl|icu|ru|ir|au|ua|us|fr|es|ca|it|sg|gov|edu|co|ms|at)(?=($|\\s|/))"

.field private static final REGEX_URL_BASIC:Ljava/lang/String; = "((([a-zA-Z0-9-]+)\\s*(\\.)\\s*(\\.)?\\s*){2,})(\\s)*(\\.)?(com|in|kr|se|org|net|io|gle|mil|tk|cn|de|uk|nl|icu|ru|ir|au|ua|us|fr|es|ca|it|sg|gov|edu|co|ms|at)"

.field private static final REGEX_URL_COMMA:Ljava/lang/String; = "(www)(\\s)*(,)(\\s)*([a-zA-Z0-9-.]+)(\\s)*(,)(\\s)*(com|in|kr|se|org|net|io|gle|mil|tk|cn|de|uk|nl|icu|ru|ir|au|ua|us|fr|es|ca|it|sg|gov|edu|co|ms|at)"

.field private static final REGEX_URL_COMMA_WO_SPACE:Ljava/lang/String; = "((www)\\s*(,)\\s*([a-zA-Z0-9-.]+)\\s*([,.])\\s*(com|in|kr|se|org|net|io|gle|mil|tk|cn|de|uk|nl|icu|ru|ir|au|ua|us|fr|es|ca|it|sg|gov|edu|co|ms|at))|((www)\\s*([,.])\\s*([a-zA-Z0-9-._]+)\\s*(,)\\s*(com|in|kr|se|org|net|io|gle|mil|tk|cn|de|uk|nl|icu|ru|ir|au|ua|us|fr|es|ca|it|sg|gov|edu|co|ms|at))"

.field private static final REGEX_URL_HTTP_BASIC:Ljava/lang/String; = "((http|nttp|ntip|htip|htto|httr|htp)(s)?)([.:;1l\\/\\s]{2,5})((([a-zA-Z0-9-]+)\\s*(\\.)\\s*(\\.)?\\s*)+)(\\s)*(\\.)?(com|in|kr|se|org|net|io|gle|mil|tk|cn|de|uk|nl|icu|ru|ir|au|ua|us|fr|es|ca|it|sg|gov|edu|co|ms|at)"

.field private static final REGEX_URL_WWW_BASIC:Ljava/lang/String; = "(www)(\\s)*(.)+(\\s)*((([a-zA-Z0-9-]+)\\s*(\\.)\\s*(\\.)?\\s*)+)(\\s)*(\\.)?(com|in|kr|se|org|net|io|gle|mil|tk|cn|de|uk|nl|icu|ru|ir|au|ua|us|fr|es|ca|it|sg|gov|edu|co|ms|at)"

.field private static final REGEX_WEB_PAGE_URL:Ljava/lang/String; = "(?<!\\/)((\\s*\\/\\s*([a-zA-Z0-9-_]+))+)((\\s*(\\.)\\s*[a-zA-Z]{2,4})|(\\s*(\\?)\\s*)[A-Za-z0-9-_#=+&$%();\\p{InHangul_Syllables}\\p{InCJK_Unified_Ideographs}]+)?"

.field private static final TAG:Ljava/lang/String; = "URLCorrection"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "((http|nttp|ntip|htip|htto|httr|htp)(s)?)([.:;1l\\/\\s]{2,5})(www)(\\.|\\s)+((([a-zA-Z0-9-]+)(\\s)*(,)(\\s)*)+)(\\s)*(com|in|kr|se|org|net|io|gle|mil|tk|cn|de|uk|nl|icu|ru|ir|au|ua|us|fr|es|ca|it|sg|gov|edu|co|ms|at)"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->PAT_HTTP_SPACE_COMMA:Ljava/util/regex/Pattern;

    const-string v0, "((www)\\s*(,)\\s*([a-zA-Z0-9-.]+)\\s*([,.])\\s*(com|in|kr|se|org|net|io|gle|mil|tk|cn|de|uk|nl|icu|ru|ir|au|ua|us|fr|es|ca|it|sg|gov|edu|co|ms|at))|((www)\\s*([,.])\\s*([a-zA-Z0-9-._]+)\\s*(,)\\s*(com|in|kr|se|org|net|io|gle|mil|tk|cn|de|uk|nl|icu|ru|ir|au|ua|us|fr|es|ca|it|sg|gov|edu|co|ms|at))"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->PAT_URL_COMMA_WO_SPACE:Ljava/util/regex/Pattern;

    const-string v0, "(www)(\\s)*(,)(\\s)*([a-zA-Z0-9-.]+)(\\s)*(,)(\\s)*(com|in|kr|se|org|net|io|gle|mil|tk|cn|de|uk|nl|icu|ru|ir|au|ua|us|fr|es|ca|it|sg|gov|edu|co|ms|at)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->PAT_URL_COMMA:Ljava/util/regex/Pattern;

    const-string v0, "((http|nttp|ntip|htip|htto|httr|htp)(s)?)([.:;1l\\/\\s]{2,5})((([a-zA-Z0-9-]+)\\s*(\\.)\\s*(\\.)?\\s*)+)(\\s)*(\\.)?(com|in|kr|se|org|net|io|gle|mil|tk|cn|de|uk|nl|icu|ru|ir|au|ua|us|fr|es|ca|it|sg|gov|edu|co|ms|at)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->PAT_URL_HTTP_BASIC:Ljava/util/regex/Pattern;

    const-string v0, "(www)(\\s)*(.)+(\\s)*((([a-zA-Z0-9-]+)\\s*(\\.)\\s*(\\.)?\\s*)+)(\\s)*(\\.)?(com|in|kr|se|org|net|io|gle|mil|tk|cn|de|uk|nl|icu|ru|ir|au|ua|us|fr|es|ca|it|sg|gov|edu|co|ms|at)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->PAT_URL_WWW_BASIC:Ljava/util/regex/Pattern;

    const-string v0, "((([a-zA-Z0-9-]+)\\s*(\\.)\\s*(\\.)?\\s*){2,})(\\s)*(\\.)?(com|in|kr|se|org|net|io|gle|mil|tk|cn|de|uk|nl|icu|ru|ir|au|ua|us|fr|es|ca|it|sg|gov|edu|co|ms|at)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->PAT_URL_BASIC:Ljava/util/regex/Pattern;

    const-string v0, "(?<=^|\\s)((([a-zA-Z0-9-]+)\\s*(\\.)\\s*(\\.)?\\s*)+)(\\s)*(com|in|kr|se|org|net|io|gle|mil|tk|cn|de|uk|nl|icu|ru|ir|au|ua|us|fr|es|ca|it|sg|gov|edu|co|ms|at)(?=($|\\s|/))"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->PAT_STRICT_DOMAIN:Ljava/util/regex/Pattern;

    const-string v0, "(?<!\\/)((\\s*\\/\\s*([a-zA-Z0-9-_]+))+)((\\s*(\\.)\\s*[a-zA-Z]{2,4})|(\\s*(\\?)\\s*)[A-Za-z0-9-_#=+&$%();\\p{InHangul_Syllables}\\p{InCJK_Unified_Ideographs}]+)?"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->PAT_WEB_PAGE_URL:Ljava/util/regex/Pattern;

    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->GROUP_URL_HTTP:I

    const/4 v0, 0x4

    sput v0, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->GROUP_URL_HTTP_SYMBOLS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(I)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->lambda$correctHttpPrefix$0(I)Z

    move-result p0

    return p0
.end method

.method private static correctHttpPrefix(Lcom/samsung/android/ocr/MOCRResult$Line;ILjava/util/regex/Matcher;)V
    .locals 11

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    array-length v1, v0

    if-lt p1, v1, :cond_1

    return-void

    :cond_1
    aget-object p1, v0, p1

    sget v0, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->GROUP_URL_HTTP:I

    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v1, p1, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    const-string v3, "http"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    const-string v7, " "

    if-nez v4, :cond_4

    const-string v4, "https"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    if-eq v1, v5, :cond_4

    sget-object v8, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p1, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    const-string v10, "s"

    invoke-virtual {v0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v3, v4

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p1, Lcom/samsung/android/ocr/MOCRResult$Word;->charCount:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Http Word Correction :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/ocr/MOCRResult$Line;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget v0, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->GROUP_URL_HTTP_SYMBOLS:I

    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5

    return-void

    :cond_5
    const-string v0, "\\s"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    const-string v2, "://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    if-eq v0, v5, :cond_a

    sget-object v3, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/String;->chars()Ljava/util/stream/IntStream;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/ocr/stride/postocr/entity/a;->a:Lcom/samsung/android/ocr/stride/postocr/entity/a;

    invoke-interface {v3, v4}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/IntStream;->count()J

    move-result-wide v3

    long-to-int v3, v3

    sub-int/2addr v1, v3

    iget-object v3, p1, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    if-nez v2, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    :goto_0
    iput p2, p1, Lcom/samsung/android/ocr/MOCRResult$Word;->charCount:I

    goto :goto_3

    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ocr/MOCRResult$Char;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/ocr/MOCRResult$Char;

    add-int/lit8 v5, v0, 0x2

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/ocr/MOCRResult$Char;

    const/16 v8, 0x3a

    const/16 v9, 0x2f

    iput v8, v2, Lcom/samsung/android/ocr/MOCRResult$Char;->unicode:I

    iput v9, v3, Lcom/samsung/android/ocr/MOCRResult$Char;->unicode:I

    if-ge p2, v4, :cond_7

    new-instance p2, Lcom/samsung/android/ocr/MOCRResult$Char;

    invoke-direct {p2}, Lcom/samsung/android/ocr/MOCRResult$Char;-><init>()V

    iput v9, p2, Lcom/samsung/android/ocr/MOCRResult$Char;->unicode:I

    iget-object v0, v3, Lcom/samsung/android/ocr/MOCRResult$Char;->cRect:[Landroid/graphics/Point;

    invoke-virtual {v0}, [Landroid/graphics/Point;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Point;

    iput-object v0, p2, Lcom/samsung/android/ocr/MOCRResult$Char;->cRect:[Landroid/graphics/Point;

    invoke-interface {v1, v5, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_7
    iput v9, v7, Lcom/samsung/android/ocr/MOCRResult$Char;->unicode:I

    if-ne p2, v4, :cond_8

    goto :goto_2

    :cond_8
    move v2, v6

    :goto_1
    add-int/lit8 v3, p2, -0x3

    if-ge v2, v3, :cond_9

    add-int/lit8 v3, v0, 0x3

    add-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    :goto_2
    new-array p2, v6, [Lcom/samsung/android/ocr/MOCRResult$Char;

    invoke-interface {v1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/samsung/android/ocr/MOCRResult$Char;

    iput-object p2, p1, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    array-length p2, p2

    goto :goto_0

    :goto_3
    sget-object p1, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Http Symbol Correction :: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/ocr/MOCRResult$Line;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method

.method private static correctWwwDot(Lcom/samsung/android/ocr/MOCRResult$Line;I)V
    .locals 5

    iget-object p0, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object p0, p0, p1

    iget-object p1, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    const-string/jumbo v0, "www."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "www"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v0, 0x3

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    add-int/lit8 v0, v0, 0x2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ocr/MOCRResult$Char;

    new-instance v1, Lcom/samsung/android/ocr/MOCRResult$Char;

    invoke-direct {v1}, Lcom/samsung/android/ocr/MOCRResult$Char;-><init>()V

    const/16 v4, 0x2e

    iput v4, v1, Lcom/samsung/android/ocr/MOCRResult$Char;->unicode:I

    iget-object v0, v0, Lcom/samsung/android/ocr/MOCRResult$Char;->cRect:[Landroid/graphics/Point;

    invoke-virtual {v0}, [Landroid/graphics/Point;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Point;

    iput-object v0, v1, Lcom/samsung/android/ocr/MOCRResult$Char;->cRect:[Landroid/graphics/Point;

    invoke-interface {p1, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    new-array v0, v3, [Lcom/samsung/android/ocr/MOCRResult$Char;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/samsung/android/ocr/MOCRResult$Char;

    iput-object p1, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    array-length p1, p1

    :goto_0
    iput p1, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->charCount:I

    :cond_2
    return-void
.end method

.method private static getMatchingIds(Ljava/util/regex/Matcher;Lcom/samsung/android/ocr/MOCRResult$Line;)[I
    .locals 10

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget v4, p1, Lcom/samsung/android/ocr/MOCRResult$Line;->wordCount:I

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ge v2, v4, :cond_1

    iget-object v4, p1, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/samsung/android/ocr/MOCRResult$Word;->charCount:I

    add-int v7, v4, v3

    if-ge v7, v0, :cond_0

    add-int/2addr v3, v4

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sub-int v4, v0, v3

    goto :goto_1

    :cond_1
    move v2, v5

    move v4, v2

    :goto_1
    move v7, v2

    :goto_2
    iget v8, p1, Lcom/samsung/android/ocr/MOCRResult$Line;->wordCount:I

    if-ge v7, v8, :cond_3

    iget-object v8, p1, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object v8, v8, v7

    iget v8, v8, Lcom/samsung/android/ocr/MOCRResult$Word;->charCount:I

    add-int v9, v8, v3

    if-ge v9, p0, :cond_2

    add-int/2addr v3, v8

    add-int/2addr v3, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    sub-int v5, p0, v3

    move p1, v5

    move v5, v7

    goto :goto_3

    :cond_3
    move p1, v5

    :goto_3
    sget-object v3, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x6

    new-array v3, v3, [I

    aput v0, v3, v1

    aput p0, v3, v6

    const/4 p0, 0x2

    aput v2, v3, p0

    const/4 p0, 0x3

    aput v5, v3, p0

    const/4 p0, 0x4

    aput v4, v3, p0

    const/4 p0, 0x5

    aput p1, v3, p0

    return-object v3
.end method

.method private static joinWords(Lcom/samsung/android/ocr/MOCRResult$Line;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->joinWords(Lcom/samsung/android/ocr/MOCRResult$Line;IILcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;)V

    return-void
.end method

.method private static joinWords(Lcom/samsung/android/ocr/MOCRResult$Line;IILcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;)V
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object v3, v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    new-instance v4, Lcom/samsung/android/ocr/MOCRResult$Word;

    invoke-direct {v4}, Lcom/samsung/android/ocr/MOCRResult$Word;-><init>()V

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/graphics/Point;

    iput-object v5, v4, Lcom/samsung/android/ocr/MOCRResult$Word;->wRect:[Landroid/graphics/Point;

    iget-object v6, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object v7, v6, p1

    aget-object v6, v6, p2

    iget-object v7, v7, Lcom/samsung/android/ocr/MOCRResult$Word;->wRect:[Landroid/graphics/Point;

    aget-object v8, v7, v1

    aput-object v8, v5, v1

    iget-object v6, v6, Lcom/samsung/android/ocr/MOCRResult$Word;->wRect:[Landroid/graphics/Point;

    aget-object v8, v6, v3

    aput-object v8, v5, v3

    const/4 v8, 0x2

    aget-object v6, v6, v8

    aput-object v6, v5, v8

    const/4 v6, 0x3

    aget-object v7, v7, v6

    aput-object v7, v5, v6

    const/4 v5, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move v8, p1

    :goto_2
    if-gt v8, p2, :cond_3

    iget-object v9, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object v9, v9, v8

    iget-object v10, v9, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v9, Lcom/samsung/android/ocr/MOCRResult$Word;->conf:F

    add-float/2addr v5, v10

    if-eqz v2, :cond_2

    iget-object v9, v9, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    sget-object v8, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;->REPLACE_COMMA:Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;

    const/4 v9, -0x1

    const-string v10, ","

    const/16 v11, 0x2e

    if-ne p3, v8, :cond_4

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v9, :cond_4

    invoke-virtual {v7, v8, v11}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    if-eqz v2, :cond_4

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/ocr/MOCRResult$Char;

    iput v11, v8, Lcom/samsung/android/ocr/MOCRResult$Char;->unicode:I

    :cond_4
    sget-object v8, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;->REPLACE_DOUBLE:Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;

    if-ne p3, v8, :cond_6

    const-string v8, ".."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v9, :cond_5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_5

    invoke-interface {v6, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_5
    const-string v8, "::"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v9, :cond_6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_6

    invoke-interface {v6, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_6
    sget-object v8, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;->REPLACE_COMMA_MULTIPLE:Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;

    if-ne p3, v8, :cond_8

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result p3

    :goto_3
    if-ltz p3, :cond_8

    if-eqz p3, :cond_7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    sub-int/2addr v8, v3

    if-eq p3, v8, :cond_7

    invoke-virtual {v7, p3, v11}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    if-eqz v2, :cond_7

    invoke-interface {v6, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/ocr/MOCRResult$Char;

    iput v11, v8, Lcom/samsung/android/ocr/MOCRResult$Char;->unicode:I

    :cond_7
    add-int/lit8 p3, p3, 0x1

    invoke-virtual {v7, v10, p3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result p3

    goto :goto_3

    :cond_8
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v4, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    sub-int p1, p2, p1

    add-int/2addr p1, v3

    int-to-float p1, p1

    div-float/2addr v5, p1

    iput v5, v4, Lcom/samsung/android/ocr/MOCRResult$Word;->conf:F

    if-eqz v2, :cond_9

    new-array p1, v1, [Lcom/samsung/android/ocr/MOCRResult$Char;

    invoke-interface {v6, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/samsung/android/ocr/MOCRResult$Char;

    iput-object p1, v4, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    array-length p1, p1

    goto :goto_4

    :cond_9
    const/4 p1, 0x0

    iput-object p1, v4, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    :goto_4
    iput p1, v4, Lcom/samsung/android/ocr/MOCRResult$Word;->charCount:I

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr p2, v3

    :goto_5
    iget p1, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->wordCount:I

    if-ge p2, p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object p1, p1, p2

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_a
    new-array p1, v1, [Lcom/samsung/android/ocr/MOCRResult$Word;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/samsung/android/ocr/MOCRResult$Word;

    iput-object p1, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    array-length p1, p1

    iput p1, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->wordCount:I

    return-void
.end method

.method private static synthetic lambda$correctHttpPrefix$0(I)Z
    .locals 1

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static validatePageURL(Lcom/samsung/android/ocr/MOCRResult$Line;I)V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/ocr/MOCRResult$Line;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object v1, v1, p1

    invoke-static {v1}, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->validateWwwCase(Lcom/samsung/android/ocr/MOCRResult$Word;)V

    sget-object v1, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->PAT_WEB_PAGE_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Original line :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PAT_WEB_PAGE_URL match: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, p0}, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->getMatchingIds(Ljava/util/regex/Matcher;Lcom/samsung/android/ocr/MOCRResult$Line;)[I

    move-result-object v0

    const/4 v1, 0x2

    aget v1, v0, v1

    const/4 v3, 0x3

    aget v0, v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Page ids: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, p1, :cond_0

    add-int/lit8 v3, p1, 0x1

    if-ne v1, v3, :cond_1

    :cond_0
    if-gt v1, v0, :cond_1

    invoke-static {p0, p1, v0}, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->joinWords(Lcom/samsung/android/ocr/MOCRResult$Line;II)V

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Updated line :: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/ocr/MOCRResult$Line;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public static validateURLLine(Lcom/samsung/android/ocr/MOCRResult$Page;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/ocr/MOCRResult$Page;->blocks:[Lcom/samsung/android/ocr/MOCRResult$Block;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_f

    aget-object v4, v0, v3

    iget-object v4, v4, Lcom/samsung/android/ocr/MOCRResult$Block;->lines:[Lcom/samsung/android/ocr/MOCRResult$Line;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_e

    aget-object v7, v4, v6

    invoke-virtual {v7}, Lcom/samsung/android/ocr/MOCRResult$Line;->getText()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->PAT_HTTP_SPACE_COMMA:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    const-string v11, "Post OCR Entity Validation"

    const/4 v12, 0x3

    const/4 v13, 0x2

    const-string v14, "Original line :: "

    if-eqz v10, :cond_1

    sget-object v10, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "PAT_HTTP_SPACE_COMMA match: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9, v7}, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->getMatchingIds(Ljava/util/regex/Matcher;Lcom/samsung/android/ocr/MOCRResult$Line;)[I

    move-result-object v2

    aget v15, v2, v13

    aget v2, v2, v12

    if-gt v15, v2, :cond_0

    sget-object v12, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;->REPLACE_COMMA:Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;

    invoke-static {v7, v15, v2, v12}, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->joinWords(Lcom/samsung/android/ocr/MOCRResult$Line;IILcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;)V

    :cond_0
    invoke-static {v7, v15, v9}, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->correctHttpPrefix(Lcom/samsung/android/ocr/MOCRResult$Line;ILjava/util/regex/Matcher;)V

    invoke-static {v7, v15}, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->correctWwwDot(Lcom/samsung/android/ocr/MOCRResult$Line;I)V

    invoke-static {v7, v15}, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->validatePageURL(Lcom/samsung/android/ocr/MOCRResult$Line;I)V

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_3

    sget-object v9, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->PAT_URL_COMMA_WO_SPACE:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_3

    sget-object v2, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PAT_URL_COMMA_WO_SPACE match: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9, v7}, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->getMatchingIds(Ljava/util/regex/Matcher;Lcom/samsung/android/ocr/MOCRResult$Line;)[I

    move-result-object v9

    aget v10, v9, v13

    const/4 v12, 0x3

    aget v9, v9, v12

    if-gt v10, v9, :cond_2

    sget-object v12, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;->REPLACE_COMMA_MULTIPLE:Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;

    invoke-static {v7, v10, v9, v12}, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->joinWords(Lcom/samsung/android/ocr/MOCRResult$Line;IILcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;)V

    :cond_2
    invoke-static {v7, v10}, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->validatePageURL(Lcom/samsung/android/ocr/MOCRResult$Line;I)V

    invoke-static {v2, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :cond_3
    if-nez v2, :cond_5

    sget-object v9, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->PAT_URL_COMMA:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_5

    sget-object v2, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PAT_URL_COMMA match: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9, v7}, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->getMatchingIds(Ljava/util/regex/Matcher;Lcom/samsung/android/ocr/MOCRResult$Line;)[I

    move-result-object v9

    aget v10, v9, v13

    const/4 v12, 0x3

    aget v9, v9, v12

    if-gt v10, v9, :cond_4

    sget-object v12, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;->REPLACE_COMMA:Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;

    invoke-static {v7, v10, v9, v12}, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->joinWords(Lcom/samsung/android/ocr/MOCRResult$Line;IILcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;)V

    invoke-static {v2, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {v7, v10}, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->validatePageURL(Lcom/samsung/android/ocr/MOCRResult$Line;I)V

    const/4 v2, 0x1

    :cond_5
    if-nez v2, :cond_7

    sget-object v9, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->PAT_URL_HTTP_BASIC:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_7

    sget-object v2, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PAT_URL_HTTP_BASIC match: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9, v7}, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->getMatchingIds(Ljava/util/regex/Matcher;Lcom/samsung/android/ocr/MOCRResult$Line;)[I

    move-result-object v10

    aget v12, v10, v13

    const/4 v15, 0x3

    aget v10, v10, v15

    if-gt v12, v10, :cond_6

    sget-object v15, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;->REPLACE_DOUBLE:Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;

    invoke-static {v7, v12, v10, v15}, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->joinWords(Lcom/samsung/android/ocr/MOCRResult$Line;IILcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;)V

    :cond_6
    invoke-static {v7, v12, v9}, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->correctHttpPrefix(Lcom/samsung/android/ocr/MOCRResult$Line;ILjava/util/regex/Matcher;)V

    invoke-static {v2, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7, v12}, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->validatePageURL(Lcom/samsung/android/ocr/MOCRResult$Line;I)V

    const/4 v2, 0x1

    :cond_7
    if-nez v2, :cond_9

    sget-object v9, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->PAT_URL_WWW_BASIC:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_9

    sget-object v2, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PAT_URL_WWW_BASIC match: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9, v7}, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->getMatchingIds(Ljava/util/regex/Matcher;Lcom/samsung/android/ocr/MOCRResult$Line;)[I

    move-result-object v9

    aget v10, v9, v13

    const/4 v12, 0x3

    aget v9, v9, v12

    if-gt v10, v9, :cond_8

    sget-object v12, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;->REPLACE_DOUBLE:Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;

    invoke-static {v7, v10, v9, v12}, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->joinWords(Lcom/samsung/android/ocr/MOCRResult$Line;IILcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;)V

    invoke-static {v2, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-static {v7, v10}, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->validatePageURL(Lcom/samsung/android/ocr/MOCRResult$Line;I)V

    const/4 v2, 0x1

    :cond_9
    if-nez v2, :cond_b

    sget-object v9, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->PAT_URL_BASIC:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->validateUrl(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    sget-object v2, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PAT_URL_BASIC match: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9, v7}, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->getMatchingIds(Ljava/util/regex/Matcher;Lcom/samsung/android/ocr/MOCRResult$Line;)[I

    move-result-object v9

    aget v10, v9, v13

    const/4 v12, 0x3

    aget v9, v9, v12

    if-gt v10, v9, :cond_a

    sget-object v12, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;->REPLACE_DOUBLE:Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;

    invoke-static {v7, v10, v9, v12}, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->joinWords(Lcom/samsung/android/ocr/MOCRResult$Line;IILcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;)V

    invoke-static {v2, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-static {v7, v10}, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->validatePageURL(Lcom/samsung/android/ocr/MOCRResult$Line;I)V

    const/4 v15, 0x1

    goto :goto_3

    :cond_b
    move v15, v2

    :goto_3
    if-nez v15, :cond_d

    sget-object v2, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->PAT_STRICT_DOMAIN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->validateUrl(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    sget-object v9, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PAT_STRICT_DOMAIN match: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v7}, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->getMatchingIds(Ljava/util/regex/Matcher;Lcom/samsung/android/ocr/MOCRResult$Line;)[I

    move-result-object v2

    aget v8, v2, v13

    const/4 v10, 0x3

    aget v2, v2, v10

    if-gt v8, v2, :cond_c

    sget-object v10, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;->REPLACE_DOUBLE:Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;

    invoke-static {v7, v8, v2, v10}, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->joinWords(Lcom/samsung/android/ocr/MOCRResult$Line;IILcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;)V

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-static {v7, v8}, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->validatePageURL(Lcom/samsung/android/ocr/MOCRResult$Line;I)V

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_f
    return-void
.end method

.method private static validateUrl(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, ". in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ". it"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ". at"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static validateWwwCase(Lcom/samsung/android/ocr/MOCRResult$Word;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "www"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    add-int/lit8 v3, v1, 0x3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "www correction"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    if-eqz p0, :cond_0

    aget-object v0, p0, v1

    const/16 v2, 0x77

    iput v2, v0, Lcom/samsung/android/ocr/MOCRResult$Char;->unicode:I

    add-int/lit8 v0, v1, 0x1

    aget-object v0, p0, v0

    iput v2, v0, Lcom/samsung/android/ocr/MOCRResult$Char;->unicode:I

    add-int/lit8 v1, v1, 0x2

    aget-object p0, p0, v1

    iput v2, p0, Lcom/samsung/android/ocr/MOCRResult$Char;->unicode:I

    :cond_0
    return-void
.end method
