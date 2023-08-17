.class public Lorg/apache/poi/sun/misc/SoftCache;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/sun/misc/SoftCache$EntrySet;,
        Lorg/apache/poi/sun/misc/SoftCache$Entry;,
        Lorg/apache/poi/sun/misc/SoftCache$ValueCell;
    }
.end annotation


# instance fields
.field private entrySet:Ljava/util/Set;

.field private hash:Ljava/util/Map;

.field private queue:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sun/misc/SoftCache;->queue:Ljava/lang/ref/ReferenceQueue;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sun/misc/SoftCache;->entrySet:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sun/misc/SoftCache;->hash:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sun/misc/SoftCache;->queue:Ljava/lang/ref/ReferenceQueue;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sun/misc/SoftCache;->entrySet:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/sun/misc/SoftCache;->hash:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sun/misc/SoftCache;->queue:Ljava/lang/ref/ReferenceQueue;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sun/misc/SoftCache;->entrySet:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v0, p0, Lorg/apache/poi/sun/misc/SoftCache;->hash:Ljava/util/Map;

    return-void
.end method

.method public static synthetic access$500(Lorg/apache/poi/sun/misc/SoftCache;)Ljava/lang/ref/ReferenceQueue;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sun/misc/SoftCache;->queue:Ljava/lang/ref/ReferenceQueue;

    return-object p0
.end method

.method public static synthetic access$600(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/sun/misc/SoftCache;->valEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$700(Lorg/apache/poi/sun/misc/SoftCache;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sun/misc/SoftCache;->hash:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$800(Lorg/apache/poi/sun/misc/SoftCache;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/sun/misc/SoftCache;->processQueue()V

    return-void
.end method

.method private processQueue()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lorg/apache/poi/sun/misc/SoftCache;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sun/misc/SoftCache$ValueCell;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/apache/poi/sun/misc/SoftCache$ValueCell;->access$000(Lorg/apache/poi/sun/misc/SoftCache$ValueCell;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/sun/misc/SoftCache;->hash:Ljava/util/Map;

    invoke-static {v0}, Lorg/apache/poi/sun/misc/SoftCache$ValueCell;->access$100(Lorg/apache/poi/sun/misc/SoftCache$ValueCell;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/poi/sun/misc/SoftCache$ValueCell;->access$210()I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static valEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/sun/misc/SoftCache;->processQueue()V

    iget-object v0, p0, Lorg/apache/poi/sun/misc/SoftCache;->hash:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sun/misc/SoftCache;->hash:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/poi/sun/misc/SoftCache$ValueCell;->access$300(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/sun/misc/SoftCache;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/sun/misc/SoftCache$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/sun/misc/SoftCache$EntrySet;-><init>(Lorg/apache/poi/sun/misc/SoftCache;Lorg/apache/poi/sun/misc/SoftCache$1;)V

    iput-object v0, p0, Lorg/apache/poi/sun/misc/SoftCache;->entrySet:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/sun/misc/SoftCache;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public fill(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-direct {p0}, Lorg/apache/poi/sun/misc/SoftCache;->processQueue()V

    iget-object v0, p0, Lorg/apache/poi/sun/misc/SoftCache;->hash:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/sun/misc/SoftCache;->fill(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/sun/misc/SoftCache;->hash:Ljava/util/Map;

    iget-object v2, p0, Lorg/apache/poi/sun/misc/SoftCache;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-static {p1, v0, v2}, Lorg/apache/poi/sun/misc/SoftCache$ValueCell;->access$400(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Lorg/apache/poi/sun/misc/SoftCache$ValueCell;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    const/4 p1, 0x0

    invoke-static {v0, p1}, Lorg/apache/poi/sun/misc/SoftCache$ValueCell;->access$300(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/sun/misc/SoftCache;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/sun/misc/SoftCache;->processQueue()V

    iget-object v0, p0, Lorg/apache/poi/sun/misc/SoftCache;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-static {p1, p2, v0}, Lorg/apache/poi/sun/misc/SoftCache$ValueCell;->access$400(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Lorg/apache/poi/sun/misc/SoftCache$ValueCell;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/poi/sun/misc/SoftCache;->hash:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lorg/apache/poi/sun/misc/SoftCache$ValueCell;->access$300(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/sun/misc/SoftCache;->processQueue()V

    iget-object v0, p0, Lorg/apache/poi/sun/misc/SoftCache;->hash:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/apache/poi/sun/misc/SoftCache$ValueCell;->access$300(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/sun/misc/SoftCache;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
