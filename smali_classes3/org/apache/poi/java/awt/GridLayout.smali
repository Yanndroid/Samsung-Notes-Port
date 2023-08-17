.class public Lorg/apache/poi/java/awt/GridLayout;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/LayoutManager;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x66dc0514b423e915L


# instance fields
.field public cols:I

.field public hgap:I

.field public rows:I

.field public vgap:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, v1}, Lorg/apache/poi/java/awt/GridLayout;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/apache/poi/java/awt/GridLayout;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "rows and cols cannot both be zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lorg/apache/poi/java/awt/GridLayout;->rows:I

    iput p2, p0, Lorg/apache/poi/java/awt/GridLayout;->cols:I

    iput p3, p0, Lorg/apache/poi/java/awt/GridLayout;->hgap:I

    iput p4, p0, Lorg/apache/poi/java/awt/GridLayout;->vgap:I

    return-void
.end method


# virtual methods
.method public addLayoutComponent(Ljava/lang/String;Lorg/apache/poi/java/awt/Component;)V
    .locals 0

    return-void
.end method

.method public getColumns()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/GridLayout;->cols:I

    return v0
.end method

.method public getHgap()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/GridLayout;->hgap:I

    return v0
.end method

.method public getRows()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/GridLayout;->rows:I

    return v0
.end method

.method public getVgap()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/GridLayout;->vgap:I

    return v0
.end method

.method public layoutContainer(Lorg/apache/poi/java/awt/Container;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/Container;->getInsets()Lorg/apache/poi/java/awt/Insets;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/Container;->getComponentCount()I

    move-result v4

    iget v5, v1, Lorg/apache/poi/java/awt/GridLayout;->rows:I

    iget v6, v1, Lorg/apache/poi/java/awt/GridLayout;->cols:I

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/Component;->getComponentOrientation()Lorg/apache/poi/java/awt/ComponentOrientation;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/poi/java/awt/ComponentOrientation;->isLeftToRight()Z

    move-result v7

    if-nez v4, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    if-lez v5, :cond_1

    add-int v6, v4, v5

    add-int/lit8 v6, v6, -0x1

    div-int/2addr v6, v5

    goto :goto_0

    :cond_1
    add-int v5, v4, v6

    add-int/lit8 v5, v5, -0x1

    div-int/2addr v5, v6

    :goto_0
    add-int/lit8 v8, v6, -0x1

    iget v9, v1, Lorg/apache/poi/java/awt/GridLayout;->hgap:I

    mul-int/2addr v8, v9

    iget v9, v0, Lorg/apache/poi/java/awt/Component;->width:I

    iget v10, v3, Lorg/apache/poi/java/awt/Insets;->left:I

    iget v11, v3, Lorg/apache/poi/java/awt/Insets;->right:I

    add-int v12, v10, v11

    sub-int v12, v9, v12

    sub-int v13, v12, v8

    div-int/2addr v13, v6

    mul-int v14, v13, v6

    add-int/2addr v14, v8

    sub-int/2addr v12, v14

    div-int/lit8 v12, v12, 0x2

    add-int/lit8 v8, v5, -0x1

    iget v14, v1, Lorg/apache/poi/java/awt/GridLayout;->vgap:I

    mul-int/2addr v8, v14

    iget v14, v0, Lorg/apache/poi/java/awt/Component;->height:I

    iget v15, v3, Lorg/apache/poi/java/awt/Insets;->top:I

    move/from16 v16, v9

    iget v9, v3, Lorg/apache/poi/java/awt/Insets;->bottom:I

    add-int/2addr v15, v9

    sub-int/2addr v14, v15

    sub-int v9, v14, v8

    div-int/2addr v9, v5

    mul-int v15, v9, v5

    add-int/2addr v15, v8

    sub-int/2addr v14, v15

    div-int/lit8 v14, v14, 0x2

    const/4 v8, 0x0

    if-eqz v7, :cond_4

    add-int/2addr v10, v12

    move v7, v8

    :goto_1
    if-ge v7, v6, :cond_7

    iget v11, v3, Lorg/apache/poi/java/awt/Insets;->top:I

    add-int/2addr v11, v14

    move v12, v8

    :goto_2
    if-ge v12, v5, :cond_3

    mul-int v15, v12, v6

    add-int/2addr v15, v7

    if-ge v15, v4, :cond_2

    invoke-virtual {v0, v15}, Lorg/apache/poi/java/awt/Container;->getComponent(I)Lorg/apache/poi/java/awt/Component;

    move-result-object v15

    invoke-virtual {v15, v10, v11, v13, v9}, Lorg/apache/poi/java/awt/Component;->setBounds(IIII)V

    :cond_2
    add-int/lit8 v12, v12, 0x1

    iget v15, v1, Lorg/apache/poi/java/awt/GridLayout;->vgap:I

    add-int/2addr v15, v9

    add-int/2addr v11, v15

    goto :goto_2

    :cond_3
    add-int/lit8 v7, v7, 0x1

    iget v11, v1, Lorg/apache/poi/java/awt/GridLayout;->hgap:I

    add-int/2addr v11, v13

    add-int/2addr v10, v11

    goto :goto_1

    :cond_4
    sub-int v7, v16, v11

    sub-int/2addr v7, v13

    sub-int/2addr v7, v12

    move v10, v8

    :goto_3
    if-ge v10, v6, :cond_7

    iget v11, v3, Lorg/apache/poi/java/awt/Insets;->top:I

    add-int/2addr v11, v14

    move v12, v8

    :goto_4
    if-ge v12, v5, :cond_6

    mul-int v15, v12, v6

    add-int/2addr v15, v10

    if-ge v15, v4, :cond_5

    invoke-virtual {v0, v15}, Lorg/apache/poi/java/awt/Container;->getComponent(I)Lorg/apache/poi/java/awt/Component;

    move-result-object v15

    invoke-virtual {v15, v7, v11, v13, v9}, Lorg/apache/poi/java/awt/Component;->setBounds(IIII)V

    :cond_5
    add-int/lit8 v12, v12, 0x1

    iget v15, v1, Lorg/apache/poi/java/awt/GridLayout;->vgap:I

    add-int/2addr v15, v9

    add-int/2addr v11, v15

    goto :goto_4

    :cond_6
    add-int/lit8 v10, v10, 0x1

    iget v11, v1, Lorg/apache/poi/java/awt/GridLayout;->hgap:I

    add-int/2addr v11, v13

    sub-int/2addr v7, v11

    goto :goto_3

    :cond_7
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public minimumLayoutSize(Lorg/apache/poi/java/awt/Container;)Lorg/apache/poi/java/awt/Dimension;
    .locals 10

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->getInsets()Lorg/apache/poi/java/awt/Insets;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->getComponentCount()I

    move-result v2

    iget v3, p0, Lorg/apache/poi/java/awt/GridLayout;->rows:I

    iget v4, p0, Lorg/apache/poi/java/awt/GridLayout;->cols:I

    if-lez v3, :cond_0

    add-int v4, v2, v3

    add-int/lit8 v4, v4, -0x1

    div-int/2addr v4, v3

    goto :goto_0

    :cond_0
    add-int v3, v2, v4

    add-int/lit8 v3, v3, -0x1

    div-int/2addr v3, v4

    :goto_0
    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_1
    if-ge v5, v2, :cond_3

    invoke-virtual {p1, v5}, Lorg/apache/poi/java/awt/Container;->getComponent(I)Lorg/apache/poi/java/awt/Component;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/poi/java/awt/Component;->getMinimumSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v8

    iget v9, v8, Lorg/apache/poi/java/awt/Dimension;->width:I

    if-ge v6, v9, :cond_1

    move v6, v9

    :cond_1
    iget v8, v8, Lorg/apache/poi/java/awt/Dimension;->height:I

    if-ge v7, v8, :cond_2

    move v7, v8

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    new-instance p1, Lorg/apache/poi/java/awt/Dimension;

    iget v2, v1, Lorg/apache/poi/java/awt/Insets;->left:I

    iget v5, v1, Lorg/apache/poi/java/awt/Insets;->right:I

    add-int/2addr v2, v5

    mul-int/2addr v6, v4

    add-int/2addr v2, v6

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lorg/apache/poi/java/awt/GridLayout;->hgap:I

    mul-int/2addr v4, v5

    add-int/2addr v2, v4

    iget v4, v1, Lorg/apache/poi/java/awt/Insets;->top:I

    iget v1, v1, Lorg/apache/poi/java/awt/Insets;->bottom:I

    add-int/2addr v4, v1

    mul-int/2addr v7, v3

    add-int/2addr v4, v7

    add-int/lit8 v3, v3, -0x1

    iget v1, p0, Lorg/apache/poi/java/awt/GridLayout;->vgap:I

    mul-int/2addr v3, v1

    add-int/2addr v4, v3

    invoke-direct {p1, v2, v4}, Lorg/apache/poi/java/awt/Dimension;-><init>(II)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public preferredLayoutSize(Lorg/apache/poi/java/awt/Container;)Lorg/apache/poi/java/awt/Dimension;
    .locals 10

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->getInsets()Lorg/apache/poi/java/awt/Insets;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->getComponentCount()I

    move-result v2

    iget v3, p0, Lorg/apache/poi/java/awt/GridLayout;->rows:I

    iget v4, p0, Lorg/apache/poi/java/awt/GridLayout;->cols:I

    if-lez v3, :cond_0

    add-int v4, v2, v3

    add-int/lit8 v4, v4, -0x1

    div-int/2addr v4, v3

    goto :goto_0

    :cond_0
    add-int v3, v2, v4

    add-int/lit8 v3, v3, -0x1

    div-int/2addr v3, v4

    :goto_0
    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_1
    if-ge v5, v2, :cond_3

    invoke-virtual {p1, v5}, Lorg/apache/poi/java/awt/Container;->getComponent(I)Lorg/apache/poi/java/awt/Component;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/poi/java/awt/Component;->getPreferredSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v8

    iget v9, v8, Lorg/apache/poi/java/awt/Dimension;->width:I

    if-ge v6, v9, :cond_1

    move v6, v9

    :cond_1
    iget v8, v8, Lorg/apache/poi/java/awt/Dimension;->height:I

    if-ge v7, v8, :cond_2

    move v7, v8

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    new-instance p1, Lorg/apache/poi/java/awt/Dimension;

    iget v2, v1, Lorg/apache/poi/java/awt/Insets;->left:I

    iget v5, v1, Lorg/apache/poi/java/awt/Insets;->right:I

    add-int/2addr v2, v5

    mul-int/2addr v6, v4

    add-int/2addr v2, v6

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lorg/apache/poi/java/awt/GridLayout;->hgap:I

    mul-int/2addr v4, v5

    add-int/2addr v2, v4

    iget v4, v1, Lorg/apache/poi/java/awt/Insets;->top:I

    iget v1, v1, Lorg/apache/poi/java/awt/Insets;->bottom:I

    add-int/2addr v4, v1

    mul-int/2addr v7, v3

    add-int/2addr v4, v7

    add-int/lit8 v3, v3, -0x1

    iget v1, p0, Lorg/apache/poi/java/awt/GridLayout;->vgap:I

    mul-int/2addr v3, v1

    add-int/2addr v4, v3

    invoke-direct {p1, v2, v4}, Lorg/apache/poi/java/awt/Dimension;-><init>(II)V

    monitor-exit v0

    return-object p1

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

.method public setColumns(I)V
    .locals 1

    if-nez p1, :cond_1

    iget v0, p0, Lorg/apache/poi/java/awt/GridLayout;->rows:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "rows and cols cannot both be zero"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lorg/apache/poi/java/awt/GridLayout;->cols:I

    return-void
.end method

.method public setHgap(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/java/awt/GridLayout;->hgap:I

    return-void
.end method

.method public setRows(I)V
    .locals 1

    if-nez p1, :cond_1

    iget v0, p0, Lorg/apache/poi/java/awt/GridLayout;->cols:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "rows and cols cannot both be zero"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lorg/apache/poi/java/awt/GridLayout;->rows:I

    return-void
.end method

.method public setVgap(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/java/awt/GridLayout;->vgap:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[hgap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/GridLayout;->hgap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",vgap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/GridLayout;->vgap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",rows="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/GridLayout;->rows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",cols="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/GridLayout;->cols:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
