.class public Lorg/apache/poi/java/awt/FlowLayout;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/LayoutManager;
.implements Ljava/io/Serializable;


# static fields
.field public static final CENTER:I = 0x1

.field public static final LEADING:I = 0x3

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x2

.field public static final TRAILING:I = 0x4

.field private static final currentSerialVersion:I = 0x1

.field private static final serialVersionUID:J = -0x64c9b4fda406fdc7L


# instance fields
.field public align:I

.field private alignOnBaseline:Z

.field public hgap:I

.field public newAlign:I

.field private serialVersionOnStream:I

.field public vgap:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, v1}, Lorg/apache/poi/java/awt/FlowLayout;-><init>(III)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0, v0}, Lorg/apache/poi/java/awt/FlowLayout;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/poi/java/awt/FlowLayout;->serialVersionOnStream:I

    iput p2, p0, Lorg/apache/poi/java/awt/FlowLayout;->hgap:I

    iput p3, p0, Lorg/apache/poi/java/awt/FlowLayout;->vgap:I

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/FlowLayout;->setAlignment(I)V

    return-void
.end method

.method private moveComponents(Lorg/apache/poi/java/awt/Container;IIIIIIZZ[I[I)I
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p7

    iget v3, v0, Lorg/apache/poi/java/awt/FlowLayout;->newAlign:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    const/4 v6, 0x1

    if-eq v3, v6, :cond_4

    if-eq v3, v4, :cond_1

    const/4 v6, 0x4

    if-eq v3, v6, :cond_0

    move/from16 v3, p2

    goto :goto_2

    :cond_0
    add-int v3, p2, p4

    goto :goto_2

    :cond_1
    if-eqz p8, :cond_3

    :cond_2
    move/from16 v3, p4

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v5

    goto :goto_1

    :cond_4
    div-int/lit8 v3, p4, 0x2

    :goto_1
    add-int v3, p2, v3

    goto :goto_2

    :cond_5
    if-eqz p8, :cond_2

    goto :goto_0

    :goto_2
    if-eqz p9, :cond_9

    move/from16 v8, p6

    move v6, v5

    move v7, v6

    :goto_3
    if-ge v8, v2, :cond_8

    invoke-virtual {p1, v8}, Lorg/apache/poi/java/awt/Container;->getComponent(I)Lorg/apache/poi/java/awt/Component;

    move-result-object v9

    iget-boolean v10, v9, Lorg/apache/poi/java/awt/Component;->visible:Z

    if-eqz v10, :cond_7

    aget v10, p10, v8

    if-ltz v10, :cond_6

    aget v9, p10, v8

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    aget v9, p11, v8

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_4

    :cond_6
    invoke-virtual {v9}, Lorg/apache/poi/java/awt/Component;->getHeight()I

    move-result v9

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_7
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_8
    add-int v8, v5, v6

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int v8, v7, v5

    sub-int/2addr v8, v6

    div-int/lit8 v6, v8, 0x2

    move v13, v6

    move v6, v5

    move v5, v13

    goto :goto_5

    :cond_9
    move/from16 v7, p5

    move v6, v5

    :goto_5
    move v8, v3

    move/from16 v3, p6

    :goto_6
    if-ge v3, v2, :cond_d

    invoke-virtual {p1, v3}, Lorg/apache/poi/java/awt/Container;->getComponent(I)Lorg/apache/poi/java/awt/Component;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_c

    if-eqz p9, :cond_a

    aget v10, p10, v3

    if-ltz v10, :cond_a

    add-int v10, p3, v5

    add-int/2addr v10, v6

    aget v11, p10, v3

    sub-int/2addr v10, v11

    goto :goto_7

    :cond_a
    iget v10, v9, Lorg/apache/poi/java/awt/Component;->height:I

    sub-int v10, v7, v10

    div-int/2addr v10, v4

    add-int v10, p3, v10

    :goto_7
    if-eqz p8, :cond_b

    invoke-virtual {v9, v8, v10}, Lorg/apache/poi/java/awt/Component;->setLocation(II)V

    goto :goto_8

    :cond_b
    iget v11, v1, Lorg/apache/poi/java/awt/Component;->width:I

    sub-int/2addr v11, v8

    iget v12, v9, Lorg/apache/poi/java/awt/Component;->width:I

    sub-int/2addr v11, v12

    invoke-virtual {v9, v11, v10}, Lorg/apache/poi/java/awt/Component;->setLocation(II)V

    :goto_8
    iget v9, v9, Lorg/apache/poi/java/awt/Component;->width:I

    iget v10, v0, Lorg/apache/poi/java/awt/FlowLayout;->hgap:I

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_d
    return v7
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget p1, p0, Lorg/apache/poi/java/awt/FlowLayout;->serialVersionOnStream:I

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    iget p1, p0, Lorg/apache/poi/java/awt/FlowLayout;->align:I

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/FlowLayout;->setAlignment(I)V

    :cond_0
    iput v0, p0, Lorg/apache/poi/java/awt/FlowLayout;->serialVersionOnStream:I

    return-void
.end method


# virtual methods
.method public addLayoutComponent(Ljava/lang/String;Lorg/apache/poi/java/awt/Component;)V
    .locals 0

    return-void
.end method

.method public getAlignOnBaseline()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/FlowLayout;->alignOnBaseline:Z

    return v0
.end method

.method public getAlignment()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/FlowLayout;->newAlign:I

    return v0
.end method

.method public getHgap()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/FlowLayout;->hgap:I

    return v0
.end method

.method public getVgap()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/FlowLayout;->vgap:I

    return v0
.end method

.method public layoutContainer(Lorg/apache/poi/java/awt/Container;)V
    .locals 24

    move-object/from16 v13, p0

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/Container;->getInsets()Lorg/apache/poi/java/awt/Insets;

    move-result-object v15

    iget v1, v0, Lorg/apache/poi/java/awt/Component;->width:I

    iget v2, v15, Lorg/apache/poi/java/awt/Insets;->left:I

    iget v3, v15, Lorg/apache/poi/java/awt/Insets;->right:I

    add-int/2addr v2, v3

    iget v3, v13, Lorg/apache/poi/java/awt/FlowLayout;->hgap:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int v12, v1, v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/Container;->getComponentCount()I

    move-result v11

    iget v1, v15, Lorg/apache/poi/java/awt/Insets;->top:I

    iget v2, v13, Lorg/apache/poi/java/awt/FlowLayout;->vgap:I

    add-int/2addr v1, v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/Component;->getComponentOrientation()Lorg/apache/poi/java/awt/ComponentOrientation;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/ComponentOrientation;->isLeftToRight()Z

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/FlowLayout;->getAlignOnBaseline()Z

    move-result v17

    const/4 v2, 0x0

    if-eqz v17, :cond_0

    new-array v2, v11, [I

    new-array v3, v11, [I

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    goto :goto_0

    :cond_0
    move-object/from16 v18, v2

    move-object/from16 v19, v18

    :goto_0
    const/4 v2, 0x0

    move/from16 v20, v1

    move v6, v2

    move v7, v6

    move v10, v7

    :goto_1
    if-ge v10, v11, :cond_7

    invoke-virtual {v0, v10}, Lorg/apache/poi/java/awt/Container;->getComponent(I)Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->getPreferredSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v9

    iget v3, v9, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v4, v9, Lorg/apache/poi/java/awt/Dimension;->height:I

    invoke-virtual {v1, v3, v4}, Lorg/apache/poi/java/awt/Component;->setSize(II)V

    if-eqz v17, :cond_2

    iget v3, v9, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v4, v9, Lorg/apache/poi/java/awt/Dimension;->height:I

    invoke-virtual {v1, v3, v4}, Lorg/apache/poi/java/awt/Component;->getBaseline(II)I

    move-result v1

    if-ltz v1, :cond_1

    aput v1, v18, v10

    iget v3, v9, Lorg/apache/poi/java/awt/Dimension;->height:I

    sub-int/2addr v3, v1

    aput v3, v19, v10

    goto :goto_2

    :cond_1
    const/4 v1, -0x1

    aput v1, v18, v10

    :cond_2
    :goto_2
    if-eqz v2, :cond_4

    iget v1, v9, Lorg/apache/poi/java/awt/Dimension;->width:I

    add-int/2addr v1, v2

    if-gt v1, v12, :cond_3

    goto :goto_3

    :cond_3
    iget v1, v15, Lorg/apache/poi/java/awt/Insets;->left:I

    iget v3, v13, Lorg/apache/poi/java/awt/FlowLayout;->hgap:I

    add-int/2addr v3, v1

    sub-int v5, v12, v2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, v20

    move v8, v10

    move-object v0, v9

    move/from16 v9, v16

    move/from16 v21, v10

    move/from16 v10, v17

    move/from16 v22, v11

    move-object/from16 v11, v18

    move/from16 v23, v12

    move-object/from16 v12, v19

    invoke-direct/range {v1 .. v12}, Lorg/apache/poi/java/awt/FlowLayout;->moveComponents(Lorg/apache/poi/java/awt/Container;IIIIIIZZ[I[I)I

    move-result v1

    iget v2, v0, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v3, v13, Lorg/apache/poi/java/awt/FlowLayout;->vgap:I

    add-int/2addr v3, v1

    add-int v20, v20, v3

    iget v6, v0, Lorg/apache/poi/java/awt/Dimension;->height:I

    move/from16 v7, v21

    goto :goto_4

    :cond_4
    :goto_3
    move-object v0, v9

    move/from16 v21, v10

    move/from16 v22, v11

    move/from16 v23, v12

    if-lez v2, :cond_5

    iget v1, v13, Lorg/apache/poi/java/awt/FlowLayout;->hgap:I

    add-int/2addr v2, v1

    :cond_5
    iget v1, v0, Lorg/apache/poi/java/awt/Dimension;->width:I

    add-int/2addr v2, v1

    iget v0, v0, Lorg/apache/poi/java/awt/Dimension;->height:I

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_4

    :cond_6
    move/from16 v21, v10

    move/from16 v22, v11

    move/from16 v23, v12

    :goto_4
    add-int/lit8 v10, v21, 0x1

    move-object/from16 v0, p1

    move/from16 v11, v22

    move/from16 v12, v23

    goto/16 :goto_1

    :cond_7
    move/from16 v22, v11

    move/from16 v23, v12

    iget v0, v15, Lorg/apache/poi/java/awt/Insets;->left:I

    iget v1, v13, Lorg/apache/poi/java/awt/FlowLayout;->hgap:I

    add-int v3, v0, v1

    sub-int v5, v23, v2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, v20

    move/from16 v8, v22

    move/from16 v9, v16

    move/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v12, v19

    invoke-direct/range {v1 .. v12}, Lorg/apache/poi/java/awt/FlowLayout;->moveComponents(Lorg/apache/poi/java/awt/Container;IIIIIIZZ[I[I)I

    monitor-exit v14

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public minimumLayoutSize(Lorg/apache/poi/java/awt/Container;)Lorg/apache/poi/java/awt/Dimension;
    .locals 13

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/FlowLayout;->getAlignOnBaseline()Z

    move-result v1

    new-instance v2, Lorg/apache/poi/java/awt/Dimension;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Lorg/apache/poi/java/awt/Dimension;-><init>(II)V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->getComponentCount()I

    move-result v4

    const/4 v5, 0x1

    move v6, v3

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v6, v4, :cond_2

    invoke-virtual {p1, v6}, Lorg/apache/poi/java/awt/Container;->getComponent(I)Lorg/apache/poi/java/awt/Component;

    move-result-object v9

    iget-boolean v10, v9, Lorg/apache/poi/java/awt/Component;->visible:Z

    if-eqz v10, :cond_1

    invoke-virtual {v9}, Lorg/apache/poi/java/awt/Component;->getMinimumSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v10

    iget v11, v2, Lorg/apache/poi/java/awt/Dimension;->height:I

    iget v12, v10, Lorg/apache/poi/java/awt/Dimension;->height:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v2, Lorg/apache/poi/java/awt/Dimension;->height:I

    if-eqz v5, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    iget v11, v2, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v12, p0, Lorg/apache/poi/java/awt/FlowLayout;->hgap:I

    add-int/2addr v11, v12

    iput v11, v2, Lorg/apache/poi/java/awt/Dimension;->width:I

    :goto_1
    iget v11, v2, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v12, v10, Lorg/apache/poi/java/awt/Dimension;->width:I

    add-int/2addr v11, v12

    iput v11, v2, Lorg/apache/poi/java/awt/Dimension;->width:I

    if-eqz v1, :cond_1

    iget v11, v10, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v10, v10, Lorg/apache/poi/java/awt/Dimension;->height:I

    invoke-virtual {v9, v11, v10}, Lorg/apache/poi/java/awt/Component;->getBaseline(II)I

    move-result v9

    if-ltz v9, :cond_1

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v10, v2, Lorg/apache/poi/java/awt/Dimension;->height:I

    sub-int/2addr v10, v9

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    add-int/2addr v7, v8

    iget v1, v2, Lorg/apache/poi/java/awt/Dimension;->height:I

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v2, Lorg/apache/poi/java/awt/Dimension;->height:I

    :cond_3
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->getInsets()Lorg/apache/poi/java/awt/Insets;

    move-result-object p1

    iget v1, v2, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v3, p1, Lorg/apache/poi/java/awt/Insets;->left:I

    iget v4, p1, Lorg/apache/poi/java/awt/Insets;->right:I

    add-int/2addr v3, v4

    iget v4, p0, Lorg/apache/poi/java/awt/FlowLayout;->hgap:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    iput v1, v2, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v1, v2, Lorg/apache/poi/java/awt/Dimension;->height:I

    iget v3, p1, Lorg/apache/poi/java/awt/Insets;->top:I

    iget p1, p1, Lorg/apache/poi/java/awt/Insets;->bottom:I

    add-int/2addr v3, p1

    iget p1, p0, Lorg/apache/poi/java/awt/FlowLayout;->vgap:I

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr v3, p1

    add-int/2addr v1, v3

    iput v1, v2, Lorg/apache/poi/java/awt/Dimension;->height:I

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public preferredLayoutSize(Lorg/apache/poi/java/awt/Container;)Lorg/apache/poi/java/awt/Dimension;
    .locals 13

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    new-instance v1, Lorg/apache/poi/java/awt/Dimension;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lorg/apache/poi/java/awt/Dimension;-><init>(II)V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->getComponentCount()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/FlowLayout;->getAlignOnBaseline()Z

    move-result v4

    const/4 v5, 0x1

    move v6, v2

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v6, v3, :cond_2

    invoke-virtual {p1, v6}, Lorg/apache/poi/java/awt/Container;->getComponent(I)Lorg/apache/poi/java/awt/Component;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v9}, Lorg/apache/poi/java/awt/Component;->getPreferredSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v10

    iget v11, v1, Lorg/apache/poi/java/awt/Dimension;->height:I

    iget v12, v10, Lorg/apache/poi/java/awt/Dimension;->height:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v1, Lorg/apache/poi/java/awt/Dimension;->height:I

    if-eqz v5, :cond_0

    move v5, v2

    goto :goto_1

    :cond_0
    iget v11, v1, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v12, p0, Lorg/apache/poi/java/awt/FlowLayout;->hgap:I

    add-int/2addr v11, v12

    iput v11, v1, Lorg/apache/poi/java/awt/Dimension;->width:I

    :goto_1
    iget v11, v1, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v12, v10, Lorg/apache/poi/java/awt/Dimension;->width:I

    add-int/2addr v11, v12

    iput v11, v1, Lorg/apache/poi/java/awt/Dimension;->width:I

    if-eqz v4, :cond_1

    iget v11, v10, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v12, v10, Lorg/apache/poi/java/awt/Dimension;->height:I

    invoke-virtual {v9, v11, v12}, Lorg/apache/poi/java/awt/Component;->getBaseline(II)I

    move-result v9

    if-ltz v9, :cond_1

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v10, v10, Lorg/apache/poi/java/awt/Dimension;->height:I

    sub-int/2addr v10, v9

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    add-int/2addr v7, v8

    iget v2, v1, Lorg/apache/poi/java/awt/Dimension;->height:I

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Lorg/apache/poi/java/awt/Dimension;->height:I

    :cond_3
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->getInsets()Lorg/apache/poi/java/awt/Insets;

    move-result-object p1

    iget v2, v1, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v3, p1, Lorg/apache/poi/java/awt/Insets;->left:I

    iget v4, p1, Lorg/apache/poi/java/awt/Insets;->right:I

    add-int/2addr v3, v4

    iget v4, p0, Lorg/apache/poi/java/awt/FlowLayout;->hgap:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v2, v1, Lorg/apache/poi/java/awt/Dimension;->height:I

    iget v3, p1, Lorg/apache/poi/java/awt/Insets;->top:I

    iget p1, p1, Lorg/apache/poi/java/awt/Insets;->bottom:I

    add-int/2addr v3, p1

    iget p1, p0, Lorg/apache/poi/java/awt/FlowLayout;->vgap:I

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr v3, p1

    add-int/2addr v2, v3

    iput v2, v1, Lorg/apache/poi/java/awt/Dimension;->height:I

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeLayoutComponent(Lorg/apache/poi/java/awt/Component;)V
    .locals 0

    return-void
.end method

.method public setAlignOnBaseline(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/FlowLayout;->alignOnBaseline:Z

    return-void
.end method

.method public setAlignment(I)V
    .locals 1

    iput p1, p0, Lorg/apache/poi/java/awt/FlowLayout;->newAlign:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lorg/apache/poi/java/awt/FlowLayout;->align:I

    return-void
.end method

.method public setHgap(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/java/awt/FlowLayout;->hgap:I

    return-void
.end method

.method public setVgap(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/java/awt/FlowLayout;->vgap:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lorg/apache/poi/java/awt/FlowLayout;->align:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, ",align=trailing"

    goto :goto_0

    :cond_1
    const-string v0, ",align=leading"

    goto :goto_0

    :cond_2
    const-string v0, ",align=right"

    goto :goto_0

    :cond_3
    const-string v0, ",align=center"

    goto :goto_0

    :cond_4
    const-string v0, ",align=left"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[hgap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/java/awt/FlowLayout;->hgap:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",vgap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/java/awt/FlowLayout;->vgap:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
