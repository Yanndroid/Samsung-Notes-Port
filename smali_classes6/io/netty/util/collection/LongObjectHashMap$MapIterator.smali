.class final Lio/netty/util/collection/LongObjectHashMap$MapIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/collection/LongObjectHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Long;",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private final iter:Lio/netty/util/collection/LongObjectHashMap$PrimitiveIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/collection/LongObjectHashMap<",
            "TV;>.PrimitiveIterator;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lio/netty/util/collection/LongObjectHashMap;


# direct methods
.method private constructor <init>(Lio/netty/util/collection/LongObjectHashMap;)V
    .locals 2

    iput-object p1, p0, Lio/netty/util/collection/LongObjectHashMap$MapIterator;->this$0:Lio/netty/util/collection/LongObjectHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/netty/util/collection/LongObjectHashMap$PrimitiveIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/netty/util/collection/LongObjectHashMap$PrimitiveIterator;-><init>(Lio/netty/util/collection/LongObjectHashMap;Lio/netty/util/collection/LongObjectHashMap$1;)V

    iput-object v0, p0, Lio/netty/util/collection/LongObjectHashMap$MapIterator;->iter:Lio/netty/util/collection/LongObjectHashMap$PrimitiveIterator;

    return-void
.end method

.method public synthetic constructor <init>(Lio/netty/util/collection/LongObjectHashMap;Lio/netty/util/collection/LongObjectHashMap$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/util/collection/LongObjectHashMap$MapIterator;-><init>(Lio/netty/util/collection/LongObjectHashMap;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lio/netty/util/collection/LongObjectHashMap$MapIterator;->iter:Lio/netty/util/collection/LongObjectHashMap$PrimitiveIterator;

    invoke-virtual {v0}, Lio/netty/util/collection/LongObjectHashMap$PrimitiveIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/netty/util/collection/LongObjectHashMap$MapIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Long;",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/netty/util/collection/LongObjectHashMap$MapIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/util/collection/LongObjectHashMap$MapIterator;->iter:Lio/netty/util/collection/LongObjectHashMap$PrimitiveIterator;

    invoke-virtual {v0}, Lio/netty/util/collection/LongObjectHashMap$PrimitiveIterator;->next()Lio/netty/util/collection/LongObjectMap$PrimitiveEntry;

    new-instance v0, Lio/netty/util/collection/LongObjectHashMap$MapEntry;

    iget-object v1, p0, Lio/netty/util/collection/LongObjectHashMap$MapIterator;->this$0:Lio/netty/util/collection/LongObjectHashMap;

    iget-object v2, p0, Lio/netty/util/collection/LongObjectHashMap$MapIterator;->iter:Lio/netty/util/collection/LongObjectHashMap$PrimitiveIterator;

    invoke-static {v2}, Lio/netty/util/collection/LongObjectHashMap$PrimitiveIterator;->access$1100(Lio/netty/util/collection/LongObjectHashMap$PrimitiveIterator;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lio/netty/util/collection/LongObjectHashMap$MapEntry;-><init>(Lio/netty/util/collection/LongObjectHashMap;I)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lio/netty/util/collection/LongObjectHashMap$MapIterator;->iter:Lio/netty/util/collection/LongObjectHashMap$PrimitiveIterator;

    invoke-virtual {v0}, Lio/netty/util/collection/LongObjectHashMap$PrimitiveIterator;->remove()V

    return-void
.end method
