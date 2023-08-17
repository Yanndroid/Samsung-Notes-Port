.class Lio/grpc/ServiceProviders$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/ServiceProviders;->loadAll(Ljava/lang/Class;Ljava/lang/Iterable;Ljava/lang/ClassLoader;Lio/grpc/ServiceProviders$PriorityAccessor;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic val$priorityAccessor:Lio/grpc/ServiceProviders$PriorityAccessor;


# direct methods
.method public constructor <init>(Lio/grpc/ServiceProviders$PriorityAccessor;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/ServiceProviders$1;->val$priorityAccessor:Lio/grpc/ServiceProviders$PriorityAccessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/ServiceProviders$1;->val$priorityAccessor:Lio/grpc/ServiceProviders$PriorityAccessor;

    invoke-interface {v0, p1}, Lio/grpc/ServiceProviders$PriorityAccessor;->getPriority(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lio/grpc/ServiceProviders$1;->val$priorityAccessor:Lio/grpc/ServiceProviders$PriorityAccessor;

    invoke-interface {v1, p2}, Lio/grpc/ServiceProviders$PriorityAccessor;->getPriority(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
