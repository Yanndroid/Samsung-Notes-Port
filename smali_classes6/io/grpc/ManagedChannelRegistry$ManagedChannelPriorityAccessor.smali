.class final Lio/grpc/ManagedChannelRegistry$ManagedChannelPriorityAccessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/ServiceProviders$PriorityAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/ManagedChannelRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ManagedChannelPriorityAccessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/ServiceProviders$PriorityAccessor<",
        "Lio/grpc/ManagedChannelProvider;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/ManagedChannelRegistry$1;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/ManagedChannelRegistry$ManagedChannelPriorityAccessor;-><init>()V

    return-void
.end method


# virtual methods
.method public getPriority(Lio/grpc/ManagedChannelProvider;)I
    .locals 0

    invoke-virtual {p1}, Lio/grpc/ManagedChannelProvider;->priority()I

    move-result p1

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lio/grpc/ManagedChannelProvider;

    invoke-virtual {p0, p1}, Lio/grpc/ManagedChannelRegistry$ManagedChannelPriorityAccessor;->getPriority(Lio/grpc/ManagedChannelProvider;)I

    move-result p1

    return p1
.end method

.method public isAvailable(Lio/grpc/ManagedChannelProvider;)Z
    .locals 0

    invoke-virtual {p1}, Lio/grpc/ManagedChannelProvider;->isAvailable()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isAvailable(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lio/grpc/ManagedChannelProvider;

    invoke-virtual {p0, p1}, Lio/grpc/ManagedChannelRegistry$ManagedChannelPriorityAccessor;->isAvailable(Lio/grpc/ManagedChannelProvider;)Z

    move-result p1

    return p1
.end method
