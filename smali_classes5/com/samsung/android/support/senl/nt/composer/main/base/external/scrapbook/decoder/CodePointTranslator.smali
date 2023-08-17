.class public abstract Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/CodePointTranslator;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/CharSequenceTranslator;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/CharSequenceTranslator;-><init>()V

    return-void
.end method


# virtual methods
.method public final translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/CodePointTranslator;->translate(ILjava/io/Writer;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract translate(ILjava/io/Writer;)Z
.end method
