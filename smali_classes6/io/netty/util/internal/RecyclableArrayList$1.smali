.class final Lio/netty/util/internal/RecyclableArrayList$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/internal/ObjectPool$ObjectCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/internal/RecyclableArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/internal/ObjectPool$ObjectCreator<",
        "Lio/netty/util/internal/RecyclableArrayList;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newObject(Lio/netty/util/internal/ObjectPool$Handle;)Lio/netty/util/internal/RecyclableArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/ObjectPool$Handle<",
            "Lio/netty/util/internal/RecyclableArrayList;",
            ">;)",
            "Lio/netty/util/internal/RecyclableArrayList;"
        }
    .end annotation

    new-instance v0, Lio/netty/util/internal/RecyclableArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/netty/util/internal/RecyclableArrayList;-><init>(Lio/netty/util/internal/ObjectPool$Handle;Lio/netty/util/internal/RecyclableArrayList$1;)V

    return-object v0
.end method

.method public bridge synthetic newObject(Lio/netty/util/internal/ObjectPool$Handle;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/util/internal/RecyclableArrayList$1;->newObject(Lio/netty/util/internal/ObjectPool$Handle;)Lio/netty/util/internal/RecyclableArrayList;

    move-result-object p1

    return-object p1
.end method
