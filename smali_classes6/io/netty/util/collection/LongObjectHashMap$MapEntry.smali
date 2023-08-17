.class final Lio/netty/util/collection/LongObjectHashMap$MapEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/collection/LongObjectHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Long;",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final entryIndex:I

.field public final synthetic this$0:Lio/netty/util/collection/LongObjectHashMap;


# direct methods
.method public constructor <init>(Lio/netty/util/collection/LongObjectHashMap;I)V
    .locals 0

    iput-object p1, p0, Lio/netty/util/collection/LongObjectHashMap$MapEntry;->this$0:Lio/netty/util/collection/LongObjectHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lio/netty/util/collection/LongObjectHashMap$MapEntry;->entryIndex:I

    return-void
.end method

.method private verifyExists()V
    .locals 2

    iget-object v0, p0, Lio/netty/util/collection/LongObjectHashMap$MapEntry;->this$0:Lio/netty/util/collection/LongObjectHashMap;

    invoke-static {v0}, Lio/netty/util/collection/LongObjectHashMap;->access$600(Lio/netty/util/collection/LongObjectHashMap;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lio/netty/util/collection/LongObjectHashMap$MapEntry;->entryIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The map entry has been removed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getKey()Ljava/lang/Long;
    .locals 3

    invoke-direct {p0}, Lio/netty/util/collection/LongObjectHashMap$MapEntry;->verifyExists()V

    iget-object v0, p0, Lio/netty/util/collection/LongObjectHashMap$MapEntry;->this$0:Lio/netty/util/collection/LongObjectHashMap;

    invoke-static {v0}, Lio/netty/util/collection/LongObjectHashMap;->access$800(Lio/netty/util/collection/LongObjectHashMap;)[J

    move-result-object v0

    iget v1, p0, Lio/netty/util/collection/LongObjectHashMap$MapEntry;->entryIndex:I

    aget-wide v1, v0, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/netty/util/collection/LongObjectHashMap$MapEntry;->getKey()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    invoke-direct {p0}, Lio/netty/util/collection/LongObjectHashMap$MapEntry;->verifyExists()V

    iget-object v0, p0, Lio/netty/util/collection/LongObjectHashMap$MapEntry;->this$0:Lio/netty/util/collection/LongObjectHashMap;

    invoke-static {v0}, Lio/netty/util/collection/LongObjectHashMap;->access$600(Lio/netty/util/collection/LongObjectHashMap;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lio/netty/util/collection/LongObjectHashMap$MapEntry;->entryIndex:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lio/netty/util/collection/LongObjectHashMap;->access$900(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    invoke-direct {p0}, Lio/netty/util/collection/LongObjectHashMap$MapEntry;->verifyExists()V

    iget-object v0, p0, Lio/netty/util/collection/LongObjectHashMap$MapEntry;->this$0:Lio/netty/util/collection/LongObjectHashMap;

    invoke-static {v0}, Lio/netty/util/collection/LongObjectHashMap;->access$600(Lio/netty/util/collection/LongObjectHashMap;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lio/netty/util/collection/LongObjectHashMap$MapEntry;->entryIndex:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lio/netty/util/collection/LongObjectHashMap;->access$900(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lio/netty/util/collection/LongObjectHashMap$MapEntry;->this$0:Lio/netty/util/collection/LongObjectHashMap;

    invoke-static {v1}, Lio/netty/util/collection/LongObjectHashMap;->access$600(Lio/netty/util/collection/LongObjectHashMap;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lio/netty/util/collection/LongObjectHashMap$MapEntry;->entryIndex:I

    invoke-static {p1}, Lio/netty/util/collection/LongObjectHashMap;->access$1000(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v2

    return-object v0
.end method
