.class public Lcom/sun/imageio/plugins/common/ReaderUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeUpdatedPixels(IIIIIIIII[II)V
    .locals 13

    move v0, p0

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, v1

    move v4, v3

    move v5, v2

    move v6, v5

    move v7, v6

    :goto_0
    const/4 v8, 0x1

    move/from16 v9, p7

    if-ge v3, v9, :cond_7

    mul-int v10, v3, p8

    add-int v10, p6, v10

    if-ge v10, v0, :cond_0

    :goto_1
    move/from16 v11, p3

    goto :goto_2

    :cond_0
    sub-int v11, v10, v0

    rem-int v12, v11, p5

    if-eqz v12, :cond_1

    goto :goto_1

    :cond_1
    add-int v12, v0, p1

    if-lt v10, v12, :cond_2

    goto :goto_5

    :cond_2
    div-int v11, v11, p5

    add-int v10, p2, v11

    move/from16 v11, p3

    if-ge v10, v11, :cond_3

    :goto_2
    move/from16 v12, p4

    goto :goto_4

    :cond_3
    move/from16 v12, p4

    if-le v10, v12, :cond_4

    goto :goto_5

    :cond_4
    if-nez v4, :cond_5

    move v4, v8

    move v5, v10

    goto :goto_3

    :cond_5
    if-ne v6, v2, :cond_6

    move v6, v10

    :cond_6
    :goto_3
    move v7, v10

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    :goto_5
    aput v5, p9, p10

    add-int/lit8 v0, p10, 0x2

    if-nez v4, :cond_8

    aput v1, p9, v0

    goto :goto_6

    :cond_8
    sub-int/2addr v7, v5

    add-int/2addr v7, v8

    aput v7, p9, v0

    :goto_6
    add-int/lit8 v0, p10, 0x4

    sub-int/2addr v6, v5

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p9, v0

    return-void
.end method

.method public static computeUpdatedPixels(Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/Point;IIIIIIIIIIII)[I
    .locals 14

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x6

    new-array v2, v2, [I

    iget v3, v0, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget v4, v0, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iget v5, v1, Lorg/apache/poi/java/awt/Point;->x:I

    const/4 v13, 0x0

    move/from16 v6, p2

    move/from16 v7, p4

    move/from16 v8, p6

    move/from16 v9, p8

    move/from16 v10, p10

    move/from16 v11, p12

    move-object v12, v2

    invoke-static/range {v3 .. v13}, Lcom/sun/imageio/plugins/common/ReaderUtil;->computeUpdatedPixels(IIIIIIIII[II)V

    iget v3, v0, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget v4, v0, Lorg/apache/poi/java/awt/Rectangle;->height:I

    iget v5, v1, Lorg/apache/poi/java/awt/Point;->y:I

    const/4 v13, 0x1

    move/from16 v6, p3

    move/from16 v7, p5

    move/from16 v8, p7

    move/from16 v9, p9

    move/from16 v10, p11

    move/from16 v11, p13

    invoke-static/range {v3 .. v13}, Lcom/sun/imageio/plugins/common/ReaderUtil;->computeUpdatedPixels(IIIIIIIII[II)V

    return-object v2
.end method

.method public static readMultiByteInteger(Lorg/apache/poi/javax/imageio/stream/ImageInputStream;)I
    .locals 4

    invoke-interface {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readByte()B

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    shl-int/lit8 v0, v1, 0x7

    invoke-interface {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readByte()B

    move-result v1

    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    move v3, v1

    move v1, v0

    move v0, v3

    goto :goto_0

    :cond_0
    return v1
.end method
