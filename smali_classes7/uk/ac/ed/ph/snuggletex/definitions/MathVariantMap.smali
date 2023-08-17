.class public final Luk/ac/ed/ph/snuggletex/definitions/MathVariantMap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_CODEPOINT:I = 0x80

.field private static final MIN_CODEPOINT:I = 0x20


# instance fields
.field private final accentByCodePoint:[C

.field private final mathVariantName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[C)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/definitions/MathVariantMap;->mathVariantName:Ljava/lang/String;

    const/16 p1, 0x60

    new-array p1, p1, [C

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/definitions/MathVariantMap;->accentByCodePoint:[C

    const/4 p1, 0x0

    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    aget-char p1, p2, p1

    add-int/lit8 v1, v0, 0x1

    aget-char v0, p2, v0

    invoke-direct {p0, p1}, Luk/ac/ed/ph/snuggletex/definitions/MathVariantMap;->charToIndex(C)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/definitions/MathVariantMap;->accentByCodePoint:[C

    aput-char v0, v2, p1

    :cond_0
    move p1, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private charToIndex(C)I
    .locals 1

    add-int/lit8 p1, p1, -0x20

    if-ltz p1, :cond_0

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method


# virtual methods
.method public getAccentedChar(C)C
    .locals 1

    invoke-direct {p0, p1}, Luk/ac/ed/ph/snuggletex/definitions/MathVariantMap;->charToIndex(C)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/definitions/MathVariantMap;->accentByCodePoint:[C

    aget-char p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getMathVariantName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/definitions/MathVariantMap;->mathVariantName:Ljava/lang/String;

    return-object v0
.end method
