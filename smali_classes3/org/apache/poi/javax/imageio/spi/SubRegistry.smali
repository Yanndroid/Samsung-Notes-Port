.class Lorg/apache/poi/javax/imageio/spi/SubRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final accMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/security/AccessControlContext;",
            ">;"
        }
    .end annotation
.end field

.field public category:Ljava/lang/Class;

.field public final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final poset:Lorg/apache/poi/javax/imageio/spi/PartiallyOrderedSet;

.field public registry:Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;


# direct methods
.method public constructor <init>(Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;Ljava/lang/Class;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/javax/imageio/spi/PartiallyOrderedSet;

    invoke-direct {v0}, Lorg/apache/poi/javax/imageio/spi/PartiallyOrderedSet;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/spi/SubRegistry;->poset:Lorg/apache/poi/javax/imageio/spi/PartiallyOrderedSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/spi/SubRegistry;->map:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/spi/SubRegistry;->accMap:Ljava/util/Map;

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/spi/SubRegistry;->registry:Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;

    iput-object p2, p0, Lorg/apache/poi/javax/imageio/spi/SubRegistry;->category:Ljava/lang/Class;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/javax/imageio/spi/SubRegistry;Lorg/apache/poi/javax/imageio/spi/RegisterableService;)Ljava/lang/Void;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/spi/SubRegistry;->lambda$clear$0(Lorg/apache/poi/javax/imageio/spi/RegisterableService;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$clear$0(Lorg/apache/poi/javax/imageio/spi/RegisterableService;)Ljava/lang/Void;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/SubRegistry;->registry:Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/spi/SubRegistry;->category:Ljava/lang/Class;

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/javax/imageio/spi/RegisterableService;->onDeregistration(Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;Ljava/lang/Class;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/SubRegistry;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    instance-of v2, v1, Lorg/apache/poi/javax/imageio/spi/RegisterableService;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lorg/apache/poi/javax/imageio/spi/RegisterableService;

    iget-object v3, p0, Lorg/apache/poi/javax/imageio/spi/SubRegistry;->accMap:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/AccessControlContext;

    if-nez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    if-nez v3, :cond_0

    :cond_1
    new-instance v3, Lorg/apache/poi/javax/imageio/spi/a;

    invoke-direct {v3, p0, v2}, Lorg/apache/poi/javax/imageio/spi/a;-><init>(Lorg/apache/poi/javax/imageio/spi/SubRegistry;Lorg/apache/poi/javax/imageio/spi/RegisterableService;)V

    invoke-static {v3, v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/SubRegistry;->poset:Lorg/apache/poi/javax/imageio/spi/PartiallyOrderedSet;

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/spi/PartiallyOrderedSet;->clear()V

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/SubRegistry;->accMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/SubRegistry;->map:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public deregisterServiceProvider(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/SubRegistry;->map:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/SubRegistry;->map:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/SubRegistry;->accMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/SubRegistry;->poset:Lorg/apache/poi/javax/imageio/spi/PartiallyOrderedSet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/javax/imageio/spi/PartiallyOrderedSet;->remove(Ljava/lang/Object;)Z

    instance-of v0, p1, Lorg/apache/poi/javax/imageio/spi/RegisterableService;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/javax/imageio/spi/RegisterableService;

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/SubRegistry;->registry:Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/spi/SubRegistry;->category:Ljava/lang/Class;

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/javax/imageio/spi/RegisterableService;->onDeregistration(Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;Ljava/lang/Class;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/spi/SubRegistry;->clear()V

    return-void
.end method

.method public getServiceProviderByClass(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/SubRegistry;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getServiceProviders(Z)Ljava/util/Iterator;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/javax/imageio/spi/SubRegistry;->poset:Lorg/apache/poi/javax/imageio/spi/PartiallyOrderedSet;

    invoke-virtual {p1}, Lorg/apache/poi/javax/imageio/spi/PartiallyOrderedSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/javax/imageio/spi/SubRegistry;->map:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public registerServiceProvider(Ljava/lang/Object;)Z
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/SubRegistry;->map:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/poi/javax/imageio/spi/SubRegistry;->deregisterServiceProvider(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/SubRegistry;->map:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/SubRegistry;->accMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/SubRegistry;->poset:Lorg/apache/poi/javax/imageio/spi/PartiallyOrderedSet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/javax/imageio/spi/PartiallyOrderedSet;->add(Ljava/lang/Object;)Z

    instance-of v0, p1, Lorg/apache/poi/javax/imageio/spi/RegisterableService;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/apache/poi/javax/imageio/spi/RegisterableService;

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/SubRegistry;->registry:Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;

    iget-object v3, p0, Lorg/apache/poi/javax/imageio/spi/SubRegistry;->category:Ljava/lang/Class;

    invoke-interface {p1, v0, v3}, Lorg/apache/poi/javax/imageio/spi/RegisterableService;->onRegistration(Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;Ljava/lang/Class;)V

    :cond_2
    xor-int/lit8 p1, v2, 0x1

    return p1
.end method

.method public setOrdering(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/SubRegistry;->poset:Lorg/apache/poi/javax/imageio/spi/PartiallyOrderedSet;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/javax/imageio/spi/PartiallyOrderedSet;->setOrdering(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public unsetOrdering(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/SubRegistry;->poset:Lorg/apache/poi/javax/imageio/spi/PartiallyOrderedSet;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/javax/imageio/spi/PartiallyOrderedSet;->unsetOrdering(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
