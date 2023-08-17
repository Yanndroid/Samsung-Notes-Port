.class public Lcom/sun/imageio/plugins/png/RowFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final abs(I)I
    .locals 0

    if-gez p0, :cond_0

    neg-int p0, p0

    :cond_0
    return p0
.end method

.method public static subFilter([B[BII)I
    .locals 4

    const/4 v0, 0x0

    move v1, p2

    :goto_0
    add-int v2, p3, p2

    if-ge v1, v2, :cond_0

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    sub-int v3, v1, p2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    sub-int/2addr v2, v3

    int-to-byte v3, v2

    aput-byte v3, p1, v1

    invoke-static {v2}, Lcom/sun/imageio/plugins/png/RowFilter;->abs(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static upFilter([B[B[BII)I
    .locals 4

    const/4 v0, 0x0

    move v1, p3

    :goto_0
    add-int v2, p4, p3

    if-ge v1, v2, :cond_0

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    sub-int/2addr v2, v3

    int-to-byte v3, v2

    aput-byte v3, p2, v1

    invoke-static {v2}, Lcom/sun/imageio/plugins/png/RowFilter;->abs(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public filterRow(I[B[B[[BII)I
    .locals 16

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p5

    move/from16 v3, p6

    const/4 v4, 0x3

    const/4 v5, 0x0

    move/from16 v6, p1

    if-eq v6, v4, :cond_0

    aget-object v1, p4, v5

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v5

    :cond_0
    const/4 v6, 0x5

    new-array v7, v6, [I

    move v8, v5

    :goto_0
    if-ge v8, v6, :cond_1

    const v9, 0x7fffffff

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    move v8, v3

    move v9, v5

    :goto_1
    add-int v10, v2, v3

    if-ge v8, v10, :cond_2

    aget-byte v10, v0, v8

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    aput v9, v7, v5

    const/4 v8, 0x1

    aget-object v9, p4, v8

    invoke-static {v0, v9, v3, v2}, Lcom/sun/imageio/plugins/png/RowFilter;->subFilter([B[BII)I

    move-result v9

    aput v9, v7, v8

    const/4 v9, 0x2

    aget-object v11, p4, v9

    invoke-static {v0, v1, v11, v3, v2}, Lcom/sun/imageio/plugins/png/RowFilter;->upFilter([B[B[BII)I

    move-result v11

    aput v11, v7, v9

    aget-object v11, p4, v4

    move v12, v3

    move v13, v5

    :goto_2
    if-ge v12, v10, :cond_3

    aget-byte v14, v0, v12

    and-int/lit16 v14, v14, 0xff

    sub-int v15, v12, v3

    aget-byte v15, v0, v15

    and-int/lit16 v15, v15, 0xff

    aget-byte v8, v1, v12

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v15, v8

    div-int/2addr v15, v9

    sub-int/2addr v14, v15

    int-to-byte v8, v14

    aput-byte v8, v11, v12

    invoke-static {v14}, Lcom/sun/imageio/plugins/png/RowFilter;->abs(I)I

    move-result v8

    add-int/2addr v13, v8

    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    aput v13, v7, v4

    const/4 v4, 0x4

    aget-object v8, p4, v4

    move v9, v3

    move v11, v5

    :goto_3
    if-ge v9, v10, :cond_4

    aget-byte v12, v0, v9

    and-int/lit16 v12, v12, 0xff

    sub-int v13, v9, v3

    aget-byte v14, v0, v13

    and-int/lit16 v14, v14, 0xff

    aget-byte v15, v1, v9

    and-int/lit16 v15, v15, 0xff

    aget-byte v13, v1, v13

    and-int/lit16 v13, v13, 0xff

    move-object/from16 v6, p0

    invoke-virtual {v6, v14, v15, v13}, Lcom/sun/imageio/plugins/png/RowFilter;->paethPredictor(III)I

    move-result v13

    sub-int/2addr v12, v13

    int-to-byte v13, v12

    aput-byte v13, v8, v9

    invoke-static {v12}, Lcom/sun/imageio/plugins/png/RowFilter;->abs(I)I

    move-result v12

    add-int/2addr v11, v12

    add-int/lit8 v9, v9, 0x1

    const/4 v6, 0x5

    goto :goto_3

    :cond_4
    move-object/from16 v6, p0

    aput v11, v7, v4

    aget v1, v7, v5

    move v4, v5

    const/4 v8, 0x1

    const/4 v9, 0x5

    :goto_4
    if-ge v8, v9, :cond_6

    aget v10, v7, v8

    if-ge v10, v1, :cond_5

    aget v1, v7, v8

    move v4, v8

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_6
    if-nez v4, :cond_7

    aget-object v1, p4, v5

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    return v4
.end method

.method public final paethPredictor(III)I
    .locals 3

    add-int v0, p1, p2

    sub-int/2addr v0, p3

    sub-int v1, v0, p1

    invoke-static {v1}, Lcom/sun/imageio/plugins/png/RowFilter;->abs(I)I

    move-result v1

    sub-int v2, v0, p2

    invoke-static {v2}, Lcom/sun/imageio/plugins/png/RowFilter;->abs(I)I

    move-result v2

    sub-int/2addr v0, p3

    invoke-static {v0}, Lcom/sun/imageio/plugins/png/RowFilter;->abs(I)I

    move-result v0

    if-gt v1, v2, :cond_0

    if-gt v1, v0, :cond_0

    return p1

    :cond_0
    if-gt v2, v0, :cond_1

    return p2

    :cond_1
    return p3
.end method
