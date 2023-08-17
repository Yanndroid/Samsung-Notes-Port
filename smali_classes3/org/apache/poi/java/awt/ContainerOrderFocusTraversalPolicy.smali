.class public Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;
.super Lorg/apache/poi/java/awt/FocusTraversalPolicy;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

.field private static final serialVersionUID:J = 0x6c1efa1fe0f814fL


# instance fields
.field private final BACKWARD_TRAVERSAL:I

.field private final FORWARD_TRAVERSAL:I

.field private transient cachedCycle:Ljava/util/List;

.field private transient cachedRoot:Lorg/apache/poi/java/awt/Container;

.field private implicitDownCycleTraversal:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "org.apache.poi.java.awt.ContainerOrderFocusTraversalPolicy"

    invoke-static {v0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/java/awt/FocusTraversalPolicy;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->FORWARD_TRAVERSAL:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->BACKWARD_TRAVERSAL:I

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->implicitDownCycleTraversal:Z

    return-void
.end method

.method private enumerateCycle(Lorg/apache/poi/java/awt/Container;Ljava/util/List;)V
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->isDisplayable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->getComponents()[Lorg/apache/poi/java/awt/Component;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-object v1, p1, v0

    instance-of v2, v1, Lorg/apache/poi/java/awt/Container;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lorg/apache/poi/java/awt/Container;

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Container;->isFocusCycleRoot()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Container;->isFocusTraversalPolicyProvider()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, v2, p2}, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->enumerateCycle(Lorg/apache/poi/java/awt/Container;Ljava/util/List;)V

    goto :goto_1

    :cond_1
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private getComponentDownCycle(Lorg/apache/poi/java/awt/Component;I)Lorg/apache/poi/java/awt/Component;
    .locals 3

    instance-of v0, p1, Lorg/apache/poi/java/awt/Container;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Lorg/apache/poi/java/awt/Container;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->isFocusCycleRoot()Z

    move-result v0

    const/16 v2, 0x1f4

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->getImplicitDownCycleTraversal()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->getFocusTraversalPolicy()Lorg/apache/poi/java/awt/FocusTraversalPolicy;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/poi/java/awt/FocusTraversalPolicy;->getDefaultComponent(Lorg/apache/poi/java/awt/Container;)Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object p2, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    invoke-virtual {p2, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### Transfered focus down-cycle to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in the focus cycle root "

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->isFocusTraversalPolicyProvider()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->getFocusTraversalPolicy()Lorg/apache/poi/java/awt/FocusTraversalPolicy;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/poi/java/awt/FocusTraversalPolicy;->getDefaultComponent(Lorg/apache/poi/java/awt/Container;)Lorg/apache/poi/java/awt/Component;

    move-result-object p2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->getFocusTraversalPolicy()Lorg/apache/poi/java/awt/FocusTraversalPolicy;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/poi/java/awt/FocusTraversalPolicy;->getLastComponent(Lorg/apache/poi/java/awt/Container;)Lorg/apache/poi/java/awt/Component;

    move-result-object p2

    :goto_1
    move-object v1, p2

    if-eqz v1, :cond_3

    sget-object p2, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    invoke-virtual {p2, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### Transfered focus to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in the FTP provider "

    goto :goto_0

    :cond_3
    :goto_2
    return-object v1
.end method

.method private getComponentIndex(Ljava/util/List;Lorg/apache/poi/java/awt/Component;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/java/awt/Component;",
            ">;",
            "Lorg/apache/poi/java/awt/Component;",
            ")I"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method private getFocusTraversalCycle(Lorg/apache/poi/java/awt/Container;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/java/awt/Container;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/java/awt/Component;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->enumerateCycle(Lorg/apache/poi/java/awt/Container;Ljava/util/List;)V

    return-object v0
.end method

.method private getTopmostProvider(Lorg/apache/poi/java/awt/Container;Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Container;
    .locals 3

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/Component;->getParent()Lorg/apache/poi/java/awt/Container;

    move-result-object p2

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    if-eq p2, p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/Container;->isFocusTraversalPolicyProvider()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, p2

    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/java/awt/Component;->getParent()Lorg/apache/poi/java/awt/Container;

    move-result-object p2

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    return-object v0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public accept(Lorg/apache/poi/java/awt/Component;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->canBeFocusOwner()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Lorg/apache/poi/java/awt/Window;

    if-nez v0, :cond_3

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getParent()Lorg/apache/poi/java/awt/Container;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    instance-of v0, p1, Lorg/apache/poi/java/awt/Window;

    if-eqz v0, :cond_1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public getComponentAfter(Lorg/apache/poi/java/awt/Container;Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Component;
    .locals 8

    sget-object v0, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### Searching in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for component after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_12

    if-eqz p2, :cond_12

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->isFocusTraversalPolicyProvider()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->isFocusCycleRoot()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "aContainer should be focus cycle root or focus traversal policy provider"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->isFocusCycleRoot()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p2, p1}, Lorg/apache/poi/java/awt/Component;->isFocusCycleRoot(Lorg/apache/poi/java/awt/Container;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "aContainer is not a focus cycle root of aComponent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_11

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->isDisplayable()Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_3

    :cond_5
    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->getComponentDownCycle(Lorg/apache/poi/java/awt/Component;I)Lorg/apache/poi/java/awt/Component;

    move-result-object v5

    if-eqz v5, :cond_6

    monitor-exit v2

    return-object v5

    :cond_6
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->getTopmostProvider(Lorg/apache/poi/java/awt/Container;Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Container;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v6

    if-eqz v6, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "### Asking FTP "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " for component after "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v5}, Lorg/apache/poi/java/awt/Container;->getFocusTraversalPolicy()Lorg/apache/poi/java/awt/FocusTraversalPolicy;

    move-result-object v6

    invoke-virtual {v6, v5, p2}, Lorg/apache/poi/java/awt/FocusTraversalPolicy;->getComponentAfter(Lorg/apache/poi/java/awt/Container;Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Component;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result p1

    if-eqz p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "### FTP returned "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_8
    monitor-exit v2

    return-object p2

    :cond_9
    move-object p2, v5

    :cond_a
    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->getFocusTraversalCycle(Lorg/apache/poi/java/awt/Container;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v6

    if-eqz v6, :cond_b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "### Cycle is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", component is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_b
    invoke-direct {p0, v5, p2}, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->getComponentIndex(Ljava/util/List;Lorg/apache/poi/java/awt/Component;)I

    move-result v6

    if-gez v6, :cond_e

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### Didn\'t find component "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " in a cycle "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->getFirstComponent(Lorg/apache/poi/java/awt/Container;)Lorg/apache/poi/java/awt/Component;

    move-result-object p1

    monitor-exit v2

    return-object p1

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p2

    if-ge v6, p2, :cond_f

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/java/awt/Component;

    invoke-virtual {p0, p2}, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->accept(Lorg/apache/poi/java/awt/Component;)Z

    move-result v0

    if-eqz v0, :cond_d

    monitor-exit v2

    return-object p2

    :cond_d
    invoke-direct {p0, p2, v3}, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->getComponentDownCycle(Lorg/apache/poi/java/awt/Component;I)Lorg/apache/poi/java/awt/Component;

    move-result-object p2

    if-eqz p2, :cond_e

    monitor-exit v2

    return-object p2

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_f
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->isFocusCycleRoot()Z

    move-result p2

    if-eqz p2, :cond_10

    iput-object p1, p0, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->cachedRoot:Lorg/apache/poi/java/awt/Container;

    iput-object v5, p0, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->cachedCycle:Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->getFirstComponent(Lorg/apache/poi/java/awt/Container;)Lorg/apache/poi/java/awt/Component;

    move-result-object p1

    iput-object v4, p0, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->cachedRoot:Lorg/apache/poi/java/awt/Container;

    iput-object v4, p0, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->cachedCycle:Ljava/util/List;

    monitor-exit v2

    return-object p1

    :cond_10
    monitor-exit v2

    return-object v4

    :cond_11
    :goto_3
    monitor-exit v2

    return-object v4

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "aContainer and aComponent cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getComponentBefore(Lorg/apache/poi/java/awt/Container;Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Component;
    .locals 7

    if-eqz p1, :cond_11

    if-eqz p2, :cond_11

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->isFocusTraversalPolicyProvider()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->isFocusCycleRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "aContainer should be focus cycle root or focus traversal policy provider"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->isFocusCycleRoot()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2, p1}, Lorg/apache/poi/java/awt/Component;->isFocusCycleRoot(Lorg/apache/poi/java/awt/Container;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "aContainer is not a focus cycle root of aComponent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->isDisplayable()Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_2

    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->getTopmostProvider(Lorg/apache/poi/java/awt/Container;Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Container;

    move-result-object v1

    const/16 v3, 0x1f4

    if-eqz v1, :cond_9

    sget-object v4, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    invoke-virtual {v4, v3}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "### Asking FTP "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " for component after "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Container;->getFocusTraversalPolicy()Lorg/apache/poi/java/awt/FocusTraversalPolicy;

    move-result-object v5

    invoke-virtual {v5, v1, p2}, Lorg/apache/poi/java/awt/FocusTraversalPolicy;->getComponentBefore(Lorg/apache/poi/java/awt/Container;Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Component;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {v4, v3}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "### FTP returned "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_6
    monitor-exit v0

    return-object p2

    :cond_7
    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->accept(Lorg/apache/poi/java/awt/Component;)Z

    move-result p2

    if-eqz p2, :cond_8

    monitor-exit v0

    return-object v1

    :cond_8
    move-object p2, v1

    :cond_9
    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->getFocusTraversalCycle(Lorg/apache/poi/java/awt/Container;)Ljava/util/List;

    move-result-object v1

    sget-object v4, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    invoke-virtual {v4, v3}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v5

    if-eqz v5, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "### Cycle is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", component is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_a
    invoke-direct {p0, v1, p2}, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->getComponentIndex(Ljava/util/List;Lorg/apache/poi/java/awt/Component;)I

    move-result v5

    if-gez v5, :cond_c

    invoke-virtual {v4, v3}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### Didn\'t find component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " in a cycle "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->getLastComponent(Lorg/apache/poi/java/awt/Container;)Lorg/apache/poi/java/awt/Component;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_c
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_e

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/java/awt/Component;

    if-eq p2, p1, :cond_d

    const/4 v3, 0x1

    invoke-direct {p0, p2, v3}, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->getComponentDownCycle(Lorg/apache/poi/java/awt/Component;I)Lorg/apache/poi/java/awt/Component;

    move-result-object v3

    if-eqz v3, :cond_d

    monitor-exit v0

    return-object v3

    :cond_d
    invoke-virtual {p0, p2}, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->accept(Lorg/apache/poi/java/awt/Component;)Z

    move-result v3

    if-eqz v3, :cond_c

    monitor-exit v0

    return-object p2

    :cond_e
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->isFocusCycleRoot()Z

    move-result p2

    if-eqz p2, :cond_f

    iput-object p1, p0, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->cachedRoot:Lorg/apache/poi/java/awt/Container;

    iput-object v1, p0, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->cachedCycle:Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->getLastComponent(Lorg/apache/poi/java/awt/Container;)Lorg/apache/poi/java/awt/Component;

    move-result-object p1

    iput-object v2, p0, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->cachedRoot:Lorg/apache/poi/java/awt/Container;

    iput-object v2, p0, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->cachedCycle:Ljava/util/List;

    monitor-exit v0

    return-object p1

    :cond_f
    monitor-exit v0

    return-object v2

    :cond_10
    :goto_2
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "aContainer and aComponent cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDefaultComponent(Lorg/apache/poi/java/awt/Container;)Lorg/apache/poi/java/awt/Component;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->getFirstComponent(Lorg/apache/poi/java/awt/Container;)Lorg/apache/poi/java/awt/Component;

    move-result-object p1

    return-object p1
.end method

.method public getFirstComponent(Lorg/apache/poi/java/awt/Container;)Lorg/apache/poi/java/awt/Component;
    .locals 6

    sget-object v0, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### Getting first component in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_9

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->isDisplayable()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->cachedRoot:Lorg/apache/poi/java/awt/Container;

    if-ne v3, p1, :cond_2

    iget-object v3, p0, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->cachedCycle:Ljava/util/List;

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->getFocusTraversalCycle(Lorg/apache/poi/java/awt/Container;)Ljava/util/List;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "### Cycle is empty"

    invoke-virtual {v0, p1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_3
    monitor-exit v2

    return-object v4

    :cond_4
    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### Cycle is "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/Component;

    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->accept(Lorg/apache/poi/java/awt/Component;)Z

    move-result v3

    if-eqz v3, :cond_7

    monitor-exit v2

    return-object v1

    :cond_7
    if-eq v1, p1, :cond_6

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->getComponentDownCycle(Lorg/apache/poi/java/awt/Component;I)Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    if-eqz v1, :cond_6

    monitor-exit v2

    return-object v1

    :cond_8
    monitor-exit v2

    return-object v4

    :cond_9
    :goto_1
    monitor-exit v2

    return-object v4

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "aContainer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getImplicitDownCycleTraversal()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->implicitDownCycleTraversal:Z

    return v0
.end method

.method public getLastComponent(Lorg/apache/poi/java/awt/Container;)Lorg/apache/poi/java/awt/Component;
    .locals 6

    sget-object v0, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### Getting last component in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_9

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->isDisplayable()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->cachedRoot:Lorg/apache/poi/java/awt/Container;

    if-ne v3, p1, :cond_2

    iget-object v3, p0, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->cachedCycle:Ljava/util/List;

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->getFocusTraversalCycle(Lorg/apache/poi/java/awt/Container;)Ljava/util/List;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "### Cycle is empty"

    invoke-virtual {v0, p1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_3
    monitor-exit v2

    return-object v4

    :cond_4
    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### Cycle is "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_8

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/Component;

    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->accept(Lorg/apache/poi/java/awt/Component;)Z

    move-result v5

    if-eqz v5, :cond_6

    monitor-exit v2

    return-object v1

    :cond_6
    instance-of v5, v1, Lorg/apache/poi/java/awt/Container;

    if-eqz v5, :cond_7

    if-eq v1, p1, :cond_7

    check-cast v1, Lorg/apache/poi/java/awt/Container;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Container;->isFocusTraversalPolicyProvider()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Container;->getFocusTraversalPolicy()Lorg/apache/poi/java/awt/FocusTraversalPolicy;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/apache/poi/java/awt/FocusTraversalPolicy;->getLastComponent(Lorg/apache/poi/java/awt/Container;)Lorg/apache/poi/java/awt/Component;

    move-result-object p1

    monitor-exit v2

    return-object p1

    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_8
    monitor-exit v2

    return-object v4

    :cond_9
    :goto_2
    monitor-exit v2

    return-object v4

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "aContainer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setImplicitDownCycleTraversal(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/ContainerOrderFocusTraversalPolicy;->implicitDownCycleTraversal:Z

    return-void
.end method
