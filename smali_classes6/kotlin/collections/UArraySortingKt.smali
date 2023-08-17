.class public final Lkotlin/collections/UArraySortingKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static final partition--nroSd4([JII)I
    .locals 6
    .annotation build Lkotlin/ExperimentalUnsignedTypes;
    .end annotation

    add-int v0, p1, p2

    div-int/lit8 v0, v0, 0x2

    invoke-static {p0, v0}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v0

    :cond_0
    :goto_0
    if-gt p1, p2, :cond_3

    :goto_1
    invoke-static {p0, p1}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lkotlin/d;->a(JJ)I

    move-result v2

    if-gez v2, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-static {p0, p2}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lkotlin/d;->a(JJ)I

    move-result v2

    if-lez v2, :cond_2

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_2
    if-gt p1, p2, :cond_0

    invoke-static {p0, p1}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v2

    invoke-static {p0, p2}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v4

    invoke-static {p0, p1, v4, v5}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    invoke-static {p0, p2, v2, v3}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    return p1
.end method

.method private static final partition-4UcCI2c([BII)I
    .locals 3
    .annotation build Lkotlin/ExperimentalUnsignedTypes;
    .end annotation

    add-int v0, p1, p2

    div-int/lit8 v0, v0, 0x2

    invoke-static {p0, v0}, Lkotlin/UByteArray;->get-w2LRezQ([BI)B

    move-result v0

    :cond_0
    :goto_0
    if-gt p1, p2, :cond_3

    :goto_1
    invoke-static {p0, p1}, Lkotlin/UByteArray;->get-w2LRezQ([BI)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, v0, 0xff

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v1

    if-gez v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-static {p0, p2}, Lkotlin/UByteArray;->get-w2LRezQ([BI)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v1

    if-lez v1, :cond_2

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_2
    if-gt p1, p2, :cond_0

    invoke-static {p0, p1}, Lkotlin/UByteArray;->get-w2LRezQ([BI)B

    move-result v1

    invoke-static {p0, p2}, Lkotlin/UByteArray;->get-w2LRezQ([BI)B

    move-result v2

    invoke-static {p0, p1, v2}, Lkotlin/UByteArray;->set-VurrAj0([BIB)V

    invoke-static {p0, p2, v1}, Lkotlin/UByteArray;->set-VurrAj0([BIB)V

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    return p1
.end method

.method private static final partition-Aa5vz7o([SII)I
    .locals 4
    .annotation build Lkotlin/ExperimentalUnsignedTypes;
    .end annotation

    add-int v0, p1, p2

    div-int/lit8 v0, v0, 0x2

    invoke-static {p0, v0}, Lkotlin/UShortArray;->get-Mh2AYeg([SI)S

    move-result v0

    :cond_0
    :goto_0
    if-gt p1, p2, :cond_3

    :goto_1
    invoke-static {p0, p1}, Lkotlin/UShortArray;->get-Mh2AYeg([SI)S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    and-int v3, v0, v2

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v1

    if-gez v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-static {p0, p2}, Lkotlin/UShortArray;->get-Mh2AYeg([SI)S

    move-result v1

    and-int/2addr v1, v2

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v1

    if-lez v1, :cond_2

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_2
    if-gt p1, p2, :cond_0

    invoke-static {p0, p1}, Lkotlin/UShortArray;->get-Mh2AYeg([SI)S

    move-result v1

    invoke-static {p0, p2}, Lkotlin/UShortArray;->get-Mh2AYeg([SI)S

    move-result v2

    invoke-static {p0, p1, v2}, Lkotlin/UShortArray;->set-01HTLdE([SIS)V

    invoke-static {p0, p2, v1}, Lkotlin/UShortArray;->set-01HTLdE([SIS)V

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    return p1
.end method

.method private static final partition-oBK06Vg([III)I
    .locals 3
    .annotation build Lkotlin/ExperimentalUnsignedTypes;
    .end annotation

    add-int v0, p1, p2

    div-int/lit8 v0, v0, 0x2

    invoke-static {p0, v0}, Lkotlin/UIntArray;->get-pVg5ArA([II)I

    move-result v0

    :cond_0
    :goto_0
    if-gt p1, p2, :cond_3

    :goto_1
    invoke-static {p0, p1}, Lkotlin/UIntArray;->get-pVg5ArA([II)I

    move-result v1

    invoke-static {v1, v0}, Lkotlin/a;->a(II)I

    move-result v1

    if-gez v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-static {p0, p2}, Lkotlin/UIntArray;->get-pVg5ArA([II)I

    move-result v1

    invoke-static {v1, v0}, Lkotlin/a;->a(II)I

    move-result v1

    if-lez v1, :cond_2

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_2
    if-gt p1, p2, :cond_0

    invoke-static {p0, p1}, Lkotlin/UIntArray;->get-pVg5ArA([II)I

    move-result v1

    invoke-static {p0, p2}, Lkotlin/UIntArray;->get-pVg5ArA([II)I

    move-result v2

    invoke-static {p0, p1, v2}, Lkotlin/UIntArray;->set-VXSXFK8([III)V

    invoke-static {p0, p2, v1}, Lkotlin/UIntArray;->set-VXSXFK8([III)V

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    return p1
.end method

.method private static final quickSort--nroSd4([JII)V
    .locals 2
    .annotation build Lkotlin/ExperimentalUnsignedTypes;
    .end annotation

    invoke-static {p0, p1, p2}, Lkotlin/collections/UArraySortingKt;->partition--nroSd4([JII)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-ge p1, v1, :cond_0

    invoke-static {p0, p1, v1}, Lkotlin/collections/UArraySortingKt;->quickSort--nroSd4([JII)V

    :cond_0
    if-ge v0, p2, :cond_1

    invoke-static {p0, v0, p2}, Lkotlin/collections/UArraySortingKt;->quickSort--nroSd4([JII)V

    :cond_1
    return-void
.end method

.method private static final quickSort-4UcCI2c([BII)V
    .locals 2
    .annotation build Lkotlin/ExperimentalUnsignedTypes;
    .end annotation

    invoke-static {p0, p1, p2}, Lkotlin/collections/UArraySortingKt;->partition-4UcCI2c([BII)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-ge p1, v1, :cond_0

    invoke-static {p0, p1, v1}, Lkotlin/collections/UArraySortingKt;->quickSort-4UcCI2c([BII)V

    :cond_0
    if-ge v0, p2, :cond_1

    invoke-static {p0, v0, p2}, Lkotlin/collections/UArraySortingKt;->quickSort-4UcCI2c([BII)V

    :cond_1
    return-void
.end method

.method private static final quickSort-Aa5vz7o([SII)V
    .locals 2
    .annotation build Lkotlin/ExperimentalUnsignedTypes;
    .end annotation

    invoke-static {p0, p1, p2}, Lkotlin/collections/UArraySortingKt;->partition-Aa5vz7o([SII)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-ge p1, v1, :cond_0

    invoke-static {p0, p1, v1}, Lkotlin/collections/UArraySortingKt;->quickSort-Aa5vz7o([SII)V

    :cond_0
    if-ge v0, p2, :cond_1

    invoke-static {p0, v0, p2}, Lkotlin/collections/UArraySortingKt;->quickSort-Aa5vz7o([SII)V

    :cond_1
    return-void
.end method

.method private static final quickSort-oBK06Vg([III)V
    .locals 2
    .annotation build Lkotlin/ExperimentalUnsignedTypes;
    .end annotation

    invoke-static {p0, p1, p2}, Lkotlin/collections/UArraySortingKt;->partition-oBK06Vg([III)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-ge p1, v1, :cond_0

    invoke-static {p0, p1, v1}, Lkotlin/collections/UArraySortingKt;->quickSort-oBK06Vg([III)V

    :cond_0
    if-ge v0, p2, :cond_1

    invoke-static {p0, v0, p2}, Lkotlin/collections/UArraySortingKt;->quickSort-oBK06Vg([III)V

    :cond_1
    return-void
.end method

.method public static final sortArray--nroSd4([JII)V
    .locals 1
    .param p0    # [J
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/ExperimentalUnsignedTypes;
    .end annotation

    const-string v0, "array"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x1

    invoke-static {p0, p1, p2}, Lkotlin/collections/UArraySortingKt;->quickSort--nroSd4([JII)V

    return-void
.end method

.method public static final sortArray-4UcCI2c([BII)V
    .locals 1
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/ExperimentalUnsignedTypes;
    .end annotation

    const-string v0, "array"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x1

    invoke-static {p0, p1, p2}, Lkotlin/collections/UArraySortingKt;->quickSort-4UcCI2c([BII)V

    return-void
.end method

.method public static final sortArray-Aa5vz7o([SII)V
    .locals 1
    .param p0    # [S
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/ExperimentalUnsignedTypes;
    .end annotation

    const-string v0, "array"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x1

    invoke-static {p0, p1, p2}, Lkotlin/collections/UArraySortingKt;->quickSort-Aa5vz7o([SII)V

    return-void
.end method

.method public static final sortArray-oBK06Vg([III)V
    .locals 1
    .param p0    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/ExperimentalUnsignedTypes;
    .end annotation

    const-string v0, "array"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x1

    invoke-static {p0, p1, p2}, Lkotlin/collections/UArraySortingKt;->quickSort-oBK06Vg([III)V

    return-void
.end method
