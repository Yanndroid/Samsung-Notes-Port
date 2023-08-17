.class public final Lio/grpc/Attributes$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/Attributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private base:Lio/grpc/Attributes;

.field private newdata:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lio/grpc/Attributes$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lio/grpc/Attributes;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/Attributes$Builder;->base:Lio/grpc/Attributes;

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/Attributes;Lio/grpc/Attributes$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/Attributes$Builder;-><init>(Lio/grpc/Attributes;)V

    return-void
.end method

.method private data(I)Ljava/util/IdentityHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/IdentityHashMap<",
            "Lio/grpc/Attributes$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/Attributes$Builder;->newdata:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0, p1}, Ljava/util/IdentityHashMap;-><init>(I)V

    iput-object v0, p0, Lio/grpc/Attributes$Builder;->newdata:Ljava/util/IdentityHashMap;

    :cond_0
    iget-object p1, p0, Lio/grpc/Attributes$Builder;->newdata:Ljava/util/IdentityHashMap;

    return-object p1
.end method


# virtual methods
.method public build()Lio/grpc/Attributes;
    .locals 4

    iget-object v0, p0, Lio/grpc/Attributes$Builder;->newdata:Ljava/util/IdentityHashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/grpc/Attributes$Builder;->base:Lio/grpc/Attributes;

    invoke-static {v0}, Lio/grpc/Attributes;->access$100(Lio/grpc/Attributes;)Ljava/util/IdentityHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lio/grpc/Attributes$Builder;->newdata:Ljava/util/IdentityHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lio/grpc/Attributes$Builder;->newdata:Ljava/util/IdentityHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/Attributes$Key;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v0, Lio/grpc/Attributes;

    iget-object v1, p0, Lio/grpc/Attributes$Builder;->newdata:Ljava/util/IdentityHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/grpc/Attributes;-><init>(Ljava/util/IdentityHashMap;Lio/grpc/Attributes$1;)V

    iput-object v0, p0, Lio/grpc/Attributes$Builder;->base:Lio/grpc/Attributes;

    iput-object v2, p0, Lio/grpc/Attributes$Builder;->newdata:Ljava/util/IdentityHashMap;

    :cond_2
    iget-object v0, p0, Lio/grpc/Attributes$Builder;->base:Lio/grpc/Attributes;

    return-object v0
.end method

.method public discard(Lio/grpc/Attributes$Key;)Lio/grpc/Attributes$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Attributes$Key<",
            "TT;>;)",
            "Lio/grpc/Attributes$Builder;"
        }
    .end annotation

    .annotation build Lio/grpc/ExperimentalApi;
        value = "https://github.com/grpc/grpc-java/issues/5777"
    .end annotation

    iget-object v0, p0, Lio/grpc/Attributes$Builder;->base:Lio/grpc/Attributes;

    invoke-static {v0}, Lio/grpc/Attributes;->access$100(Lio/grpc/Attributes;)Ljava/util/IdentityHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/IdentityHashMap;

    iget-object v1, p0, Lio/grpc/Attributes$Builder;->base:Lio/grpc/Attributes;

    invoke-static {v1}, Lio/grpc/Attributes;->access$100(Lio/grpc/Attributes;)Ljava/util/IdentityHashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lio/grpc/Attributes;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lio/grpc/Attributes;-><init>(Ljava/util/IdentityHashMap;Lio/grpc/Attributes$1;)V

    iput-object v1, p0, Lio/grpc/Attributes$Builder;->base:Lio/grpc/Attributes;

    :cond_0
    iget-object v0, p0, Lio/grpc/Attributes$Builder;->newdata:Ljava/util/IdentityHashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p0
.end method

.method public set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Attributes$Key<",
            "TT;>;TT;)",
            "Lio/grpc/Attributes$Builder;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/grpc/Attributes$Builder;->data(I)Ljava/util/IdentityHashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setAll(Lio/grpc/Attributes;)Lio/grpc/Attributes$Builder;
    .locals 1

    invoke-static {p1}, Lio/grpc/Attributes;->access$100(Lio/grpc/Attributes;)Ljava/util/IdentityHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lio/grpc/Attributes$Builder;->data(I)Ljava/util/IdentityHashMap;

    move-result-object v0

    invoke-static {p1}, Lio/grpc/Attributes;->access$100(Lio/grpc/Attributes;)Ljava/util/IdentityHashMap;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->putAll(Ljava/util/Map;)V

    return-object p0
.end method
