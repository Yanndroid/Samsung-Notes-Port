.class Lorg/apache/poi/sun/misc/SoftCache$EntrySet;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sun/misc/SoftCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EntrySet"
.end annotation


# instance fields
.field public hashEntries:Ljava/util/Set;

.field public final synthetic this$0:Lorg/apache/poi/sun/misc/SoftCache;


# direct methods
.method private constructor <init>(Lorg/apache/poi/sun/misc/SoftCache;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sun/misc/SoftCache$EntrySet;->this$0:Lorg/apache/poi/sun/misc/SoftCache;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    invoke-static {p1}, Lorg/apache/poi/sun/misc/SoftCache;->access$700(Lorg/apache/poi/sun/misc/SoftCache;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sun/misc/SoftCache$EntrySet;->hashEntries:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/sun/misc/SoftCache;Lorg/apache/poi/sun/misc/SoftCache$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/sun/misc/SoftCache$EntrySet;-><init>(Lorg/apache/poi/sun/misc/SoftCache;)V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/sun/misc/SoftCache$EntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lorg/apache/poi/sun/misc/SoftCache$EntrySet$1;

    invoke-direct {v0, p0}, Lorg/apache/poi/sun/misc/SoftCache$EntrySet$1;-><init>(Lorg/apache/poi/sun/misc/SoftCache$EntrySet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sun/misc/SoftCache$EntrySet;->this$0:Lorg/apache/poi/sun/misc/SoftCache;

    invoke-static {v0}, Lorg/apache/poi/sun/misc/SoftCache;->access$800(Lorg/apache/poi/sun/misc/SoftCache;)V

    instance-of v0, p1, Lorg/apache/poi/sun/misc/SoftCache$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/sun/misc/SoftCache$EntrySet;->hashEntries:Ljava/util/Set;

    check-cast p1, Lorg/apache/poi/sun/misc/SoftCache$Entry;

    invoke-static {p1}, Lorg/apache/poi/sun/misc/SoftCache$Entry;->access$900(Lorg/apache/poi/sun/misc/SoftCache$Entry;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/sun/misc/SoftCache$EntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return v1
.end method
