.class public Lorg/apache/poi/java/awt/BorderLayout;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/LayoutManager2;
.implements Ljava/io/Serializable;


# static fields
.field public static final AFTER_LAST_LINE:Ljava/lang/String; = "Last"

.field public static final AFTER_LINE_ENDS:Ljava/lang/String; = "After"

.field public static final BEFORE_FIRST_LINE:Ljava/lang/String; = "First"

.field public static final BEFORE_LINE_BEGINS:Ljava/lang/String; = "Before"

.field public static final CENTER:Ljava/lang/String; = "Center"

.field public static final EAST:Ljava/lang/String; = "East"

.field public static final LINE_END:Ljava/lang/String; = "After"

.field public static final LINE_START:Ljava/lang/String; = "Before"

.field public static final NORTH:Ljava/lang/String; = "North"

.field public static final PAGE_END:Ljava/lang/String; = "Last"

.field public static final PAGE_START:Ljava/lang/String; = "First"

.field public static final SOUTH:Ljava/lang/String; = "South"

.field public static final WEST:Ljava/lang/String; = "West"

.field private static final serialVersionUID:J = -0x78286ea08f8c0de5L


# instance fields
.field public center:Lorg/apache/poi/java/awt/Component;

.field public east:Lorg/apache/poi/java/awt/Component;

.field public firstItem:Lorg/apache/poi/java/awt/Component;

.field public firstLine:Lorg/apache/poi/java/awt/Component;

.field public hgap:I

.field public lastItem:Lorg/apache/poi/java/awt/Component;

.field public lastLine:Lorg/apache/poi/java/awt/Component;

.field public north:Lorg/apache/poi/java/awt/Component;

.field public south:Lorg/apache/poi/java/awt/Component;

.field public vgap:I

.field public west:Lorg/apache/poi/java/awt/Component;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/apache/poi/java/awt/BorderLayout;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/java/awt/BorderLayout;->hgap:I

    iput p2, p0, Lorg/apache/poi/java/awt/BorderLayout;->vgap:I

    return-void
.end method

.method private getChild(Ljava/lang/String;Z)Lorg/apache/poi/java/awt/Component;
    .locals 2

    const/4 v0, 0x0

    const-string v1, "North"

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/java/awt/BorderLayout;->firstLine:Lorg/apache/poi/java/awt/Component;

    if-eqz p1, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/java/awt/BorderLayout;->north:Lorg/apache/poi/java/awt/Component;

    goto :goto_2

    :cond_1
    const-string v1, "South"

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lorg/apache/poi/java/awt/BorderLayout;->lastLine:Lorg/apache/poi/java/awt/Component;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lorg/apache/poi/java/awt/BorderLayout;->south:Lorg/apache/poi/java/awt/Component;

    goto :goto_2

    :cond_3
    const-string v1, "West"

    if-ne p1, v1, :cond_5

    if-eqz p2, :cond_4

    iget-object p1, p0, Lorg/apache/poi/java/awt/BorderLayout;->firstItem:Lorg/apache/poi/java/awt/Component;

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lorg/apache/poi/java/awt/BorderLayout;->lastItem:Lorg/apache/poi/java/awt/Component;

    :goto_0
    if-nez p1, :cond_9

    iget-object p1, p0, Lorg/apache/poi/java/awt/BorderLayout;->west:Lorg/apache/poi/java/awt/Component;

    goto :goto_2

    :cond_5
    const-string v1, "East"

    if-ne p1, v1, :cond_7

    if-eqz p2, :cond_6

    iget-object p1, p0, Lorg/apache/poi/java/awt/BorderLayout;->lastItem:Lorg/apache/poi/java/awt/Component;

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lorg/apache/poi/java/awt/BorderLayout;->firstItem:Lorg/apache/poi/java/awt/Component;

    :goto_1
    if-nez p1, :cond_9

    iget-object p1, p0, Lorg/apache/poi/java/awt/BorderLayout;->east:Lorg/apache/poi/java/awt/Component;

    goto :goto_2

    :cond_7
    const-string p2, "Center"

    if-ne p1, p2, :cond_8

    iget-object p1, p0, Lorg/apache/poi/java/awt/BorderLayout;->center:Lorg/apache/poi/java/awt/Component;

    goto :goto_2

    :cond_8
    move-object p1, v0

    :cond_9
    :goto_2
    if-eqz p1, :cond_a

    iget-boolean p2, p1, Lorg/apache/poi/java/awt/Component;->visible:Z

    if-nez p2, :cond_a

    goto :goto_3

    :cond_a
    move-object v0, p1

    :goto_3
    return-object v0
.end method


# virtual methods
.method public addLayoutComponent(Ljava/lang/String;Lorg/apache/poi/java/awt/Component;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "Center"

    :cond_0
    const-string v1, "Center"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object p2, p0, Lorg/apache/poi/java/awt/BorderLayout;->center:Lorg/apache/poi/java/awt/Component;

    goto :goto_0

    :cond_1
    const-string v1, "North"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object p2, p0, Lorg/apache/poi/java/awt/BorderLayout;->north:Lorg/apache/poi/java/awt/Component;

    goto :goto_0

    :cond_2
    const-string v1, "South"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object p2, p0, Lorg/apache/poi/java/awt/BorderLayout;->south:Lorg/apache/poi/java/awt/Component;

    goto :goto_0

    :cond_3
    const-string v1, "East"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput-object p2, p0, Lorg/apache/poi/java/awt/BorderLayout;->east:Lorg/apache/poi/java/awt/Component;

    goto :goto_0

    :cond_4
    const-string v1, "West"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iput-object p2, p0, Lorg/apache/poi/java/awt/BorderLayout;->west:Lorg/apache/poi/java/awt/Component;

    goto :goto_0

    :cond_5
    const-string v1, "First"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iput-object p2, p0, Lorg/apache/poi/java/awt/BorderLayout;->firstLine:Lorg/apache/poi/java/awt/Component;

    goto :goto_0

    :cond_6
    const-string v1, "Last"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iput-object p2, p0, Lorg/apache/poi/java/awt/BorderLayout;->lastLine:Lorg/apache/poi/java/awt/Component;

    goto :goto_0

    :cond_7
    const-string v1, "Before"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iput-object p2, p0, Lorg/apache/poi/java/awt/BorderLayout;->firstItem:Lorg/apache/poi/java/awt/Component;

    goto :goto_0

    :cond_8
    const-string v1, "After"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iput-object p2, p0, Lorg/apache/poi/java/awt/BorderLayout;->lastItem:Lorg/apache/poi/java/awt/Component;

    :goto_0
    monitor-exit v0

    return-void

    :cond_9
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot add to layout: unknown constraint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addLayoutComponent(Lorg/apache/poi/java/awt/Component;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-eqz p2, :cond_1

    :try_start_0
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cannot add to layout: constraint must be a string (or null)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lorg/apache/poi/java/awt/BorderLayout;->addLayoutComponent(Ljava/lang/String;Lorg/apache/poi/java/awt/Component;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getConstraints(Lorg/apache/poi/java/awt/Component;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/BorderLayout;->center:Lorg/apache/poi/java/awt/Component;

    if-ne p1, v1, :cond_1

    const-string p1, "Center"

    return-object p1

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/java/awt/BorderLayout;->north:Lorg/apache/poi/java/awt/Component;

    if-ne p1, v1, :cond_2

    const-string p1, "North"

    return-object p1

    :cond_2
    iget-object v1, p0, Lorg/apache/poi/java/awt/BorderLayout;->south:Lorg/apache/poi/java/awt/Component;

    if-ne p1, v1, :cond_3

    const-string p1, "South"

    return-object p1

    :cond_3
    iget-object v1, p0, Lorg/apache/poi/java/awt/BorderLayout;->west:Lorg/apache/poi/java/awt/Component;

    if-ne p1, v1, :cond_4

    const-string p1, "West"

    return-object p1

    :cond_4
    iget-object v1, p0, Lorg/apache/poi/java/awt/BorderLayout;->east:Lorg/apache/poi/java/awt/Component;

    if-ne p1, v1, :cond_5

    const-string p1, "East"

    return-object p1

    :cond_5
    iget-object v1, p0, Lorg/apache/poi/java/awt/BorderLayout;->firstLine:Lorg/apache/poi/java/awt/Component;

    if-ne p1, v1, :cond_6

    const-string p1, "First"

    return-object p1

    :cond_6
    iget-object v1, p0, Lorg/apache/poi/java/awt/BorderLayout;->lastLine:Lorg/apache/poi/java/awt/Component;

    if-ne p1, v1, :cond_7

    const-string p1, "Last"

    return-object p1

    :cond_7
    iget-object v1, p0, Lorg/apache/poi/java/awt/BorderLayout;->firstItem:Lorg/apache/poi/java/awt/Component;

    if-ne p1, v1, :cond_8

    const-string p1, "Before"

    return-object p1

    :cond_8
    iget-object v1, p0, Lorg/apache/poi/java/awt/BorderLayout;->lastItem:Lorg/apache/poi/java/awt/Component;

    if-ne p1, v1, :cond_9

    const-string p1, "After"

    return-object p1

    :cond_9
    return-object v0
.end method

.method public getHgap()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/BorderLayout;->hgap:I

    return v0
.end method

.method public getLayoutAlignmentX(Lorg/apache/poi/java/awt/Container;)F
    .locals 0

    const/high16 p1, 0x3f000000    # 0.5f

    return p1
.end method

.method public getLayoutAlignmentY(Lorg/apache/poi/java/awt/Container;)F
    .locals 0

    const/high16 p1, 0x3f000000    # 0.5f

    return p1
.end method

.method public getLayoutComponent(Ljava/lang/Object;)Lorg/apache/poi/java/awt/Component;
    .locals 3

    const-string v0, "Center"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/apache/poi/java/awt/BorderLayout;->center:Lorg/apache/poi/java/awt/Component;

    return-object p1

    :cond_0
    const-string v0, "North"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/apache/poi/java/awt/BorderLayout;->north:Lorg/apache/poi/java/awt/Component;

    return-object p1

    :cond_1
    const-string v0, "South"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lorg/apache/poi/java/awt/BorderLayout;->south:Lorg/apache/poi/java/awt/Component;

    return-object p1

    :cond_2
    const-string v0, "West"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lorg/apache/poi/java/awt/BorderLayout;->west:Lorg/apache/poi/java/awt/Component;

    return-object p1

    :cond_3
    const-string v0, "East"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lorg/apache/poi/java/awt/BorderLayout;->east:Lorg/apache/poi/java/awt/Component;

    return-object p1

    :cond_4
    const-string v0, "First"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lorg/apache/poi/java/awt/BorderLayout;->firstLine:Lorg/apache/poi/java/awt/Component;

    return-object p1

    :cond_5
    const-string v0, "Last"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lorg/apache/poi/java/awt/BorderLayout;->lastLine:Lorg/apache/poi/java/awt/Component;

    return-object p1

    :cond_6
    const-string v0, "Before"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p0, Lorg/apache/poi/java/awt/BorderLayout;->firstItem:Lorg/apache/poi/java/awt/Component;

    return-object p1

    :cond_7
    const-string v0, "After"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p1, p0, Lorg/apache/poi/java/awt/BorderLayout;->lastItem:Lorg/apache/poi/java/awt/Component;

    return-object p1

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot get component: unknown constraint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLayoutComponent(Lorg/apache/poi/java/awt/Container;Ljava/lang/Object;)Lorg/apache/poi/java/awt/Component;
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getComponentOrientation()Lorg/apache/poi/java/awt/ComponentOrientation;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/ComponentOrientation;->isLeftToRight()Z

    move-result p1

    const-string v0, "North"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/apache/poi/java/awt/BorderLayout;->firstLine:Lorg/apache/poi/java/awt/Component;

    if-eqz p1, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/java/awt/BorderLayout;->north:Lorg/apache/poi/java/awt/Component;

    goto :goto_2

    :cond_1
    const-string v0, "South"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lorg/apache/poi/java/awt/BorderLayout;->lastLine:Lorg/apache/poi/java/awt/Component;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lorg/apache/poi/java/awt/BorderLayout;->south:Lorg/apache/poi/java/awt/Component;

    goto :goto_2

    :cond_3
    const-string v0, "West"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/apache/poi/java/awt/BorderLayout;->firstItem:Lorg/apache/poi/java/awt/Component;

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lorg/apache/poi/java/awt/BorderLayout;->lastItem:Lorg/apache/poi/java/awt/Component;

    :goto_0
    if-nez p1, :cond_8

    iget-object p1, p0, Lorg/apache/poi/java/awt/BorderLayout;->west:Lorg/apache/poi/java/awt/Component;

    goto :goto_2

    :cond_5
    const-string v0, "East"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/apache/poi/java/awt/BorderLayout;->lastItem:Lorg/apache/poi/java/awt/Component;

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lorg/apache/poi/java/awt/BorderLayout;->firstItem:Lorg/apache/poi/java/awt/Component;

    :goto_1
    if-nez p1, :cond_8

    iget-object p1, p0, Lorg/apache/poi/java/awt/BorderLayout;->east:Lorg/apache/poi/java/awt/Component;

    goto :goto_2

    :cond_7
    const-string p1, "Center"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/apache/poi/java/awt/BorderLayout;->center:Lorg/apache/poi/java/awt/Component;

    :cond_8
    :goto_2
    return-object p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot get component: invalid constraint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getVgap()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/BorderLayout;->vgap:I

    return v0
.end method

.method public invalidateLayout(Lorg/apache/poi/java/awt/Container;)V
    .locals 0

    return-void
.end method

.method public layoutContainer(Lorg/apache/poi/java/awt/Container;)V
    .locals 10

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->getInsets()Lorg/apache/poi/java/awt/Insets;

    move-result-object v1

    iget v2, v1, Lorg/apache/poi/java/awt/Insets;->top:I

    iget v3, p1, Lorg/apache/poi/java/awt/Component;->height:I

    iget v4, v1, Lorg/apache/poi/java/awt/Insets;->bottom:I

    sub-int/2addr v3, v4

    iget v4, v1, Lorg/apache/poi/java/awt/Insets;->left:I

    iget v5, p1, Lorg/apache/poi/java/awt/Component;->width:I

    iget v1, v1, Lorg/apache/poi/java/awt/Insets;->right:I

    sub-int/2addr v5, v1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getComponentOrientation()Lorg/apache/poi/java/awt/ComponentOrientation;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/ComponentOrientation;->isLeftToRight()Z

    move-result p1

    const-string v1, "North"

    invoke-direct {p0, v1, p1}, Lorg/apache/poi/java/awt/BorderLayout;->getChild(Ljava/lang/String;Z)Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    if-eqz v1, :cond_0

    sub-int v6, v5, v4

    iget v7, v1, Lorg/apache/poi/java/awt/Component;->height:I

    invoke-virtual {v1, v6, v7}, Lorg/apache/poi/java/awt/Component;->setSize(II)V

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->getPreferredSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v7

    iget v8, v7, Lorg/apache/poi/java/awt/Dimension;->height:I

    invoke-virtual {v1, v4, v2, v6, v8}, Lorg/apache/poi/java/awt/Component;->setBounds(IIII)V

    iget v1, v7, Lorg/apache/poi/java/awt/Dimension;->height:I

    iget v6, p0, Lorg/apache/poi/java/awt/BorderLayout;->vgap:I

    add-int/2addr v1, v6

    add-int/2addr v2, v1

    :cond_0
    const-string v1, "South"

    invoke-direct {p0, v1, p1}, Lorg/apache/poi/java/awt/BorderLayout;->getChild(Ljava/lang/String;Z)Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    if-eqz v1, :cond_1

    sub-int v6, v5, v4

    iget v7, v1, Lorg/apache/poi/java/awt/Component;->height:I

    invoke-virtual {v1, v6, v7}, Lorg/apache/poi/java/awt/Component;->setSize(II)V

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->getPreferredSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v7

    iget v8, v7, Lorg/apache/poi/java/awt/Dimension;->height:I

    sub-int v9, v3, v8

    invoke-virtual {v1, v4, v9, v6, v8}, Lorg/apache/poi/java/awt/Component;->setBounds(IIII)V

    iget v1, v7, Lorg/apache/poi/java/awt/Dimension;->height:I

    iget v6, p0, Lorg/apache/poi/java/awt/BorderLayout;->vgap:I

    add-int/2addr v1, v6

    sub-int/2addr v3, v1

    :cond_1
    const-string v1, "East"

    invoke-direct {p0, v1, p1}, Lorg/apache/poi/java/awt/BorderLayout;->getChild(Ljava/lang/String;Z)Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v6, v1, Lorg/apache/poi/java/awt/Component;->width:I

    sub-int v7, v3, v2

    invoke-virtual {v1, v6, v7}, Lorg/apache/poi/java/awt/Component;->setSize(II)V

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->getPreferredSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v6

    iget v8, v6, Lorg/apache/poi/java/awt/Dimension;->width:I

    sub-int v9, v5, v8

    invoke-virtual {v1, v9, v2, v8, v7}, Lorg/apache/poi/java/awt/Component;->setBounds(IIII)V

    iget v1, v6, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v6, p0, Lorg/apache/poi/java/awt/BorderLayout;->hgap:I

    add-int/2addr v1, v6

    sub-int/2addr v5, v1

    :cond_2
    const-string v1, "West"

    invoke-direct {p0, v1, p1}, Lorg/apache/poi/java/awt/BorderLayout;->getChild(Ljava/lang/String;Z)Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    if-eqz v1, :cond_3

    iget v6, v1, Lorg/apache/poi/java/awt/Component;->width:I

    sub-int v7, v3, v2

    invoke-virtual {v1, v6, v7}, Lorg/apache/poi/java/awt/Component;->setSize(II)V

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->getPreferredSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v6

    iget v8, v6, Lorg/apache/poi/java/awt/Dimension;->width:I

    invoke-virtual {v1, v4, v2, v8, v7}, Lorg/apache/poi/java/awt/Component;->setBounds(IIII)V

    iget v1, v6, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v6, p0, Lorg/apache/poi/java/awt/BorderLayout;->hgap:I

    add-int/2addr v1, v6

    add-int/2addr v4, v1

    :cond_3
    const-string v1, "Center"

    invoke-direct {p0, v1, p1}, Lorg/apache/poi/java/awt/BorderLayout;->getChild(Ljava/lang/String;Z)Lorg/apache/poi/java/awt/Component;

    move-result-object p1

    if-eqz p1, :cond_4

    sub-int/2addr v5, v4

    sub-int/2addr v3, v2

    invoke-virtual {p1, v4, v2, v5, v3}, Lorg/apache/poi/java/awt/Component;->setBounds(IIII)V

    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public maximumLayoutSize(Lorg/apache/poi/java/awt/Container;)Lorg/apache/poi/java/awt/Dimension;
    .locals 1

    new-instance p1, Lorg/apache/poi/java/awt/Dimension;

    const v0, 0x7fffffff

    invoke-direct {p1, v0, v0}, Lorg/apache/poi/java/awt/Dimension;-><init>(II)V

    return-object p1
.end method

.method public minimumLayoutSize(Lorg/apache/poi/java/awt/Container;)Lorg/apache/poi/java/awt/Dimension;
    .locals 7

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    new-instance v1, Lorg/apache/poi/java/awt/Dimension;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lorg/apache/poi/java/awt/Dimension;-><init>(II)V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getComponentOrientation()Lorg/apache/poi/java/awt/ComponentOrientation;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/ComponentOrientation;->isLeftToRight()Z

    move-result v2

    const-string v3, "East"

    invoke-direct {p0, v3, v2}, Lorg/apache/poi/java/awt/BorderLayout;->getChild(Ljava/lang/String;Z)Lorg/apache/poi/java/awt/Component;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Component;->getMinimumSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v3

    iget v4, v1, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v5, v3, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v6, p0, Lorg/apache/poi/java/awt/BorderLayout;->hgap:I

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v1, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v3, v3, Lorg/apache/poi/java/awt/Dimension;->height:I

    iget v4, v1, Lorg/apache/poi/java/awt/Dimension;->height:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v1, Lorg/apache/poi/java/awt/Dimension;->height:I

    :cond_0
    const-string v3, "West"

    invoke-direct {p0, v3, v2}, Lorg/apache/poi/java/awt/BorderLayout;->getChild(Ljava/lang/String;Z)Lorg/apache/poi/java/awt/Component;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Component;->getMinimumSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v3

    iget v4, v1, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v5, v3, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v6, p0, Lorg/apache/poi/java/awt/BorderLayout;->hgap:I

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v1, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v3, v3, Lorg/apache/poi/java/awt/Dimension;->height:I

    iget v4, v1, Lorg/apache/poi/java/awt/Dimension;->height:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v1, Lorg/apache/poi/java/awt/Dimension;->height:I

    :cond_1
    const-string v3, "Center"

    invoke-direct {p0, v3, v2}, Lorg/apache/poi/java/awt/BorderLayout;->getChild(Ljava/lang/String;Z)Lorg/apache/poi/java/awt/Component;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Component;->getMinimumSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v3

    iget v4, v1, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v5, v3, Lorg/apache/poi/java/awt/Dimension;->width:I

    add-int/2addr v4, v5

    iput v4, v1, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v3, v3, Lorg/apache/poi/java/awt/Dimension;->height:I

    iget v4, v1, Lorg/apache/poi/java/awt/Dimension;->height:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v1, Lorg/apache/poi/java/awt/Dimension;->height:I

    :cond_2
    const-string v3, "North"

    invoke-direct {p0, v3, v2}, Lorg/apache/poi/java/awt/BorderLayout;->getChild(Ljava/lang/String;Z)Lorg/apache/poi/java/awt/Component;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Component;->getMinimumSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v3

    iget v4, v3, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v5, v1, Lorg/apache/poi/java/awt/Dimension;->width:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v1, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v4, v1, Lorg/apache/poi/java/awt/Dimension;->height:I

    iget v3, v3, Lorg/apache/poi/java/awt/Dimension;->height:I

    iget v5, p0, Lorg/apache/poi/java/awt/BorderLayout;->vgap:I

    add-int/2addr v3, v5

    add-int/2addr v4, v3

    iput v4, v1, Lorg/apache/poi/java/awt/Dimension;->height:I

    :cond_3
    const-string v3, "South"

    invoke-direct {p0, v3, v2}, Lorg/apache/poi/java/awt/BorderLayout;->getChild(Ljava/lang/String;Z)Lorg/apache/poi/java/awt/Component;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Component;->getMinimumSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v2

    iget v3, v2, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v4, v1, Lorg/apache/poi/java/awt/Dimension;->width:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v1, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v3, v1, Lorg/apache/poi/java/awt/Dimension;->height:I

    iget v2, v2, Lorg/apache/poi/java/awt/Dimension;->height:I

    iget v4, p0, Lorg/apache/poi/java/awt/BorderLayout;->vgap:I

    add-int/2addr v2, v4

    add-int/2addr v3, v2

    iput v3, v1, Lorg/apache/poi/java/awt/Dimension;->height:I

    :cond_4
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->getInsets()Lorg/apache/poi/java/awt/Insets;

    move-result-object p1

    iget v2, v1, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v3, p1, Lorg/apache/poi/java/awt/Insets;->left:I

    iget v4, p1, Lorg/apache/poi/java/awt/Insets;->right:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v2, v1, Lorg/apache/poi/java/awt/Dimension;->height:I

    iget v3, p1, Lorg/apache/poi/java/awt/Insets;->top:I

    iget p1, p1, Lorg/apache/poi/java/awt/Insets;->bottom:I

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

.method public preferredLayoutSize(Lorg/apache/poi/java/awt/Container;)Lorg/apache/poi/java/awt/Dimension;
    .locals 7

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    new-instance v1, Lorg/apache/poi/java/awt/Dimension;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lorg/apache/poi/java/awt/Dimension;-><init>(II)V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getComponentOrientation()Lorg/apache/poi/java/awt/ComponentOrientation;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/ComponentOrientation;->isLeftToRight()Z

    move-result v2

    const-string v3, "East"

    invoke-direct {p0, v3, v2}, Lorg/apache/poi/java/awt/BorderLayout;->getChild(Ljava/lang/String;Z)Lorg/apache/poi/java/awt/Component;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Component;->getPreferredSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v3

    iget v4, v1, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v5, v3, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v6, p0, Lorg/apache/poi/java/awt/BorderLayout;->hgap:I

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v1, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v3, v3, Lorg/apache/poi/java/awt/Dimension;->height:I

    iget v4, v1, Lorg/apache/poi/java/awt/Dimension;->height:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v1, Lorg/apache/poi/java/awt/Dimension;->height:I

    :cond_0
    const-string v3, "West"

    invoke-direct {p0, v3, v2}, Lorg/apache/poi/java/awt/BorderLayout;->getChild(Ljava/lang/String;Z)Lorg/apache/poi/java/awt/Component;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Component;->getPreferredSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v3

    iget v4, v1, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v5, v3, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v6, p0, Lorg/apache/poi/java/awt/BorderLayout;->hgap:I

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v1, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v3, v3, Lorg/apache/poi/java/awt/Dimension;->height:I

    iget v4, v1, Lorg/apache/poi/java/awt/Dimension;->height:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v1, Lorg/apache/poi/java/awt/Dimension;->height:I

    :cond_1
    const-string v3, "Center"

    invoke-direct {p0, v3, v2}, Lorg/apache/poi/java/awt/BorderLayout;->getChild(Ljava/lang/String;Z)Lorg/apache/poi/java/awt/Component;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Component;->getPreferredSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v3

    iget v4, v1, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v5, v3, Lorg/apache/poi/java/awt/Dimension;->width:I

    add-int/2addr v4, v5

    iput v4, v1, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v3, v3, Lorg/apache/poi/java/awt/Dimension;->height:I

    iget v4, v1, Lorg/apache/poi/java/awt/Dimension;->height:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v1, Lorg/apache/poi/java/awt/Dimension;->height:I

    :cond_2
    const-string v3, "North"

    invoke-direct {p0, v3, v2}, Lorg/apache/poi/java/awt/BorderLayout;->getChild(Ljava/lang/String;Z)Lorg/apache/poi/java/awt/Component;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Component;->getPreferredSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v3

    iget v4, v3, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v5, v1, Lorg/apache/poi/java/awt/Dimension;->width:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v1, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v4, v1, Lorg/apache/poi/java/awt/Dimension;->height:I

    iget v3, v3, Lorg/apache/poi/java/awt/Dimension;->height:I

    iget v5, p0, Lorg/apache/poi/java/awt/BorderLayout;->vgap:I

    add-int/2addr v3, v5

    add-int/2addr v4, v3

    iput v4, v1, Lorg/apache/poi/java/awt/Dimension;->height:I

    :cond_3
    const-string v3, "South"

    invoke-direct {p0, v3, v2}, Lorg/apache/poi/java/awt/BorderLayout;->getChild(Ljava/lang/String;Z)Lorg/apache/poi/java/awt/Component;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Component;->getPreferredSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v2

    iget v3, v2, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v4, v1, Lorg/apache/poi/java/awt/Dimension;->width:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v1, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v3, v1, Lorg/apache/poi/java/awt/Dimension;->height:I

    iget v2, v2, Lorg/apache/poi/java/awt/Dimension;->height:I

    iget v4, p0, Lorg/apache/poi/java/awt/BorderLayout;->vgap:I

    add-int/2addr v2, v4

    add-int/2addr v3, v2

    iput v3, v1, Lorg/apache/poi/java/awt/Dimension;->height:I

    :cond_4
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->getInsets()Lorg/apache/poi/java/awt/Insets;

    move-result-object p1

    iget v2, v1, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v3, p1, Lorg/apache/poi/java/awt/Insets;->left:I

    iget v4, p1, Lorg/apache/poi/java/awt/Insets;->right:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v2, v1, Lorg/apache/poi/java/awt/Dimension;->height:I

    iget v3, p1, Lorg/apache/poi/java/awt/Insets;->top:I

    iget p1, p1, Lorg/apache/poi/java/awt/Insets;->bottom:I

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
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/BorderLayout;->center:Lorg/apache/poi/java/awt/Component;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    iput-object v2, p0, Lorg/apache/poi/java/awt/BorderLayout;->center:Lorg/apache/poi/java/awt/Component;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/BorderLayout;->north:Lorg/apache/poi/java/awt/Component;

    if-ne p1, v1, :cond_1

    iput-object v2, p0, Lorg/apache/poi/java/awt/BorderLayout;->north:Lorg/apache/poi/java/awt/Component;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/java/awt/BorderLayout;->south:Lorg/apache/poi/java/awt/Component;

    if-ne p1, v1, :cond_2

    iput-object v2, p0, Lorg/apache/poi/java/awt/BorderLayout;->south:Lorg/apache/poi/java/awt/Component;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/apache/poi/java/awt/BorderLayout;->east:Lorg/apache/poi/java/awt/Component;

    if-ne p1, v1, :cond_3

    iput-object v2, p0, Lorg/apache/poi/java/awt/BorderLayout;->east:Lorg/apache/poi/java/awt/Component;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/apache/poi/java/awt/BorderLayout;->west:Lorg/apache/poi/java/awt/Component;

    if-ne p1, v1, :cond_4

    iput-object v2, p0, Lorg/apache/poi/java/awt/BorderLayout;->west:Lorg/apache/poi/java/awt/Component;

    :cond_4
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/BorderLayout;->firstLine:Lorg/apache/poi/java/awt/Component;

    if-ne p1, v1, :cond_5

    iput-object v2, p0, Lorg/apache/poi/java/awt/BorderLayout;->firstLine:Lorg/apache/poi/java/awt/Component;

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lorg/apache/poi/java/awt/BorderLayout;->lastLine:Lorg/apache/poi/java/awt/Component;

    if-ne p1, v1, :cond_6

    iput-object v2, p0, Lorg/apache/poi/java/awt/BorderLayout;->lastLine:Lorg/apache/poi/java/awt/Component;

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lorg/apache/poi/java/awt/BorderLayout;->firstItem:Lorg/apache/poi/java/awt/Component;

    if-ne p1, v1, :cond_7

    iput-object v2, p0, Lorg/apache/poi/java/awt/BorderLayout;->firstItem:Lorg/apache/poi/java/awt/Component;

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lorg/apache/poi/java/awt/BorderLayout;->lastItem:Lorg/apache/poi/java/awt/Component;

    if-ne p1, v1, :cond_8

    iput-object v2, p0, Lorg/apache/poi/java/awt/BorderLayout;->lastItem:Lorg/apache/poi/java/awt/Component;

    :cond_8
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setHgap(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/java/awt/BorderLayout;->hgap:I

    return-void
.end method

.method public setVgap(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/java/awt/BorderLayout;->vgap:I

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

    iget v1, p0, Lorg/apache/poi/java/awt/BorderLayout;->hgap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",vgap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/BorderLayout;->vgap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
