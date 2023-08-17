.class public final Luk/ac/ed/ph/snuggletex/definitions/AccentMap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_CODEPOINT:I = 0x80

.field private static final MIN_CODEPOINT:I = 0x20


# instance fields
.field private final mathSafeAccentByCodePoint:[C

.field private final textAccentByCodePoint:[C


# direct methods
.method public constructor <init>([CLjava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x60

    new-array v1, v0, [C

    iput-object v1, p0, Luk/ac/ed/ph/snuggletex/definitions/AccentMap;->textAccentByCodePoint:[C

    new-array v0, v0, [C

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/definitions/AccentMap;->mathSafeAccentByCodePoint:[C

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    aget-char v0, p1, v0

    add-int/lit8 v2, v1, 0x1

    aget-char v1, p1, v1

    invoke-direct {p0, v0}, Luk/ac/ed/ph/snuggletex/definitions/AccentMap;->charToIndex(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget-object v5, p0, Luk/ac/ed/ph/snuggletex/definitions/AccentMap;->textAccentByCodePoint:[C

    aput-char v1, v5, v3

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/definitions/AccentMap;->mathSafeAccentByCodePoint:[C

    aput-char v1, v0, v3

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method private charToIndex(I)I
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
.method public getAccentedMathChar(I)C
    .locals 1

    invoke-direct {p0, p1}, Luk/ac/ed/ph/snuggletex/definitions/AccentMap;->charToIndex(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/definitions/AccentMap;->mathSafeAccentByCodePoint:[C

    aget-char p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getAccentedTextChar(I)C
    .locals 1

    invoke-direct {p0, p1}, Luk/ac/ed/ph/snuggletex/definitions/AccentMap;->charToIndex(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/definitions/AccentMap;->textAccentByCodePoint:[C

    aget-char p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
