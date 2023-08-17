.class public final Lkotlin/math/MathKt;
.super Lkotlin/math/MathKt__MathJVMKt;
.source "SourceFile"


# static fields
.field public static final E:D = 2.718281828459045

.field public static final PI:D = 3.141592653589793


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/math/MathKt__MathJVMKt;-><init>()V

    return-void
.end method

.method public static bridge synthetic getSign(I)I
    .locals 0

    invoke-static {p0}, Lkotlin/math/MathKt__MathJVMKt;->getSign(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic getSign(J)I
    .locals 0

    invoke-static {p0, p1}, Lkotlin/math/MathKt__MathJVMKt;->getSign(J)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic roundToInt(D)I
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    invoke-static {p0, p1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(D)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic roundToInt(F)I
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    invoke-static {p0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic roundToLong(D)J
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    invoke-static {p0, p1}, Lkotlin/math/MathKt__MathJVMKt;->roundToLong(D)J

    move-result-wide p0

    return-wide p0
.end method
