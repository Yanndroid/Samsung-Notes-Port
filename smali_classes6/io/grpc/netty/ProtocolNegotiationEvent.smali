.class public final Lio/grpc/netty/ProtocolNegotiationEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lio/grpc/Internal;
.end annotation

.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# static fields
.field public static final DEFAULT:Lio/grpc/netty/ProtocolNegotiationEvent;


# instance fields
.field private final attributes:Lio/grpc/Attributes;

.field private final security:Lio/grpc/InternalChannelz$Security;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/grpc/netty/ProtocolNegotiationEvent;

    sget-object v1, Lio/grpc/Attributes;->EMPTY:Lio/grpc/Attributes;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/grpc/netty/ProtocolNegotiationEvent;-><init>(Lio/grpc/Attributes;Lio/grpc/InternalChannelz$Security;)V

    sput-object v0, Lio/grpc/netty/ProtocolNegotiationEvent;->DEFAULT:Lio/grpc/netty/ProtocolNegotiationEvent;

    return-void
.end method

.method private constructor <init>(Lio/grpc/Attributes;Lio/grpc/InternalChannelz$Security;)V
    .locals 1
    .param p2    # Lio/grpc/InternalChannelz$Security;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "attributes"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/Attributes;

    iput-object p1, p0, Lio/grpc/netty/ProtocolNegotiationEvent;->attributes:Lio/grpc/Attributes;

    iput-object p2, p0, Lio/grpc/netty/ProtocolNegotiationEvent;->security:Lio/grpc/InternalChannelz$Security;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lio/grpc/netty/ProtocolNegotiationEvent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lio/grpc/netty/ProtocolNegotiationEvent;

    iget-object v0, p0, Lio/grpc/netty/ProtocolNegotiationEvent;->attributes:Lio/grpc/Attributes;

    iget-object v2, p1, Lio/grpc/netty/ProtocolNegotiationEvent;->attributes:Lio/grpc/Attributes;

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/netty/ProtocolNegotiationEvent;->security:Lio/grpc/InternalChannelz$Security;

    iget-object p1, p1, Lio/grpc/netty/ProtocolNegotiationEvent;->security:Lio/grpc/InternalChannelz$Security;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/ProtocolNegotiationEvent;->attributes:Lio/grpc/Attributes;

    return-object v0
.end method

.method public getSecurity()Lio/grpc/InternalChannelz$Security;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/ProtocolNegotiationEvent;->security:Lio/grpc/InternalChannelz$Security;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lio/grpc/netty/ProtocolNegotiationEvent;->attributes:Lio/grpc/Attributes;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/netty/ProtocolNegotiationEvent;->security:Lio/grpc/InternalChannelz$Security;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/netty/ProtocolNegotiationEvent;->attributes:Lio/grpc/Attributes;

    const-string v2, "attributes"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/netty/ProtocolNegotiationEvent;->security:Lio/grpc/InternalChannelz$Security;

    const-string v2, "security"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAttributes(Lio/grpc/Attributes;)Lio/grpc/netty/ProtocolNegotiationEvent;
    .locals 2

    new-instance v0, Lio/grpc/netty/ProtocolNegotiationEvent;

    iget-object v1, p0, Lio/grpc/netty/ProtocolNegotiationEvent;->security:Lio/grpc/InternalChannelz$Security;

    invoke-direct {v0, p1, v1}, Lio/grpc/netty/ProtocolNegotiationEvent;-><init>(Lio/grpc/Attributes;Lio/grpc/InternalChannelz$Security;)V

    return-object v0
.end method

.method public withSecurity(Lio/grpc/InternalChannelz$Security;)Lio/grpc/netty/ProtocolNegotiationEvent;
    .locals 2
    .param p1    # Lio/grpc/InternalChannelz$Security;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lio/grpc/netty/ProtocolNegotiationEvent;

    iget-object v1, p0, Lio/grpc/netty/ProtocolNegotiationEvent;->attributes:Lio/grpc/Attributes;

    invoke-direct {v0, v1, p1}, Lio/grpc/netty/ProtocolNegotiationEvent;-><init>(Lio/grpc/Attributes;Lio/grpc/InternalChannelz$Security;)V

    return-object v0
.end method
