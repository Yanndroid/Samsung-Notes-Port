.class public Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/LookupTranslator;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/CharSequenceTranslator;
.source "SourceFile"


# instance fields
.field private final longest:I

.field private final lookupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final shortest:I


# direct methods
.method public varargs constructor <init>([[Ljava/lang/CharSequence;)V
    .locals 9

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/CharSequenceTranslator;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/LookupTranslator;->lookupMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    const v1, 0x7fffffff

    if-eqz p1, :cond_3

    array-length v2, p1

    move v3, v0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, p1, v3

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/LookupTranslator;->lookupMap:Ljava/util/HashMap;

    aget-object v7, v5, v0

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v5, v5, v0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v5, v1, :cond_0

    move v1, v5

    :cond_0
    if-le v5, v4, :cond_1

    move v4, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v0, v4

    :cond_3
    iput v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/LookupTranslator;->shortest:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/LookupTranslator;->longest:I

    return-void
.end method


# virtual methods
.method public translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .locals 3

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/LookupTranslator;->longest:I

    add-int v1, p2, v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p2

    :cond_0
    :goto_0
    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/LookupTranslator;->shortest:I

    if-lt v0, v1, :cond_2

    add-int v1, p2, v0

    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/decoder/LookupTranslator;->lookupMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
