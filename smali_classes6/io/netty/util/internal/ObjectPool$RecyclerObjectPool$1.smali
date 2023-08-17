.class Lio/netty/util/internal/ObjectPool$RecyclerObjectPool$1;
.super Lio/netty/util/Recycler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/util/internal/ObjectPool$RecyclerObjectPool;-><init>(Lio/netty/util/internal/ObjectPool$ObjectCreator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/util/Recycler<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/util/internal/ObjectPool$RecyclerObjectPool;

.field public final synthetic val$creator:Lio/netty/util/internal/ObjectPool$ObjectCreator;


# direct methods
.method public constructor <init>(Lio/netty/util/internal/ObjectPool$RecyclerObjectPool;Lio/netty/util/internal/ObjectPool$ObjectCreator;)V
    .locals 0

    iput-object p1, p0, Lio/netty/util/internal/ObjectPool$RecyclerObjectPool$1;->this$0:Lio/netty/util/internal/ObjectPool$RecyclerObjectPool;

    iput-object p2, p0, Lio/netty/util/internal/ObjectPool$RecyclerObjectPool$1;->val$creator:Lio/netty/util/internal/ObjectPool$ObjectCreator;

    invoke-direct {p0}, Lio/netty/util/Recycler;-><init>()V

    return-void
.end method


# virtual methods
.method public newObject(Lio/netty/util/Recycler$Handle;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$Handle<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/util/internal/ObjectPool$RecyclerObjectPool$1;->val$creator:Lio/netty/util/internal/ObjectPool$ObjectCreator;

    invoke-interface {v0, p1}, Lio/netty/util/internal/ObjectPool$ObjectCreator;->newObject(Lio/netty/util/internal/ObjectPool$Handle;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
