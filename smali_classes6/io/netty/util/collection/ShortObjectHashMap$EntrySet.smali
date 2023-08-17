.class final Lio/netty/util/collection/ShortObjectHashMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/collection/ShortObjectHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Short;",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/util/collection/ShortObjectHashMap;


# direct methods
.method private constructor <init>(Lio/netty/util/collection/ShortObjectHashMap;)V
    .locals 0

    iput-object p1, p0, Lio/netty/util/collection/ShortObjectHashMap$EntrySet;->this$0:Lio/netty/util/collection/ShortObjectHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/netty/util/collection/ShortObjectHashMap;Lio/netty/util/collection/ShortObjectHashMap$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/util/collection/ShortObjectHashMap$EntrySet;-><init>(Lio/netty/util/collection/ShortObjectHashMap;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Short;",
            "TV;>;>;"
        }
    .end annotation

    new-instance v0, Lio/netty/util/collection/ShortObjectHashMap$MapIterator;

    iget-object v1, p0, Lio/netty/util/collection/ShortObjectHashMap$EntrySet;->this$0:Lio/netty/util/collection/ShortObjectHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/util/collection/ShortObjectHashMap$MapIterator;-><init>(Lio/netty/util/collection/ShortObjectHashMap;Lio/netty/util/collection/ShortObjectHashMap$1;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lio/netty/util/collection/ShortObjectHashMap$EntrySet;->this$0:Lio/netty/util/collection/ShortObjectHashMap;

    invoke-virtual {v0}, Lio/netty/util/collection/ShortObjectHashMap;->size()I

    move-result v0

    return v0
.end method
