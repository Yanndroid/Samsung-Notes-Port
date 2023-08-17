.class public Lorg/apache/poi/java/awt/CardLayout;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/LayoutManager2;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/CardLayout$Card;
    }
.end annotation


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = -0x3c10d7c4887456e9L


# instance fields
.field public currentCard:I

.field public hgap:I

.field public vector:Ljava/util/Vector;

.field public vgap:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    const-class v2, Ljava/util/Hashtable;

    const-string/jumbo v3, "tab"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "hgap"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v3, "vgap"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Ljava/io/ObjectStreamField;

    const-class v3, Ljava/util/Vector;

    const-string/jumbo v4, "vector"

    invoke-direct {v1, v4, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v3, "currentCard"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/poi/java/awt/CardLayout;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/apache/poi/java/awt/CardLayout;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/java/awt/CardLayout;->vector:Ljava/util/Vector;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/java/awt/CardLayout;->currentCard:I

    iput p1, p0, Lorg/apache/poi/java/awt/CardLayout;->hgap:I

    iput p2, p0, Lorg/apache/poi/java/awt/CardLayout;->vgap:I

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object p1

    const-string v0, "hgap"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/java/awt/CardLayout;->hgap:I

    const-string/jumbo v0, "vgap"

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/java/awt/CardLayout;->vgap:I

    const-string/jumbo v0, "vector"

    invoke-virtual {p1, v0}, Ljava/io/ObjectInputStream$GetField;->defaulted(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string/jumbo v0, "tab"

    invoke-virtual {p1, v0, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/java/awt/CardLayout;->vector:Ljava/util/Vector;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/java/awt/Component;

    iget-object v3, p0, Lorg/apache/poi/java/awt/CardLayout;->vector:Ljava/util/Vector;

    new-instance v4, Lorg/apache/poi/java/awt/CardLayout$Card;

    invoke-direct {v4, p0, v1, v2}, Lorg/apache/poi/java/awt/CardLayout$Card;-><init>(Lorg/apache/poi/java/awt/CardLayout;Ljava/lang/String;Lorg/apache/poi/java/awt/Component;)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/java/awt/CardLayout;->vector:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/poi/java/awt/CardLayout;->currentCard:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    iput-object v0, p0, Lorg/apache/poi/java/awt/CardLayout;->vector:Ljava/util/Vector;

    const-string v0, "currentCard"

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/java/awt/CardLayout;->currentCard:I

    :cond_2
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/java/awt/CardLayout;->vector:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lorg/apache/poi/java/awt/CardLayout;->vector:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/java/awt/CardLayout$Card;

    iget-object v4, v3, Lorg/apache/poi/java/awt/CardLayout$Card;->name:Ljava/lang/String;

    iget-object v3, v3, Lorg/apache/poi/java/awt/CardLayout$Card;->comp:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/java/awt/CardLayout;->hgap:I

    const-string v3, "hgap"

    invoke-virtual {v1, v3, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    iget v2, p0, Lorg/apache/poi/java/awt/CardLayout;->vgap:I

    const-string/jumbo v3, "vgap"

    invoke-virtual {v1, v3, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    iget-object v2, p0, Lorg/apache/poi/java/awt/CardLayout;->vector:Ljava/util/Vector;

    const-string/jumbo v3, "vector"

    invoke-virtual {v1, v3, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget v2, p0, Lorg/apache/poi/java/awt/CardLayout;->currentCard:I

    const-string v3, "currentCard"

    invoke-virtual {v1, v3, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string/jumbo v2, "tab"

    invoke-virtual {v1, v2, v0}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    return-void
.end method


# virtual methods
.method public addLayoutComponent(Ljava/lang/String;Lorg/apache/poi/java/awt/Component;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/CardLayout;->vector:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p2, v2}, Lorg/apache/poi/java/awt/Component;->setVisible(Z)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/CardLayout;->vector:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/java/awt/CardLayout;->vector:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/CardLayout$Card;

    iget-object v1, v1, Lorg/apache/poi/java/awt/CardLayout$Card;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/java/awt/CardLayout;->vector:Ljava/util/Vector;

    invoke-virtual {p1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/java/awt/CardLayout$Card;

    iput-object p2, p1, Lorg/apache/poi/java/awt/CardLayout$Card;->comp:Lorg/apache/poi/java/awt/Component;

    monitor-exit v0

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/apache/poi/java/awt/CardLayout;->vector:Ljava/util/Vector;

    new-instance v2, Lorg/apache/poi/java/awt/CardLayout$Card;

    invoke-direct {v2, p0, p1, p2}, Lorg/apache/poi/java/awt/CardLayout$Card;-><init>(Lorg/apache/poi/java/awt/CardLayout;Ljava/lang/String;Lorg/apache/poi/java/awt/Component;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

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

    if-nez p2, :cond_0

    :try_start_0
    const-string p2, ""

    :cond_0
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lorg/apache/poi/java/awt/CardLayout;->addLayoutComponent(Ljava/lang/String;Lorg/apache/poi/java/awt/Component;)V

    monitor-exit v0

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cannot add to layout: constraint must be a string"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public checkLayout(Lorg/apache/poi/java/awt/Container;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->getLayout()Lorg/apache/poi/java/awt/LayoutManager;

    move-result-object p1

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "wrong parent for CardLayout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public first(Lorg/apache/poi/java/awt/Container;)V
    .locals 6

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/CardLayout;->checkLayout(Lorg/apache/poi/java/awt/Container;)V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->getComponentCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p1, v3}, Lorg/apache/poi/java/awt/Container;->getComponent(I)Lorg/apache/poi/java/awt/Component;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v2}, Lorg/apache/poi/java/awt/Component;->setVisible(Z)V

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-lez v1, :cond_2

    iput v2, p0, Lorg/apache/poi/java/awt/CardLayout;->currentCard:I

    invoke-virtual {p1, v2}, Lorg/apache/poi/java/awt/Container;->getComponent(I)Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/java/awt/Component;->setVisible(Z)V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->validate()V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getHgap()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/CardLayout;->hgap:I

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

.method public getVgap()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/CardLayout;->vgap:I

    return v0
.end method

.method public invalidateLayout(Lorg/apache/poi/java/awt/Container;)V
    .locals 0

    return-void
.end method

.method public last(Lorg/apache/poi/java/awt/Container;)V
    .locals 6

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/CardLayout;->checkLayout(Lorg/apache/poi/java/awt/Container;)V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->getComponentCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p1, v3}, Lorg/apache/poi/java/awt/Container;->getComponent(I)Lorg/apache/poi/java/awt/Component;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v2}, Lorg/apache/poi/java/awt/Component;->setVisible(Z)V

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-lez v1, :cond_2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/apache/poi/java/awt/CardLayout;->currentCard:I

    invoke-virtual {p1, v1}, Lorg/apache/poi/java/awt/Container;->getComponent(I)Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/apache/poi/java/awt/Component;->setVisible(Z)V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->validate()V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public layoutContainer(Lorg/apache/poi/java/awt/Container;)V
    .locals 16

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

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v6, v4, :cond_1

    invoke-virtual {v0, v6}, Lorg/apache/poi/java/awt/Container;->getComponent(I)Lorg/apache/poi/java/awt/Component;

    move-result-object v9

    iget v10, v1, Lorg/apache/poi/java/awt/CardLayout;->hgap:I

    iget v11, v3, Lorg/apache/poi/java/awt/Insets;->left:I

    add-int v12, v10, v11

    iget v13, v1, Lorg/apache/poi/java/awt/CardLayout;->vgap:I

    iget v14, v3, Lorg/apache/poi/java/awt/Insets;->top:I

    add-int v15, v13, v14

    iget v8, v0, Lorg/apache/poi/java/awt/Component;->width:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v11

    iget v11, v3, Lorg/apache/poi/java/awt/Insets;->right:I

    add-int/2addr v10, v11

    sub-int/2addr v8, v10

    iget v10, v0, Lorg/apache/poi/java/awt/Component;->height:I

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v13, v14

    iget v11, v3, Lorg/apache/poi/java/awt/Insets;->bottom:I

    add-int/2addr v13, v11

    sub-int/2addr v10, v13

    invoke-virtual {v9, v12, v15, v8, v10}, Lorg/apache/poi/java/awt/Component;->setBounds(IIII)V

    invoke-virtual {v9}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    if-nez v7, :cond_2

    if-lez v4, :cond_2

    invoke-virtual {v0, v5}, Lorg/apache/poi/java/awt/Container;->getComponent(I)Lorg/apache/poi/java/awt/Component;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/apache/poi/java/awt/Component;->setVisible(Z)V

    :cond_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public maximumLayoutSize(Lorg/apache/poi/java/awt/Container;)Lorg/apache/poi/java/awt/Dimension;
    .locals 1

    new-instance p1, Lorg/apache/poi/java/awt/Dimension;

    const v0, 0x7fffffff

    invoke-direct {p1, v0, v0}, Lorg/apache/poi/java/awt/Dimension;-><init>(II)V

    return-object p1
.end method

.method public minimumLayoutSize(Lorg/apache/poi/java/awt/Container;)Lorg/apache/poi/java/awt/Dimension;
    .locals 8

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->getInsets()Lorg/apache/poi/java/awt/Insets;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->getComponentCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {p1, v3}, Lorg/apache/poi/java/awt/Container;->getComponent(I)Lorg/apache/poi/java/awt/Component;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/java/awt/Component;->getMinimumSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v6

    iget v7, v6, Lorg/apache/poi/java/awt/Dimension;->width:I

    if-le v7, v4, :cond_0

    move v4, v7

    :cond_0
    iget v6, v6, Lorg/apache/poi/java/awt/Dimension;->height:I

    if-le v6, v5, :cond_1

    move v5, v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/apache/poi/java/awt/Dimension;

    iget v2, v1, Lorg/apache/poi/java/awt/Insets;->left:I

    iget v3, v1, Lorg/apache/poi/java/awt/Insets;->right:I

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    iget v3, p0, Lorg/apache/poi/java/awt/CardLayout;->hgap:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v1, Lorg/apache/poi/java/awt/Insets;->top:I

    iget v1, v1, Lorg/apache/poi/java/awt/Insets;->bottom:I

    add-int/2addr v3, v1

    add-int/2addr v3, v5

    iget v1, p0, Lorg/apache/poi/java/awt/CardLayout;->vgap:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v3, v1

    invoke-direct {p1, v2, v3}, Lorg/apache/poi/java/awt/Dimension;-><init>(II)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public next(Lorg/apache/poi/java/awt/Container;)V
    .locals 6

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/CardLayout;->checkLayout(Lorg/apache/poi/java/awt/Container;)V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->getComponentCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p1, v3}, Lorg/apache/poi/java/awt/Container;->getComponent(I)Lorg/apache/poi/java/awt/Component;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v2}, Lorg/apache/poi/java/awt/Component;->setVisible(Z)V

    const/4 v2, 0x1

    add-int/2addr v3, v2

    rem-int/2addr v3, v1

    iput v3, p0, Lorg/apache/poi/java/awt/CardLayout;->currentCard:I

    invoke-virtual {p1, v3}, Lorg/apache/poi/java/awt/Container;->getComponent(I)Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/apache/poi/java/awt/Component;->setVisible(Z)V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->validate()V

    monitor-exit v0

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/CardLayout;->showDefaultComponent(Lorg/apache/poi/java/awt/Container;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public preferredLayoutSize(Lorg/apache/poi/java/awt/Container;)Lorg/apache/poi/java/awt/Dimension;
    .locals 8

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->getInsets()Lorg/apache/poi/java/awt/Insets;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->getComponentCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {p1, v3}, Lorg/apache/poi/java/awt/Container;->getComponent(I)Lorg/apache/poi/java/awt/Component;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/java/awt/Component;->getPreferredSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v6

    iget v7, v6, Lorg/apache/poi/java/awt/Dimension;->width:I

    if-le v7, v4, :cond_0

    move v4, v7

    :cond_0
    iget v6, v6, Lorg/apache/poi/java/awt/Dimension;->height:I

    if-le v6, v5, :cond_1

    move v5, v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/apache/poi/java/awt/Dimension;

    iget v2, v1, Lorg/apache/poi/java/awt/Insets;->left:I

    iget v3, v1, Lorg/apache/poi/java/awt/Insets;->right:I

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    iget v3, p0, Lorg/apache/poi/java/awt/CardLayout;->hgap:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v1, Lorg/apache/poi/java/awt/Insets;->top:I

    iget v1, v1, Lorg/apache/poi/java/awt/Insets;->bottom:I

    add-int/2addr v3, v1

    add-int/2addr v3, v5

    iget v1, p0, Lorg/apache/poi/java/awt/CardLayout;->vgap:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v3, v1

    invoke-direct {p1, v2, v3}, Lorg/apache/poi/java/awt/Dimension;-><init>(II)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public previous(Lorg/apache/poi/java/awt/Container;)V
    .locals 6

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/CardLayout;->checkLayout(Lorg/apache/poi/java/awt/Container;)V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->getComponentCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p1, v3}, Lorg/apache/poi/java/awt/Container;->getComponent(I)Lorg/apache/poi/java/awt/Component;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v2}, Lorg/apache/poi/java/awt/Component;->setVisible(Z)V

    const/4 v2, 0x1

    if-lez v3, :cond_0

    sub-int/2addr v3, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v1, -0x1

    :goto_1
    iput v3, p0, Lorg/apache/poi/java/awt/CardLayout;->currentCard:I

    invoke-virtual {p1, v3}, Lorg/apache/poi/java/awt/Container;->getComponent(I)Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/apache/poi/java/awt/Component;->setVisible(Z)V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->validate()V

    monitor-exit v0

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/CardLayout;->showDefaultComponent(Lorg/apache/poi/java/awt/Container;)V

    monitor-exit v0

    return-void

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

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/poi/java/awt/CardLayout;->vector:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/apache/poi/java/awt/CardLayout;->vector:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/java/awt/CardLayout$Card;

    iget-object v2, v2, Lorg/apache/poi/java/awt/CardLayout$Card;->comp:Lorg/apache/poi/java/awt/Component;

    if-ne v2, p1, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getParent()Lorg/apache/poi/java/awt/Container;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getParent()Lorg/apache/poi/java/awt/Container;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/CardLayout;->next(Lorg/apache/poi/java/awt/Container;)V

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/java/awt/CardLayout;->vector:Ljava/util/Vector;

    invoke-virtual {p1, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    iget p1, p0, Lorg/apache/poi/java/awt/CardLayout;->currentCard:I

    if-le p1, v1, :cond_2

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/poi/java/awt/CardLayout;->currentCard:I

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
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

    iput p1, p0, Lorg/apache/poi/java/awt/CardLayout;->hgap:I

    return-void
.end method

.method public setVgap(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/java/awt/CardLayout;->vgap:I

    return-void
.end method

.method public show(Lorg/apache/poi/java/awt/Container;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/CardLayout;->checkLayout(Lorg/apache/poi/java/awt/Container;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/poi/java/awt/CardLayout;->vector:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    iget-object v5, p0, Lorg/apache/poi/java/awt/CardLayout;->vector:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/java/awt/CardLayout$Card;

    iget-object v6, v5, Lorg/apache/poi/java/awt/CardLayout$Card;->name:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v1, v5, Lorg/apache/poi/java/awt/CardLayout$Card;->comp:Lorg/apache/poi/java/awt/Component;

    iput v4, p0, Lorg/apache/poi/java/awt/CardLayout;->currentCard:I

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->getComponentCount()I

    move-result p2

    move v2, v3

    :goto_2
    if-ge v2, p2, :cond_3

    invoke-virtual {p1, v2}, Lorg/apache/poi/java/awt/Container;->getComponent(I)Lorg/apache/poi/java/awt/Component;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v3}, Lorg/apache/poi/java/awt/Component;->setVisible(Z)V

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    const/4 p2, 0x1

    invoke-virtual {v1, p2}, Lorg/apache/poi/java/awt/Component;->setVisible(Z)V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->validate()V

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

.method public showDefaultComponent(Lorg/apache/poi/java/awt/Container;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->getComponentCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/java/awt/CardLayout;->currentCard:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/java/awt/Container;->getComponent(I)Lorg/apache/poi/java/awt/Component;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/Component;->setVisible(Z)V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->validate()V

    :cond_0
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

    iget v1, p0, Lorg/apache/poi/java/awt/CardLayout;->hgap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",vgap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/CardLayout;->vgap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
