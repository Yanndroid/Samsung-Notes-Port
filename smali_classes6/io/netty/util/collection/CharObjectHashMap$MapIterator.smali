.class final Lio/netty/util/collection/CharObjectHashMap$MapIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/collection/CharObjectHashMap;
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
        "Ljava/lang/Character;",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private final iter:Lio/netty/util/collection/CharObjectHashMap$PrimitiveIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/collection/CharObjectHashMap<",
            "TV;>.PrimitiveIterator;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lio/netty/util/collection/CharObjectHashMap;


# direct methods
.method private constructor <init>(Lio/netty/util/collection/CharObjectHashMap;)V
    .locals 2

    iput-object p1, p0, Lio/netty/util/collection/CharObjectHashMap$MapIterator;->this$0:Lio/netty/util/collection/CharObjectHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/netty/util/collection/CharObjectHashMap$PrimitiveIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/netty/util/collection/CharObjectHashMap$PrimitiveIterator;-><init>(Lio/netty/util/collection/CharObjectHashMap;Lio/netty/util/collection/CharObjectHashMap$1;)V

    iput-object v0, p0, Lio/netty/util/collection/CharObjectHashMap$MapIterator;->iter:Lio/netty/util/collection/CharObjectHashMap$PrimitiveIterator;

    return-void
.end method

.method public synthetic constructor <init>(Lio/netty/util/collection/CharObjectHashMap;Lio/netty/util/collection/CharObjectHashMap$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/util/collection/CharObjectHashMap$MapIterator;-><init>(Lio/netty/util/collection/CharObjectHashMap;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lio/netty/util/collection/CharObjectHashMap$MapIterator;->iter:Lio/netty/util/collection/CharObjectHashMap$PrimitiveIterator;

    invoke-virtual {v0}, Lio/netty/util/collection/CharObjectHashMap$PrimitiveIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/netty/util/collection/CharObjectHashMap$MapIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Character;",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/netty/util/collection/CharObjectHashMap$MapIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/util/collection/CharObjectHashMap$MapIterator;->iter:Lio/netty/util/collection/CharObjectHashMap$PrimitiveIterator;

    invoke-virtual {v0}, Lio/netty/util/collection/CharObjectHashMap$PrimitiveIterator;->next()Lio/netty/util/collection/CharObjectMap$PrimitiveEntry;

    new-instance v0, Lio/netty/util/collection/CharObjectHashMap$MapEntry;

    iget-object v1, p0, Lio/netty/util/collection/CharObjectHashMap$MapIterator;->this$0:Lio/netty/util/collection/CharObjectHashMap;

    iget-object v2, p0, Lio/netty/util/collection/CharObjectHashMap$MapIterator;->iter:Lio/netty/util/collection/CharObjectHashMap$PrimitiveIterator;

    invoke-static {v2}, Lio/netty/util/collection/CharObjectHashMap$PrimitiveIterator;->access$1100(Lio/netty/util/collection/CharObjectHashMap$PrimitiveIterator;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lio/netty/util/collection/CharObjectHashMap$MapEntry;-><init>(Lio/netty/util/collection/CharObjectHashMap;I)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lio/netty/util/collection/CharObjectHashMap$MapIterator;->iter:Lio/netty/util/collection/CharObjectHashMap$PrimitiveIterator;

    invoke-virtual {v0}, Lio/netty/util/collection/CharObjectHashMap$PrimitiveIterator;->remove()V

    return-void
.end method
