.class Lkotlin/ranges/RangesKt___RangesKt;
.super Lkotlin/ranges/RangesKt__RangesKt;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\n_Ranges.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Ranges.kt\nkotlin/ranges/RangesKt___RangesKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1537:1\n1#2:1538\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/ranges/RangesKt__RangesKt;-><init>()V

    return-void
.end method

.method public static final synthetic byteRangeContains(Lkotlin/ranges/ClosedRange;D)Z
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed."
    .end annotation

    .annotation runtime Lkotlin/DeprecatedSinceKotlin;
        errorSince = "1.4"
        hiddenSince = "1.5"
        warningSince = "1.3"
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "byteRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt___RangesKt;->toByteExactOrNull(D)Ljava/lang/Byte;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lkotlin/ranges/ClosedRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final synthetic byteRangeContains(Lkotlin/ranges/ClosedRange;F)Z
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed."
    .end annotation

    .annotation runtime Lkotlin/DeprecatedSinceKotlin;
        errorSince = "1.4"
        hiddenSince = "1.5"
        warningSince = "1.3"
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "byteRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/ranges/RangesKt___RangesKt;->toByteExactOrNull(F)Ljava/lang/Byte;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lkotlin/ranges/ClosedRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final byteRangeContains(Lkotlin/ranges/ClosedRange;I)Z
    .locals 1
    .param p0    # Lkotlin/ranges/ClosedRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ranges/ClosedRange<",
            "Ljava/lang/Byte;",
            ">;I)Z"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "byteRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/ranges/RangesKt___RangesKt;->toByteExactOrNull(I)Ljava/lang/Byte;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lkotlin/ranges/ClosedRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final byteRangeContains(Lkotlin/ranges/ClosedRange;J)Z
    .locals 1
    .param p0    # Lkotlin/ranges/ClosedRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ranges/ClosedRange<",
            "Ljava/lang/Byte;",
            ">;J)Z"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "byteRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt___RangesKt;->toByteExactOrNull(J)Ljava/lang/Byte;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lkotlin/ranges/ClosedRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final byteRangeContains(Lkotlin/ranges/ClosedRange;S)Z
    .locals 1
    .param p0    # Lkotlin/ranges/ClosedRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ranges/ClosedRange<",
            "Ljava/lang/Byte;",
            ">;S)Z"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "byteRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/ranges/RangesKt___RangesKt;->toByteExactOrNull(S)Ljava/lang/Byte;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lkotlin/ranges/ClosedRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final byteRangeContains(Lkotlin/ranges/OpenEndRange;I)Z
    .locals 1
    .param p0    # Lkotlin/ranges/OpenEndRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ranges/OpenEndRange<",
            "Ljava/lang/Byte;",
            ">;I)Z"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.9"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalStdlibApi;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "byteRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/ranges/RangesKt___RangesKt;->toByteExactOrNull(I)Ljava/lang/Byte;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lkotlin/ranges/OpenEndRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final byteRangeContains(Lkotlin/ranges/OpenEndRange;J)Z
    .locals 1
    .param p0    # Lkotlin/ranges/OpenEndRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ranges/OpenEndRange<",
            "Ljava/lang/Byte;",
            ">;J)Z"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.9"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalStdlibApi;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "byteRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt___RangesKt;->toByteExactOrNull(J)Ljava/lang/Byte;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lkotlin/ranges/OpenEndRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final byteRangeContains(Lkotlin/ranges/OpenEndRange;S)Z
    .locals 1
    .param p0    # Lkotlin/ranges/OpenEndRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ranges/OpenEndRange<",
            "Ljava/lang/Byte;",
            ">;S)Z"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.9"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalStdlibApi;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "byteRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/ranges/RangesKt___RangesKt;->toByteExactOrNull(S)Ljava/lang/Byte;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lkotlin/ranges/OpenEndRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final coerceAtLeast(BB)B
    .locals 0

    if-ge p0, p1, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static final coerceAtLeast(DD)D
    .locals 1

    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    move-wide p0, p2

    :cond_0
    return-wide p0
.end method

.method public static final coerceAtLeast(FF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static coerceAtLeast(II)I
    .locals 0

    if-ge p0, p1, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static coerceAtLeast(JJ)J
    .locals 1

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    move-wide p0, p2

    :cond_0
    return-wide p0
.end method

.method public static final coerceAtLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .param p0    # Ljava/lang/Comparable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Comparable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(TT;TT;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "minimumValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method

.method public static final coerceAtLeast(SS)S
    .locals 0

    if-ge p0, p1, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static final coerceAtMost(BB)B
    .locals 0

    if-le p0, p1, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static final coerceAtMost(DD)D
    .locals 1

    cmpl-double v0, p0, p2

    if-lez v0, :cond_0

    move-wide p0, p2

    :cond_0
    return-wide p0
.end method

.method public static final coerceAtMost(FF)F
    .locals 1

    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static coerceAtMost(II)I
    .locals 0

    if-le p0, p1, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static coerceAtMost(JJ)J
    .locals 1

    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    move-wide p0, p2

    :cond_0
    return-wide p0
.end method

.method public static final coerceAtMost(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .param p0    # Ljava/lang/Comparable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Comparable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(TT;TT;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "maximumValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method

.method public static final coerceAtMost(SS)S
    .locals 0

    if-le p0, p1, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static final coerceIn(BBB)B
    .locals 2

    if-gt p1, p2, :cond_2

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot coerce value to an empty range: maximum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is less than minimum "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final coerceIn(DDD)D
    .locals 1

    cmpl-double v0, p2, p4

    if-gtz v0, :cond_2

    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    return-wide p2

    :cond_0
    cmpl-double p2, p0, p4

    if-lez p2, :cond_1

    return-wide p4

    :cond_1
    return-wide p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot coerce value to an empty range: maximum "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p4, " is less than minimum "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final coerceIn(FFF)F
    .locals 2

    cmpl-float v0, p1, p2

    if-gtz v0, :cond_2

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    return p1

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    return p2

    :cond_1
    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot coerce value to an empty range: maximum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " is less than minimum "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static coerceIn(III)I
    .locals 2

    if-gt p1, p2, :cond_2

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot coerce value to an empty range: maximum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is less than minimum "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final coerceIn(ILkotlin/ranges/ClosedRange;)I
    .locals 2
    .param p1    # Lkotlin/ranges/ClosedRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/ranges/ClosedRange<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const-string v0, "range"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lkotlin/ranges/ClosedFloatingPointRange;

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p1, Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-static {p0, p1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(Ljava/lang/Comparable;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    invoke-interface {p1}, Lkotlin/ranges/ClosedRange;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lkotlin/ranges/ClosedRange;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ge p0, v0, :cond_1

    invoke-interface {p1}, Lkotlin/ranges/ClosedRange;->getStart()Ljava/lang/Comparable;

    move-result-object p0

    :goto_0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lkotlin/ranges/ClosedRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-le p0, v0, :cond_2

    invoke-interface {p1}, Lkotlin/ranges/ClosedRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object p0

    goto :goto_0

    :cond_2
    :goto_1
    return p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot coerce value to an empty range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static coerceIn(JJJ)J
    .locals 1

    cmp-long v0, p2, p4

    if-gtz v0, :cond_2

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    return-wide p2

    :cond_0
    cmp-long p2, p0, p4

    if-lez p2, :cond_1

    return-wide p4

    :cond_1
    return-wide p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot coerce value to an empty range: maximum "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, " is less than minimum "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static coerceIn(JLkotlin/ranges/ClosedRange;)J
    .locals 2
    .param p2    # Lkotlin/ranges/ClosedRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/ranges/ClosedRange<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    const-string v0, "range"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lkotlin/ranges/ClosedFloatingPointRange;

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    check-cast p2, Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-static {p0, p2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(Ljava/lang/Comparable;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-interface {p2}, Lkotlin/ranges/ClosedRange;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p2}, Lkotlin/ranges/ClosedRange;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    invoke-interface {p2}, Lkotlin/ranges/ClosedRange;->getStart()Ljava/lang/Comparable;

    move-result-object p0

    :goto_0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lkotlin/ranges/ClosedRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    cmp-long v0, p0, v0

    if-lez v0, :cond_2

    invoke-interface {p2}, Lkotlin/ranges/ClosedRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object p0

    goto :goto_0

    :cond_2
    :goto_1
    return-wide p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot coerce value to an empty range: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final coerceIn(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 2
    .param p0    # Ljava/lang/Comparable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Comparable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Comparable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(TT;TT;TT;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_4

    return-object p2

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot coerce value to an empty range: maximum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is less than minimum "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_3

    return-object p1

    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {p0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_4

    return-object p2

    :cond_4
    return-object p0
.end method

.method public static final coerceIn(Ljava/lang/Comparable;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;
    .locals 2
    .param p0    # Ljava/lang/Comparable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/ranges/ClosedFloatingPointRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(TT;",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "range"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lkotlin/ranges/ClosedFloatingPointRange;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lkotlin/ranges/ClosedRange;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lkotlin/ranges/ClosedFloatingPointRange;->lessThanOrEquals(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lkotlin/ranges/ClosedRange;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Lkotlin/ranges/ClosedFloatingPointRange;->lessThanOrEquals(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lkotlin/ranges/ClosedRange;->getStart()Ljava/lang/Comparable;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lkotlin/ranges/ClosedRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Lkotlin/ranges/ClosedFloatingPointRange;->lessThanOrEquals(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lkotlin/ranges/ClosedRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lkotlin/ranges/ClosedFloatingPointRange;->lessThanOrEquals(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lkotlin/ranges/ClosedRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot coerce value to an empty range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final coerceIn(Ljava/lang/Comparable;Lkotlin/ranges/ClosedRange;)Ljava/lang/Comparable;
    .locals 2
    .param p0    # Ljava/lang/Comparable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/ranges/ClosedRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(TT;",
            "Lkotlin/ranges/ClosedRange<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "range"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lkotlin/ranges/ClosedFloatingPointRange;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-static {p0, p1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(Ljava/lang/Comparable;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lkotlin/ranges/ClosedRange;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lkotlin/ranges/ClosedRange;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    invoke-interface {p1}, Lkotlin/ranges/ClosedRange;->getStart()Ljava/lang/Comparable;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lkotlin/ranges/ClosedRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p1}, Lkotlin/ranges/ClosedRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot coerce value to an empty range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final coerceIn(SSS)S
    .locals 2

    if-gt p1, p2, :cond_2

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot coerce value to an empty range: maximum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is less than minimum "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final contains(Lkotlin/ranges/CharRange;Ljava/lang/Character;)Z
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/ranges/CharRange;->contains(C)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final contains(Lkotlin/ranges/IntRange;B)Z
    .locals 1
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlin/ranges/RangesKt___RangesKt;->intRangeContains(Lkotlin/ranges/ClosedRange;B)Z

    move-result p0

    return p0
.end method

.method private static final contains(Lkotlin/ranges/IntRange;J)Z
    .locals 1
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lkotlin/ranges/RangesKt;->intRangeContains(Lkotlin/ranges/ClosedRange;J)Z

    move-result p0

    return p0
.end method

.method private static final contains(Lkotlin/ranges/IntRange;Ljava/lang/Integer;)Z
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/ranges/IntRange;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final contains(Lkotlin/ranges/IntRange;S)Z
    .locals 1
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlin/ranges/RangesKt___RangesKt;->intRangeContains(Lkotlin/ranges/ClosedRange;S)Z

    move-result p0

    return p0
.end method

.method private static final contains(Lkotlin/ranges/LongRange;B)Z
    .locals 1
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlin/ranges/RangesKt___RangesKt;->longRangeContains(Lkotlin/ranges/ClosedRange;B)Z

    move-result p0

    return p0
.end method

.method private static final contains(Lkotlin/ranges/LongRange;I)Z
    .locals 1
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlin/ranges/RangesKt___RangesKt;->longRangeContains(Lkotlin/ranges/ClosedRange;I)Z

    move-result p0

    return p0
.end method

.method private static final contains(Lkotlin/ranges/LongRange;Ljava/lang/Long;)Z
    .locals 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lkotlin/ranges/LongRange;->contains(J)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final contains(Lkotlin/ranges/LongRange;S)Z
    .locals 1
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlin/ranges/RangesKt___RangesKt;->longRangeContains(Lkotlin/ranges/ClosedRange;S)Z

    move-result p0

    return p0
.end method

.method public static final synthetic doubleRangeContains(Lkotlin/ranges/ClosedRange;B)Z
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed."
    .end annotation

    .annotation runtime Lkotlin/DeprecatedSinceKotlin;
        errorSince = "1.4"
        hiddenSince = "1.5"
        warningSince = "1.3"
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "doubleRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/ranges/ClosedRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final doubleRangeContains(Lkotlin/ranges/ClosedRange;F)Z
    .locals 2
    .param p0    # Lkotlin/ranges/ClosedRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ranges/ClosedRange<",
            "Ljava/lang/Double;",
            ">;F)Z"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "doubleRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/ranges/ClosedRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic doubleRangeContains(Lkotlin/ranges/ClosedRange;I)Z
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed."
    .end annotation

    .annotation runtime Lkotlin/DeprecatedSinceKotlin;
        errorSince = "1.4"
        hiddenSince = "1.5"
        warningSince = "1.3"
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "doubleRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/ranges/ClosedRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic doubleRangeContains(Lkotlin/ranges/ClosedRange;J)Z
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed."
    .end annotation

    .annotation runtime Lkotlin/DeprecatedSinceKotlin;
        errorSince = "1.4"
        hiddenSince = "1.5"
        warningSince = "1.3"
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "doubleRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    long-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/ranges/ClosedRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic doubleRangeContains(Lkotlin/ranges/ClosedRange;S)Z
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed."
    .end annotation

    .annotation runtime Lkotlin/DeprecatedSinceKotlin;
        errorSince = "1.4"
        hiddenSince = "1.5"
        warningSince = "1.3"
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "doubleRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/ranges/ClosedRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final doubleRangeContains(Lkotlin/ranges/OpenEndRange;F)Z
    .locals 2
    .param p0    # Lkotlin/ranges/OpenEndRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ranges/OpenEndRange<",
            "Ljava/lang/Double;",
            ">;F)Z"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.9"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalStdlibApi;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "doubleRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/ranges/OpenEndRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final downTo(CC)Lkotlin/ranges/CharProgression;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlin/ranges/CharProgression;->Companion:Lkotlin/ranges/CharProgression$Companion;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Lkotlin/ranges/CharProgression$Companion;->fromClosedRange(CCI)Lkotlin/ranges/CharProgression;

    move-result-object p0

    return-object p0
.end method

.method public static final downTo(BB)Lkotlin/ranges/IntProgression;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlin/ranges/IntProgression;->Companion:Lkotlin/ranges/IntProgression$Companion;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Lkotlin/ranges/IntProgression$Companion;->fromClosedRange(III)Lkotlin/ranges/IntProgression;

    move-result-object p0

    return-object p0
.end method

.method public static final downTo(BI)Lkotlin/ranges/IntProgression;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlin/ranges/IntProgression;->Companion:Lkotlin/ranges/IntProgression$Companion;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Lkotlin/ranges/IntProgression$Companion;->fromClosedRange(III)Lkotlin/ranges/IntProgression;

    move-result-object p0

    return-object p0
.end method

.method public static final downTo(BS)Lkotlin/ranges/IntProgression;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlin/ranges/IntProgression;->Companion:Lkotlin/ranges/IntProgression$Companion;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Lkotlin/ranges/IntProgression$Companion;->fromClosedRange(III)Lkotlin/ranges/IntProgression;

    move-result-object p0

    return-object p0
.end method

.method public static final downTo(IB)Lkotlin/ranges/IntProgression;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlin/ranges/IntProgression;->Companion:Lkotlin/ranges/IntProgression$Companion;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Lkotlin/ranges/IntProgression$Companion;->fromClosedRange(III)Lkotlin/ranges/IntProgression;

    move-result-object p0

    return-object p0
.end method

.method public static downTo(II)Lkotlin/ranges/IntProgression;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlin/ranges/IntProgression;->Companion:Lkotlin/ranges/IntProgression$Companion;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Lkotlin/ranges/IntProgression$Companion;->fromClosedRange(III)Lkotlin/ranges/IntProgression;

    move-result-object p0

    return-object p0
.end method

.method public static final downTo(IS)Lkotlin/ranges/IntProgression;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlin/ranges/IntProgression;->Companion:Lkotlin/ranges/IntProgression$Companion;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Lkotlin/ranges/IntProgression$Companion;->fromClosedRange(III)Lkotlin/ranges/IntProgression;

    move-result-object p0

    return-object p0
.end method

.method public static final downTo(SB)Lkotlin/ranges/IntProgression;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlin/ranges/IntProgression;->Companion:Lkotlin/ranges/IntProgression$Companion;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Lkotlin/ranges/IntProgression$Companion;->fromClosedRange(III)Lkotlin/ranges/IntProgression;

    move-result-object p0

    return-object p0
.end method

.method public static final downTo(SI)Lkotlin/ranges/IntProgression;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlin/ranges/IntProgression;->Companion:Lkotlin/ranges/IntProgression$Companion;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Lkotlin/ranges/IntProgression$Companion;->fromClosedRange(III)Lkotlin/ranges/IntProgression;

    move-result-object p0

    return-object p0
.end method

.method public static final downTo(SS)Lkotlin/ranges/IntProgression;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlin/ranges/IntProgression;->Companion:Lkotlin/ranges/IntProgression$Companion;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Lkotlin/ranges/IntProgression$Companion;->fromClosedRange(III)Lkotlin/ranges/IntProgression;

    move-result-object p0

    return-object p0
.end method

.method public static final downTo(BJ)Lkotlin/ranges/LongProgression;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlin/ranges/LongProgression;->Companion:Lkotlin/ranges/LongProgression$Companion;

    int-to-long v1, p0

    const-wide/16 v5, -0x1

    move-wide v3, p1

    invoke-virtual/range {v0 .. v6}, Lkotlin/ranges/LongProgression$Companion;->fromClosedRange(JJJ)Lkotlin/ranges/LongProgression;

    move-result-object p0

    return-object p0
.end method

.method public static final downTo(IJ)Lkotlin/ranges/LongProgression;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlin/ranges/LongProgression;->Companion:Lkotlin/ranges/LongProgression$Companion;

    int-to-long v1, p0

    const-wide/16 v5, -0x1

    move-wide v3, p1

    invoke-virtual/range {v0 .. v6}, Lkotlin/ranges/LongProgression$Companion;->fromClosedRange(JJJ)Lkotlin/ranges/LongProgression;

    move-result-object p0

    return-object p0
.end method

.method public static final downTo(JB)Lkotlin/ranges/LongProgression;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlin/ranges/LongProgression;->Companion:Lkotlin/ranges/LongProgression$Companion;

    int-to-long v3, p2

    const-wide/16 v5, -0x1

    move-wide v1, p0

    invoke-virtual/range {v0 .. v6}, Lkotlin/ranges/LongProgression$Companion;->fromClosedRange(JJJ)Lkotlin/ranges/LongProgression;

    move-result-object p0

    return-object p0
.end method

.method public static final downTo(JI)Lkotlin/ranges/LongProgression;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlin/ranges/LongProgression;->Companion:Lkotlin/ranges/LongProgression$Companion;

    int-to-long v3, p2

    const-wide/16 v5, -0x1

    move-wide v1, p0

    invoke-virtual/range {v0 .. v6}, Lkotlin/ranges/LongProgression$Companion;->fromClosedRange(JJJ)Lkotlin/ranges/LongProgression;

    move-result-object p0

    return-object p0
.end method

.method public static final downTo(JJ)Lkotlin/ranges/LongProgression;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlin/ranges/LongProgression;->Companion:Lkotlin/ranges/LongProgression$Companion;

    const-wide/16 v5, -0x1

    move-wide v1, p0

    move-wide v3, p2

    invoke-virtual/range {v0 .. v6}, Lkotlin/ranges/LongProgression$Companion;->fromClosedRange(JJJ)Lkotlin/ranges/LongProgression;

    move-result-object p0

    return-object p0
.end method

.method public static final downTo(JS)Lkotlin/ranges/LongProgression;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlin/ranges/LongProgression;->Companion:Lkotlin/ranges/LongProgression$Companion;

    int-to-long v3, p2

    const-wide/16 v5, -0x1

    move-wide v1, p0

    invoke-virtual/range {v0 .. v6}, Lkotlin/ranges/LongProgression$Companion;->fromClosedRange(JJJ)Lkotlin/ranges/LongProgression;

    move-result-object p0

    return-object p0
.end method

.method public static final downTo(SJ)Lkotlin/ranges/LongProgression;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlin/ranges/LongProgression;->Companion:Lkotlin/ranges/LongProgression$Companion;

    int-to-long v1, p0

    const-wide/16 v5, -0x1

    move-wide v3, p1

    invoke-virtual/range {v0 .. v6}, Lkotlin/ranges/LongProgression$Companion;->fromClosedRange(JJJ)Lkotlin/ranges/LongProgression;

    move-result-object p0

    return-object p0
.end method

.method public static final first(Lkotlin/ranges/CharProgression;)C
    .locals 3
    .param p0    # Lkotlin/ranges/CharProgression;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.7"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/ranges/CharProgression;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkotlin/ranges/CharProgression;->getFirst()C

    move-result p0

    return p0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Progression "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is empty."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final first(Lkotlin/ranges/IntProgression;)I
    .locals 3
    .param p0    # Lkotlin/ranges/IntProgression;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.7"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/ranges/IntProgression;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result p0

    return p0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Progression "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is empty."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final first(Lkotlin/ranges/LongProgression;)J
    .locals 3
    .param p0    # Lkotlin/ranges/LongProgression;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.7"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/ranges/LongProgression;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkotlin/ranges/LongProgression;->getFirst()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Progression "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is empty."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final firstOrNull(Lkotlin/ranges/CharProgression;)Ljava/lang/Character;
    .locals 1
    .param p0    # Lkotlin/ranges/CharProgression;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.7"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/ranges/CharProgression;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlin/ranges/CharProgression;->getFirst()C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final firstOrNull(Lkotlin/ranges/IntProgression;)Ljava/lang/Integer;
    .locals 1
    .param p0    # Lkotlin/ranges/IntProgression;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.7"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/ranges/IntProgression;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final firstOrNull(Lkotlin/ranges/LongProgression;)Ljava/lang/Long;
    .locals 2
    .param p0    # Lkotlin/ranges/LongProgression;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.7"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/ranges/LongProgression;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlin/ranges/LongProgression;->getFirst()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final synthetic floatRangeContains(Lkotlin/ranges/ClosedRange;B)Z
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed."
    .end annotation

    .annotation runtime Lkotlin/DeprecatedSinceKotlin;
        errorSince = "1.4"
        hiddenSince = "1.5"
        warningSince = "1.3"
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "floatRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/ranges/ClosedRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final floatRangeContains(Lkotlin/ranges/ClosedRange;D)Z
    .locals 1
    .param p0    # Lkotlin/ranges/ClosedRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ranges/ClosedRange<",
            "Ljava/lang/Float;",
            ">;D)Z"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "floatRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    double-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/ranges/ClosedRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic floatRangeContains(Lkotlin/ranges/ClosedRange;I)Z
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed."
    .end annotation

    .annotation runtime Lkotlin/DeprecatedSinceKotlin;
        errorSince = "1.4"
        hiddenSince = "1.5"
        warningSince = "1.3"
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "floatRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/ranges/ClosedRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic floatRangeContains(Lkotlin/ranges/ClosedRange;J)Z
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed."
    .end annotation

    .annotation runtime Lkotlin/DeprecatedSinceKotlin;
        errorSince = "1.4"
        hiddenSince = "1.5"
        warningSince = "1.3"
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "floatRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    long-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/ranges/ClosedRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic floatRangeContains(Lkotlin/ranges/ClosedRange;S)Z
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed."
    .end annotation

    .annotation runtime Lkotlin/DeprecatedSinceKotlin;
        errorSince = "1.4"
        hiddenSince = "1.5"
        warningSince = "1.3"
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "floatRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/ranges/ClosedRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final intRangeContains(Lkotlin/ranges/ClosedRange;B)Z
    .locals 1
    .param p0    # Lkotlin/ranges/ClosedRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ranges/ClosedRange<",
            "Ljava/lang/Integer;",
            ">;B)Z"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "intRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/ranges/ClosedRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic intRangeContains(Lkotlin/ranges/ClosedRange;D)Z
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed."
    .end annotation

    .annotation runtime Lkotlin/DeprecatedSinceKotlin;
        errorSince = "1.4"
        hiddenSince = "1.5"
        warningSince = "1.3"
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "intRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt___RangesKt;->toIntExactOrNull(D)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lkotlin/ranges/ClosedRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final synthetic intRangeContains(Lkotlin/ranges/ClosedRange;F)Z
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed."
    .end annotation

    .annotation runtime Lkotlin/DeprecatedSinceKotlin;
        errorSince = "1.4"
        hiddenSince = "1.5"
        warningSince = "1.3"
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "intRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/ranges/RangesKt___RangesKt;->toIntExactOrNull(F)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lkotlin/ranges/ClosedRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static intRangeContains(Lkotlin/ranges/ClosedRange;J)Z
    .locals 1
    .param p0    # Lkotlin/ranges/ClosedRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ranges/ClosedRange<",
            "Ljava/lang/Integer;",
            ">;J)Z"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "intRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt___RangesKt;->toIntExactOrNull(J)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lkotlin/ranges/ClosedRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final intRangeContains(Lkotlin/ranges/ClosedRange;S)Z
    .locals 1
    .param p0    # Lkotlin/ranges/ClosedRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ranges/ClosedRange<",
            "Ljava/lang/Integer;",
            ">;S)Z"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "intRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/ranges/ClosedRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final intRangeContains(Lkotlin/ranges/OpenEndRange;B)Z
    .locals 1
    .param p0    # Lkotlin/ranges/OpenEndRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ranges/OpenEndRange<",
            "Ljava/lang/Integer;",
            ">;B)Z"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.9"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalStdlibApi;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "intRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/ranges/OpenEndRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final intRangeContains(Lkotlin/ranges/OpenEndRange;J)Z
    .locals 1
    .param p0    # Lkotlin/ranges/OpenEndRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ranges/OpenEndRange<",
            "Ljava/lang/Integer;",
            ">;J)Z"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.9"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalStdlibApi;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "intRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt___RangesKt;->toIntExactOrNull(J)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lkotlin/ranges/OpenEndRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final intRangeContains(Lkotlin/ranges/OpenEndRange;S)Z
    .locals 1
    .param p0    # Lkotlin/ranges/OpenEndRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ranges/OpenEndRange<",
            "Ljava/lang/Integer;",
            ">;S)Z"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.9"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalStdlibApi;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "intRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/ranges/OpenEndRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final last(Lkotlin/ranges/CharProgression;)C
    .locals 3
    .param p0    # Lkotlin/ranges/CharProgression;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.7"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/ranges/CharProgression;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkotlin/ranges/CharProgression;->getLast()C

    move-result p0

    return p0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Progression "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is empty."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final last(Lkotlin/ranges/IntProgression;)I
    .locals 3
    .param p0    # Lkotlin/ranges/IntProgression;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.7"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/ranges/IntProgression;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result p0

    return p0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Progression "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is empty."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final last(Lkotlin/ranges/LongProgression;)J
    .locals 3
    .param p0    # Lkotlin/ranges/LongProgression;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.7"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/ranges/LongProgression;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkotlin/ranges/LongProgression;->getLast()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Progression "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is empty."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final lastOrNull(Lkotlin/ranges/CharProgression;)Ljava/lang/Character;
    .locals 1
    .param p0    # Lkotlin/ranges/CharProgression;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.7"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/ranges/CharProgression;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlin/ranges/CharProgression;->getLast()C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final lastOrNull(Lkotlin/ranges/IntProgression;)Ljava/lang/Integer;
    .locals 1
    .param p0    # Lkotlin/ranges/IntProgression;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.7"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/ranges/IntProgression;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final lastOrNull(Lkotlin/ranges/LongProgression;)Ljava/lang/Long;
    .locals 2
    .param p0    # Lkotlin/ranges/LongProgression;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.7"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/ranges/LongProgression;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlin/ranges/LongProgression;->getLast()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final longRangeContains(Lkotlin/ranges/ClosedRange;B)Z
    .locals 2
    .param p0    # Lkotlin/ranges/ClosedRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ranges/ClosedRange<",
            "Ljava/lang/Long;",
            ">;B)Z"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "longRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/ranges/ClosedRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic longRangeContains(Lkotlin/ranges/ClosedRange;D)Z
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed."
    .end annotation

    .annotation runtime Lkotlin/DeprecatedSinceKotlin;
        errorSince = "1.4"
        hiddenSince = "1.5"
        warningSince = "1.3"
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "longRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt___RangesKt;->toLongExactOrNull(D)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lkotlin/ranges/ClosedRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final synthetic longRangeContains(Lkotlin/ranges/ClosedRange;F)Z
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed."
    .end annotation

    .annotation runtime Lkotlin/DeprecatedSinceKotlin;
        errorSince = "1.4"
        hiddenSince = "1.5"
        warningSince = "1.3"
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "longRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/ranges/RangesKt___RangesKt;->toLongExactOrNull(F)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lkotlin/ranges/ClosedRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final longRangeContains(Lkotlin/ranges/ClosedRange;I)Z
    .locals 2
    .param p0    # Lkotlin/ranges/ClosedRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ranges/ClosedRange<",
            "Ljava/lang/Long;",
            ">;I)Z"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "longRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/ranges/ClosedRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final longRangeContains(Lkotlin/ranges/ClosedRange;S)Z
    .locals 2
    .param p0    # Lkotlin/ranges/ClosedRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ranges/ClosedRange<",
            "Ljava/lang/Long;",
            ">;S)Z"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "longRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/ranges/ClosedRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final longRangeContains(Lkotlin/ranges/OpenEndRange;B)Z
    .locals 2
    .param p0    # Lkotlin/ranges/OpenEndRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ranges/OpenEndRange<",
            "Ljava/lang/Long;",
            ">;B)Z"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.9"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalStdlibApi;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "longRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/ranges/OpenEndRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final longRangeContains(Lkotlin/ranges/OpenEndRange;I)Z
    .locals 2
    .param p0    # Lkotlin/ranges/OpenEndRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ranges/OpenEndRange<",
            "Ljava/lang/Long;",
            ">;I)Z"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.9"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalStdlibApi;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "longRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/ranges/OpenEndRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final longRangeContains(Lkotlin/ranges/OpenEndRange;S)Z
    .locals 2
    .param p0    # Lkotlin/ranges/OpenEndRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ranges/OpenEndRange<",
            "Ljava/lang/Long;",
            ">;S)Z"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.9"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalStdlibApi;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "longRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/ranges/OpenEndRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method private static final random(Lkotlin/ranges/CharRange;)C
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-static {p0, v0}, Lkotlin/ranges/RangesKt___RangesKt;->random(Lkotlin/ranges/CharRange;Lkotlin/random/Random;)C

    move-result p0

    return p0
.end method

.method public static final random(Lkotlin/ranges/CharRange;Lkotlin/random/Random;)C
    .locals 1
    .param p0    # Lkotlin/ranges/CharRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/random/Random;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "random"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lkotlin/ranges/CharProgression;->getFirst()C

    move-result v0

    invoke-virtual {p0}, Lkotlin/ranges/CharProgression;->getLast()C

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, v0, p0}, Lkotlin/random/Random;->nextInt(II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-char p0, p0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static final random(Lkotlin/ranges/IntRange;)I
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-static {p0, v0}, Lkotlin/ranges/RangesKt___RangesKt;->random(Lkotlin/ranges/IntRange;Lkotlin/random/Random;)I

    move-result p0

    return p0
.end method

.method public static final random(Lkotlin/ranges/IntRange;Lkotlin/random/Random;)I
    .locals 1
    .param p0    # Lkotlin/ranges/IntRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/random/Random;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "random"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1, p0}, Lkotlin/random/RandomKt;->nextInt(Lkotlin/random/Random;Lkotlin/ranges/IntRange;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static final random(Lkotlin/ranges/LongRange;)J
    .locals 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-static {p0, v0}, Lkotlin/ranges/RangesKt___RangesKt;->random(Lkotlin/ranges/LongRange;Lkotlin/random/Random;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final random(Lkotlin/ranges/LongRange;Lkotlin/random/Random;)J
    .locals 1
    .param p0    # Lkotlin/ranges/LongRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/random/Random;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "random"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1, p0}, Lkotlin/random/RandomKt;->nextLong(Lkotlin/random/Random;Lkotlin/ranges/LongRange;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static final randomOrNull(Lkotlin/ranges/CharRange;)Ljava/lang/Character;
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.4"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalStdlibApi;
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-static {p0, v0}, Lkotlin/ranges/RangesKt___RangesKt;->randomOrNull(Lkotlin/ranges/CharRange;Lkotlin/random/Random;)Ljava/lang/Character;

    move-result-object p0

    return-object p0
.end method

.method public static final randomOrNull(Lkotlin/ranges/CharRange;Lkotlin/random/Random;)Ljava/lang/Character;
    .locals 1
    .param p0    # Lkotlin/ranges/CharRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/random/Random;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.4"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalStdlibApi;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "random"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/ranges/CharRange;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lkotlin/ranges/CharProgression;->getFirst()C

    move-result v0

    invoke-virtual {p0}, Lkotlin/ranges/CharProgression;->getLast()C

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, v0, p0}, Lkotlin/random/Random;->nextInt(II)I

    move-result p0

    int-to-char p0, p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0
.end method

.method private static final randomOrNull(Lkotlin/ranges/IntRange;)Ljava/lang/Integer;
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.4"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalStdlibApi;
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-static {p0, v0}, Lkotlin/ranges/RangesKt___RangesKt;->randomOrNull(Lkotlin/ranges/IntRange;Lkotlin/random/Random;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static final randomOrNull(Lkotlin/ranges/IntRange;Lkotlin/random/Random;)Ljava/lang/Integer;
    .locals 1
    .param p0    # Lkotlin/ranges/IntRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/random/Random;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.4"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalStdlibApi;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "random"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/ranges/IntRange;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1, p0}, Lkotlin/random/RandomKt;->nextInt(Lkotlin/random/Random;Lkotlin/ranges/IntRange;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static final randomOrNull(Lkotlin/ranges/LongRange;)Ljava/lang/Long;
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.4"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalStdlibApi;
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-static {p0, v0}, Lkotlin/ranges/RangesKt___RangesKt;->randomOrNull(Lkotlin/ranges/LongRange;Lkotlin/random/Random;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static final randomOrNull(Lkotlin/ranges/LongRange;Lkotlin/random/Random;)Ljava/lang/Long;
    .locals 1
    .param p0    # Lkotlin/ranges/LongRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/random/Random;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.4"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalStdlibApi;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "random"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/ranges/LongRange;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1, p0}, Lkotlin/random/RandomKt;->nextLong(Lkotlin/random/Random;Lkotlin/ranges/LongRange;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static final reversed(Lkotlin/ranges/CharProgression;)Lkotlin/ranges/CharProgression;
    .locals 3
    .param p0    # Lkotlin/ranges/CharProgression;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/ranges/CharProgression;->Companion:Lkotlin/ranges/CharProgression$Companion;

    invoke-virtual {p0}, Lkotlin/ranges/CharProgression;->getLast()C

    move-result v1

    invoke-virtual {p0}, Lkotlin/ranges/CharProgression;->getFirst()C

    move-result v2

    invoke-virtual {p0}, Lkotlin/ranges/CharProgression;->getStep()I

    move-result p0

    neg-int p0, p0

    invoke-virtual {v0, v1, v2, p0}, Lkotlin/ranges/CharProgression$Companion;->fromClosedRange(CCI)Lkotlin/ranges/CharProgression;

    move-result-object p0

    return-object p0
.end method

.method public static final reversed(Lkotlin/ranges/IntProgression;)Lkotlin/ranges/IntProgression;
    .locals 3
    .param p0    # Lkotlin/ranges/IntProgression;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/ranges/IntProgression;->Companion:Lkotlin/ranges/IntProgression$Companion;

    invoke-virtual {p0}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v1

    invoke-virtual {p0}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v2

    invoke-virtual {p0}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result p0

    neg-int p0, p0

    invoke-virtual {v0, v1, v2, p0}, Lkotlin/ranges/IntProgression$Companion;->fromClosedRange(III)Lkotlin/ranges/IntProgression;

    move-result-object p0

    return-object p0
.end method

.method public static final reversed(Lkotlin/ranges/LongProgression;)Lkotlin/ranges/LongProgression;
    .locals 8
    .param p0    # Lkotlin/ranges/LongProgression;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlin/ranges/LongProgression;->Companion:Lkotlin/ranges/LongProgression$Companion;

    invoke-virtual {p0}, Lkotlin/ranges/LongProgression;->getLast()J

    move-result-wide v2

    invoke-virtual {p0}, Lkotlin/ranges/LongProgression;->getFirst()J

    move-result-wide v4

    invoke-virtual {p0}, Lkotlin/ranges/LongProgression;->getStep()J

    move-result-wide v6

    neg-long v6, v6

    invoke-virtual/range {v1 .. v7}, Lkotlin/ranges/LongProgression$Companion;->fromClosedRange(JJJ)Lkotlin/ranges/LongProgression;

    move-result-object p0

    return-object p0
.end method

.method public static final shortRangeContains(Lkotlin/ranges/ClosedRange;B)Z
    .locals 1
    .param p0    # Lkotlin/ranges/ClosedRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ranges/ClosedRange<",
            "Ljava/lang/Short;",
            ">;B)Z"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "shortRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-short p1, p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/ranges/ClosedRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic shortRangeContains(Lkotlin/ranges/ClosedRange;D)Z
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed."
    .end annotation

    .annotation runtime Lkotlin/DeprecatedSinceKotlin;
        errorSince = "1.4"
        hiddenSince = "1.5"
        warningSince = "1.3"
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "shortRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt___RangesKt;->toShortExactOrNull(D)Ljava/lang/Short;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lkotlin/ranges/ClosedRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final synthetic shortRangeContains(Lkotlin/ranges/ClosedRange;F)Z
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed."
    .end annotation

    .annotation runtime Lkotlin/DeprecatedSinceKotlin;
        errorSince = "1.4"
        hiddenSince = "1.5"
        warningSince = "1.3"
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "shortRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/ranges/RangesKt___RangesKt;->toShortExactOrNull(F)Ljava/lang/Short;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lkotlin/ranges/ClosedRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final shortRangeContains(Lkotlin/ranges/ClosedRange;I)Z
    .locals 1
    .param p0    # Lkotlin/ranges/ClosedRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ranges/ClosedRange<",
            "Ljava/lang/Short;",
            ">;I)Z"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "shortRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/ranges/RangesKt___RangesKt;->toShortExactOrNull(I)Ljava/lang/Short;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lkotlin/ranges/ClosedRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final shortRangeContains(Lkotlin/ranges/ClosedRange;J)Z
    .locals 1
    .param p0    # Lkotlin/ranges/ClosedRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ranges/ClosedRange<",
            "Ljava/lang/Short;",
            ">;J)Z"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "shortRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt___RangesKt;->toShortExactOrNull(J)Ljava/lang/Short;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lkotlin/ranges/ClosedRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final shortRangeContains(Lkotlin/ranges/OpenEndRange;B)Z
    .locals 1
    .param p0    # Lkotlin/ranges/OpenEndRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ranges/OpenEndRange<",
            "Ljava/lang/Short;",
            ">;B)Z"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.9"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalStdlibApi;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "shortRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-short p1, p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/ranges/OpenEndRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static final shortRangeContains(Lkotlin/ranges/OpenEndRange;I)Z
    .locals 1
    .param p0    # Lkotlin/ranges/OpenEndRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ranges/OpenEndRange<",
            "Ljava/lang/Short;",
            ">;I)Z"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.9"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalStdlibApi;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "shortRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/ranges/RangesKt___RangesKt;->toShortExactOrNull(I)Ljava/lang/Short;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lkotlin/ranges/OpenEndRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final shortRangeContains(Lkotlin/ranges/OpenEndRange;J)Z
    .locals 1
    .param p0    # Lkotlin/ranges/OpenEndRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ranges/OpenEndRange<",
            "Ljava/lang/Short;",
            ">;J)Z"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.9"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalStdlibApi;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "shortRangeContains"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt___RangesKt;->toShortExactOrNull(J)Ljava/lang/Short;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lkotlin/ranges/OpenEndRange;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final step(Lkotlin/ranges/CharProgression;I)Lkotlin/ranges/CharProgression;
    .locals 3
    .param p0    # Lkotlin/ranges/CharProgression;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt__RangesKt;->checkStepIsPositive(ZLjava/lang/Number;)V

    sget-object v0, Lkotlin/ranges/CharProgression;->Companion:Lkotlin/ranges/CharProgression$Companion;

    invoke-virtual {p0}, Lkotlin/ranges/CharProgression;->getFirst()C

    move-result v1

    invoke-virtual {p0}, Lkotlin/ranges/CharProgression;->getLast()C

    move-result v2

    invoke-virtual {p0}, Lkotlin/ranges/CharProgression;->getStep()I

    move-result p0

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    neg-int p1, p1

    :goto_1
    invoke-virtual {v0, v1, v2, p1}, Lkotlin/ranges/CharProgression$Companion;->fromClosedRange(CCI)Lkotlin/ranges/CharProgression;

    move-result-object p0

    return-object p0
.end method

.method public static step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;
    .locals 3
    .param p0    # Lkotlin/ranges/IntProgression;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt__RangesKt;->checkStepIsPositive(ZLjava/lang/Number;)V

    sget-object v0, Lkotlin/ranges/IntProgression;->Companion:Lkotlin/ranges/IntProgression$Companion;

    invoke-virtual {p0}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v1

    invoke-virtual {p0}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v2

    invoke-virtual {p0}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result p0

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    neg-int p1, p1

    :goto_1
    invoke-virtual {v0, v1, v2, p1}, Lkotlin/ranges/IntProgression$Companion;->fromClosedRange(III)Lkotlin/ranges/IntProgression;

    move-result-object p0

    return-object p0
.end method

.method public static final step(Lkotlin/ranges/LongProgression;J)Lkotlin/ranges/LongProgression;
    .locals 11
    .param p0    # Lkotlin/ranges/LongProgression;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt__RangesKt;->checkStepIsPositive(ZLjava/lang/Number;)V

    sget-object v4, Lkotlin/ranges/LongProgression;->Companion:Lkotlin/ranges/LongProgression$Companion;

    invoke-virtual {p0}, Lkotlin/ranges/LongProgression;->getFirst()J

    move-result-wide v5

    invoke-virtual {p0}, Lkotlin/ranges/LongProgression;->getLast()J

    move-result-wide v7

    invoke-virtual {p0}, Lkotlin/ranges/LongProgression;->getStep()J

    move-result-wide v2

    cmp-long p0, v2, v0

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    neg-long p1, p1

    :goto_1
    move-wide v9, p1

    invoke-virtual/range {v4 .. v10}, Lkotlin/ranges/LongProgression$Companion;->fromClosedRange(JJJ)Lkotlin/ranges/LongProgression;

    move-result-object p0

    return-object p0
.end method

.method public static final toByteExactOrNull(D)Ljava/lang/Byte;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-wide/high16 v0, -0x3fa0000000000000L    # -128.0

    cmpg-double v0, v0, p0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    const-wide v2, 0x405fc00000000000L    # 127.0

    cmpg-double v0, p0, v2

    if-gtz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    double-to-int p0, p0

    int-to-byte p0, p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final toByteExactOrNull(F)Ljava/lang/Byte;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/high16 v0, -0x3d000000    # -128.0f

    cmpg-float v0, v0, p0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    const/high16 v0, 0x42fe0000    # 127.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    float-to-int p0, p0

    int-to-byte p0, p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final toByteExactOrNull(I)Ljava/lang/Byte;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lkotlin/ranges/IntRange;

    const/16 v1, -0x80

    const/16 v2, 0x7f

    invoke-direct {v0, v1, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v0, p0}, Lkotlin/ranges/IntRange;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-byte p0, p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final toByteExactOrNull(J)Ljava/lang/Byte;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lkotlin/ranges/LongRange;

    const-wide/16 v1, -0x80

    const-wide/16 v3, 0x7f

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    invoke-virtual {v0, p0, p1}, Lkotlin/ranges/LongRange;->contains(J)Z

    move-result v0

    if-eqz v0, :cond_0

    long-to-int p0, p0

    int-to-byte p0, p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final toByteExactOrNull(S)Ljava/lang/Byte;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lkotlin/ranges/IntRange;

    const/16 v1, -0x80

    const/16 v2, 0x7f

    invoke-direct {v0, v1, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v0, p0}, Lkotlin/ranges/RangesKt___RangesKt;->intRangeContains(Lkotlin/ranges/ClosedRange;S)Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-byte p0, p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final toIntExactOrNull(D)Ljava/lang/Integer;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-wide/high16 v0, -0x3e20000000000000L    # -2.147483648E9

    cmpg-double v0, v0, p0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    cmpg-double v0, p0, v2

    if-gtz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    double-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final toIntExactOrNull(F)Ljava/lang/Integer;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/high16 v0, -0x31000000

    cmpg-float v0, v0, p0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    const/high16 v0, 0x4f000000

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final toIntExactOrNull(J)Ljava/lang/Integer;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lkotlin/ranges/LongRange;

    const-wide/32 v1, -0x80000000

    const-wide/32 v3, 0x7fffffff

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    invoke-virtual {v0, p0, p1}, Lkotlin/ranges/LongRange;->contains(J)Z

    move-result v0

    if-eqz v0, :cond_0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final toLongExactOrNull(D)Ljava/lang/Long;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double v0, v0, p0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v0, p0, v2

    if-gtz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    double-to-long p0, p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final toLongExactOrNull(F)Ljava/lang/Long;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/high16 v0, -0x21000000

    cmpg-float v0, v0, p0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    const/high16 v0, 0x5f000000

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    float-to-long v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final toShortExactOrNull(D)Ljava/lang/Short;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-wide/high16 v0, -0x3f20000000000000L    # -32768.0

    cmpg-double v0, v0, p0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    const-wide v2, 0x40dfffc000000000L    # 32767.0

    cmpg-double v0, p0, v2

    if-gtz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    double-to-int p0, p0

    int-to-short p0, p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final toShortExactOrNull(F)Ljava/lang/Short;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/high16 v0, -0x39000000    # -32768.0f

    cmpg-float v0, v0, p0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    const v0, 0x46fffe00    # 32767.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    float-to-int p0, p0

    int-to-short p0, p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final toShortExactOrNull(I)Ljava/lang/Short;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lkotlin/ranges/IntRange;

    const/16 v1, -0x8000

    const/16 v2, 0x7fff

    invoke-direct {v0, v1, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v0, p0}, Lkotlin/ranges/IntRange;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-short p0, p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final toShortExactOrNull(J)Ljava/lang/Short;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lkotlin/ranges/LongRange;

    const-wide/16 v1, -0x8000

    const-wide/16 v3, 0x7fff

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    invoke-virtual {v0, p0, p1}, Lkotlin/ranges/LongRange;->contains(J)Z

    move-result v0

    if-eqz v0, :cond_0

    long-to-int p0, p0

    int-to-short p0, p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final until(CC)Lkotlin/ranges/CharRange;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    if-gtz v0, :cond_0

    sget-object p0, Lkotlin/ranges/CharRange;->Companion:Lkotlin/ranges/CharRange$Companion;

    invoke-virtual {p0}, Lkotlin/ranges/CharRange$Companion;->getEMPTY()Lkotlin/ranges/CharRange;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lkotlin/ranges/CharRange;

    add-int/lit8 p1, p1, -0x1

    int-to-char p1, p1

    invoke-direct {v0, p0, p1}, Lkotlin/ranges/CharRange;-><init>(CC)V

    return-object v0
.end method

.method public static final until(BB)Lkotlin/ranges/IntRange;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lkotlin/ranges/IntRange;

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v0, p0, p1}, Lkotlin/ranges/IntRange;-><init>(II)V

    return-object v0
.end method

.method public static final until(BI)Lkotlin/ranges/IntRange;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/high16 v0, -0x80000000

    if-gt p1, v0, :cond_0

    sget-object p0, Lkotlin/ranges/IntRange;->Companion:Lkotlin/ranges/IntRange$Companion;

    invoke-virtual {p0}, Lkotlin/ranges/IntRange$Companion;->getEMPTY()Lkotlin/ranges/IntRange;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lkotlin/ranges/IntRange;

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v0, p0, p1}, Lkotlin/ranges/IntRange;-><init>(II)V

    return-object v0
.end method

.method public static final until(BS)Lkotlin/ranges/IntRange;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lkotlin/ranges/IntRange;

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v0, p0, p1}, Lkotlin/ranges/IntRange;-><init>(II)V

    return-object v0
.end method

.method public static final until(IB)Lkotlin/ranges/IntRange;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lkotlin/ranges/IntRange;

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v0, p0, p1}, Lkotlin/ranges/IntRange;-><init>(II)V

    return-object v0
.end method

.method public static until(II)Lkotlin/ranges/IntRange;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/high16 v0, -0x80000000

    if-gt p1, v0, :cond_0

    sget-object p0, Lkotlin/ranges/IntRange;->Companion:Lkotlin/ranges/IntRange$Companion;

    invoke-virtual {p0}, Lkotlin/ranges/IntRange$Companion;->getEMPTY()Lkotlin/ranges/IntRange;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lkotlin/ranges/IntRange;

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v0, p0, p1}, Lkotlin/ranges/IntRange;-><init>(II)V

    return-object v0
.end method

.method public static final until(IS)Lkotlin/ranges/IntRange;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lkotlin/ranges/IntRange;

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v0, p0, p1}, Lkotlin/ranges/IntRange;-><init>(II)V

    return-object v0
.end method

.method public static final until(SB)Lkotlin/ranges/IntRange;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lkotlin/ranges/IntRange;

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v0, p0, p1}, Lkotlin/ranges/IntRange;-><init>(II)V

    return-object v0
.end method

.method public static final until(SI)Lkotlin/ranges/IntRange;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/high16 v0, -0x80000000

    if-gt p1, v0, :cond_0

    sget-object p0, Lkotlin/ranges/IntRange;->Companion:Lkotlin/ranges/IntRange$Companion;

    invoke-virtual {p0}, Lkotlin/ranges/IntRange$Companion;->getEMPTY()Lkotlin/ranges/IntRange;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lkotlin/ranges/IntRange;

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v0, p0, p1}, Lkotlin/ranges/IntRange;-><init>(II)V

    return-object v0
.end method

.method public static final until(SS)Lkotlin/ranges/IntRange;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lkotlin/ranges/IntRange;

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v0, p0, p1}, Lkotlin/ranges/IntRange;-><init>(II)V

    return-object v0
.end method

.method public static final until(BJ)Lkotlin/ranges/LongRange;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    sget-object p0, Lkotlin/ranges/LongRange;->Companion:Lkotlin/ranges/LongRange$Companion;

    invoke-virtual {p0}, Lkotlin/ranges/LongRange$Companion;->getEMPTY()Lkotlin/ranges/LongRange;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lkotlin/ranges/LongRange;

    int-to-long v1, p0

    const-wide/16 v3, 0x1

    sub-long/2addr p1, v3

    invoke-direct {v0, v1, v2, p1, p2}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    return-object v0
.end method

.method public static final until(IJ)Lkotlin/ranges/LongRange;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    sget-object p0, Lkotlin/ranges/LongRange;->Companion:Lkotlin/ranges/LongRange$Companion;

    invoke-virtual {p0}, Lkotlin/ranges/LongRange$Companion;->getEMPTY()Lkotlin/ranges/LongRange;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lkotlin/ranges/LongRange;

    int-to-long v1, p0

    const-wide/16 v3, 0x1

    sub-long/2addr p1, v3

    invoke-direct {v0, v1, v2, p1, p2}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    return-object v0
.end method

.method public static final until(JB)Lkotlin/ranges/LongRange;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lkotlin/ranges/LongRange;

    int-to-long v1, p2

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-direct {v0, p0, p1, v1, v2}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    return-object v0
.end method

.method public static final until(JI)Lkotlin/ranges/LongRange;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lkotlin/ranges/LongRange;

    int-to-long v1, p2

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-direct {v0, p0, p1, v1, v2}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    return-object v0
.end method

.method public static final until(JJ)Lkotlin/ranges/LongRange;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    sget-object p0, Lkotlin/ranges/LongRange;->Companion:Lkotlin/ranges/LongRange$Companion;

    invoke-virtual {p0}, Lkotlin/ranges/LongRange$Companion;->getEMPTY()Lkotlin/ranges/LongRange;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lkotlin/ranges/LongRange;

    const-wide/16 v1, 0x1

    sub-long/2addr p2, v1

    invoke-direct {v0, p0, p1, p2, p3}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    return-object v0
.end method

.method public static final until(JS)Lkotlin/ranges/LongRange;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lkotlin/ranges/LongRange;

    int-to-long v1, p2

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-direct {v0, p0, p1, v1, v2}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    return-object v0
.end method

.method public static final until(SJ)Lkotlin/ranges/LongRange;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    sget-object p0, Lkotlin/ranges/LongRange;->Companion:Lkotlin/ranges/LongRange$Companion;

    invoke-virtual {p0}, Lkotlin/ranges/LongRange$Companion;->getEMPTY()Lkotlin/ranges/LongRange;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lkotlin/ranges/LongRange;

    int-to-long v1, p0

    const-wide/16 v3, 0x1

    sub-long/2addr p1, v3

    invoke-direct {v0, v1, v2, p1, p2}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    return-object v0
.end method
