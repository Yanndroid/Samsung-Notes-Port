.class public interface abstract Luk/ac/ed/ph/snuggletex/definitions/MathVariantMaps;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DOUBLE_STRUCK:Luk/ac/ed/ph/snuggletex/definitions/MathVariantMap;

.field public static final FRAKTUR:Luk/ac/ed/ph/snuggletex/definitions/MathVariantMap;

.field public static final SCRIPT:Luk/ac/ed/ph/snuggletex/definitions/MathVariantMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Luk/ac/ed/ph/snuggletex/definitions/MathVariantMap;

    const/16 v1, 0x16

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    const-string v2, "script"

    invoke-direct {v0, v2, v1}, Luk/ac/ed/ph/snuggletex/definitions/MathVariantMap;-><init>(Ljava/lang/String;[C)V

    sput-object v0, Luk/ac/ed/ph/snuggletex/definitions/MathVariantMaps;->SCRIPT:Luk/ac/ed/ph/snuggletex/definitions/MathVariantMap;

    new-instance v0, Luk/ac/ed/ph/snuggletex/definitions/MathVariantMap;

    const/16 v1, 0xe

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    const-string v2, "double-struck"

    invoke-direct {v0, v2, v1}, Luk/ac/ed/ph/snuggletex/definitions/MathVariantMap;-><init>(Ljava/lang/String;[C)V

    sput-object v0, Luk/ac/ed/ph/snuggletex/definitions/MathVariantMaps;->DOUBLE_STRUCK:Luk/ac/ed/ph/snuggletex/definitions/MathVariantMap;

    new-instance v0, Luk/ac/ed/ph/snuggletex/definitions/MathVariantMap;

    const/16 v1, 0x12

    new-array v1, v1, [C

    fill-array-data v1, :array_2

    const-string v2, "fraktur"

    invoke-direct {v0, v2, v1}, Luk/ac/ed/ph/snuggletex/definitions/MathVariantMap;-><init>(Ljava/lang/String;[C)V

    sput-object v0, Luk/ac/ed/ph/snuggletex/definitions/MathVariantMaps;->FRAKTUR:Luk/ac/ed/ph/snuggletex/definitions/MathVariantMap;

    return-void

    nop

    :array_0
    .array-data 2
        0x42s
        0x212cs
        0x45s
        0x2130s
        0x46s
        0x2131s
        0x48s
        0x210bs
        0x49s
        0x2110s
        0x4cs
        0x2112s
        0x4ds
        0x2133s
        0x52s
        0x211bs
        0x65s
        0x212fs
        0x67s
        0x210as
        0x6fs
        0x2134s
    .end array-data

    :array_1
    .array-data 2
        0x43s
        0x2102s
        0x48s
        0x210ds
        0x4es
        0x2115s
        0x50s
        0x2119s
        0x51s
        0x211as
        0x52s
        0x211ds
        0x5as
        0x2124s
    .end array-data

    :array_2
    .array-data 2
        0x43s
        0x212ds
        0x48s
        0x210cs
        0x49s
        0x2111s
        0x52s
        0x211cs
        0x5as
        0x2128s
        0x52s
        0x211bs
        0x65s
        0x212fs
        0x67s
        0x210as
        0x6fs
        0x2134s
    .end array-data
.end method
