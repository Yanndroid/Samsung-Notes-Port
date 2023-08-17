.class public Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/StringEscapeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ESCAPE_JAVA:Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/CharSequenceTranslator;

.field public static final ESCAPE_URL:Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/CharSequenceTranslator;

.field public static final UNESCAPE_JAVA:Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/CharSequenceTranslator;

.field public static final UNESCAPE_URL:Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/CharSequenceTranslator;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/LookupTranslator;

    const/4 v1, 0x2

    new-array v2, v1, [[Ljava/lang/String;

    const-string v3, "\""

    const-string v4, "\\\""

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v2, v6

    const-string v5, "\\"

    const-string v7, "\\\\"

    filled-new-array {v5, v7}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v2, v9

    invoke-direct {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-array v2, v9, [Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/CharSequenceTranslator;

    new-instance v8, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/LookupTranslator;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/EntityArrays;->JAVA_CTRL_CHARS_ESCAPE()[[Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v8, v2, v6

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/CharSequenceTranslator;->with([Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/CharSequenceTranslator;)Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/CharSequenceTranslator;

    move-result-object v0

    new-array v2, v9, [Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/CharSequenceTranslator;

    const/16 v8, 0x20

    const/16 v10, 0x7f

    invoke-static {v8, v10}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/UnicodeEscaper;->outsideOf(II)Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/UnicodeEscaper;

    move-result-object v8

    aput-object v8, v2, v6

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/CharSequenceTranslator;->with([Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/CharSequenceTranslator;)Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/CharSequenceTranslator;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/StringEscapeUtils;->ESCAPE_JAVA:Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/CharSequenceTranslator;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/AggregateTranslator;

    const/4 v2, 0x4

    new-array v8, v2, [Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/CharSequenceTranslator;

    new-instance v10, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/OctalUnescaper;

    invoke-direct {v10}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/OctalUnescaper;-><init>()V

    aput-object v10, v8, v6

    new-instance v10, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/UnicodeUnescaper;

    invoke-direct {v10}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/UnicodeUnescaper;-><init>()V

    aput-object v10, v8, v9

    new-instance v10, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/LookupTranslator;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/EntityArrays;->JAVA_CTRL_CHARS_UNESCAPE()[[Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v10, v8, v1

    new-instance v10, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/LookupTranslator;

    new-array v2, v2, [[Ljava/lang/String;

    filled-new-array {v7, v5}, [Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    const-string v3, "\\\'"

    const-string v4, "\'"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, ""

    filled-new-array {v5, v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v2, v3

    invoke-direct {v10, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v10, v8, v3

    invoke-direct {v0, v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/AggregateTranslator;-><init>([Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/CharSequenceTranslator;)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/StringEscapeUtils;->UNESCAPE_JAVA:Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/CharSequenceTranslator;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/AggregateTranslator;

    new-array v1, v9, [Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/CharSequenceTranslator;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/LookupTranslator;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v6

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/AggregateTranslator;-><init>([Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/CharSequenceTranslator;)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/StringEscapeUtils;->ESCAPE_URL:Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/CharSequenceTranslator;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/AggregateTranslator;

    new-array v1, v9, [Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/CharSequenceTranslator;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/LookupTranslator;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/EntityArrays;->BASIC_UNESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v6

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/AggregateTranslator;-><init>([Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/CharSequenceTranslator;)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/StringEscapeUtils;->UNESCAPE_URL:Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/CharSequenceTranslator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final escapeJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/StringEscapeUtils;->ESCAPE_JAVA:Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final escapeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/StringEscapeUtils;->ESCAPE_URL:Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unescapeJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/StringEscapeUtils;->UNESCAPE_JAVA:Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unescapeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/StringEscapeUtils;->UNESCAPE_URL:Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
