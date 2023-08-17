.class public Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/UnicodeEscaper;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/CodePointTranslator;
.source "SourceFile"


# instance fields
.field private final above:I

.field private final below:I

.field private final between:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/UnicodeEscaper;-><init>(IIZ)V

    return-void
.end method

.method private constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/CodePointTranslator;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/UnicodeEscaper;->below:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/UnicodeEscaper;->above:I

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/UnicodeEscaper;->between:Z

    return-void
.end method

.method public static above(I)Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/UnicodeEscaper;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/UnicodeEscaper;->outsideOf(II)Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/UnicodeEscaper;

    move-result-object p0

    return-object p0
.end method

.method public static below(I)Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/UnicodeEscaper;
    .locals 1

    const v0, 0x7fffffff

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/UnicodeEscaper;->outsideOf(II)Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/UnicodeEscaper;

    move-result-object p0

    return-object p0
.end method

.method public static between(II)Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/UnicodeEscaper;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/UnicodeEscaper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/UnicodeEscaper;-><init>(IIZ)V

    return-object v0
.end method

.method public static outsideOf(II)Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/UnicodeEscaper;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/UnicodeEscaper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/UnicodeEscaper;-><init>(IIZ)V

    return-object v0
.end method


# virtual methods
.method public translate(ILjava/io/Writer;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/UnicodeEscaper;->between:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/UnicodeEscaper;->below:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/UnicodeEscaper;->above:I

    if-le p1, v0, :cond_2

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/UnicodeEscaper;->below:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/UnicodeEscaper;->above:I

    if-gt p1, v0, :cond_2

    return v1

    :cond_2
    const v0, 0xffff

    const-string v1, "\\u"

    if-le p1, v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/CharSequenceTranslator;->hex(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/16 v0, 0xfff

    if-le p1, v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_4
    const/16 v0, 0xff

    if-le p1, v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\u0"

    goto :goto_0

    :cond_5
    const/16 v0, 0xf

    if-le p1, v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\u00"

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\u000"

    goto :goto_0

    :goto_1
    const/4 p1, 0x1

    return p1
.end method
