.class Lorg/apache/poi/sun/misc/SoftCache$EntrySet$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/sun/misc/SoftCache$EntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public hashIterator:Ljava/util/Iterator;

.field public next:Lorg/apache/poi/sun/misc/SoftCache$Entry;

.field public final synthetic this$1:Lorg/apache/poi/sun/misc/SoftCache$EntrySet;


# direct methods
.method public constructor <init>(Lorg/apache/poi/sun/misc/SoftCache$EntrySet;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sun/misc/SoftCache$EntrySet$1;->this$1:Lorg/apache/poi/sun/misc/SoftCache$EntrySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lorg/apache/poi/sun/misc/SoftCache$EntrySet;->hashEntries:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sun/misc/SoftCache$EntrySet$1;->hashIterator:Ljava/util/Iterator;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/sun/misc/SoftCache$EntrySet$1;->next:Lorg/apache/poi/sun/misc/SoftCache$Entry;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    :goto_0
    iget-object v0, p0, Lorg/apache/poi/sun/misc/SoftCache$EntrySet$1;->hashIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/sun/misc/SoftCache$EntrySet$1;->hashIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/sun/misc/SoftCache$ValueCell;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/poi/sun/misc/SoftCache$Entry;

    iget-object v3, p0, Lorg/apache/poi/sun/misc/SoftCache$EntrySet$1;->this$1:Lorg/apache/poi/sun/misc/SoftCache$EntrySet;

    iget-object v3, v3, Lorg/apache/poi/sun/misc/SoftCache$EntrySet;->this$0:Lorg/apache/poi/sun/misc/SoftCache;

    invoke-direct {v1, v3, v0, v2}, Lorg/apache/poi/sun/misc/SoftCache$Entry;-><init>(Lorg/apache/poi/sun/misc/SoftCache;Ljava/util/Map$Entry;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/apache/poi/sun/misc/SoftCache$EntrySet$1;->next:Lorg/apache/poi/sun/misc/SoftCache$Entry;

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/sun/misc/SoftCache$EntrySet$1;->next:Lorg/apache/poi/sun/misc/SoftCache$Entry;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/sun/misc/SoftCache$EntrySet$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/sun/misc/SoftCache$EntrySet$1;->next:Lorg/apache/poi/sun/misc/SoftCache$Entry;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/poi/sun/misc/SoftCache$EntrySet$1;->next:Lorg/apache/poi/sun/misc/SoftCache$Entry;

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sun/misc/SoftCache$EntrySet$1;->hashIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
