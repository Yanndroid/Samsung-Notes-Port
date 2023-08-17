.class public final Lio/grpc/InternalChannelz$Security;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/InternalChannelz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Security"
.end annotation


# instance fields
.field public final other:Lio/grpc/InternalChannelz$OtherSecurity;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final tls:Lio/grpc/InternalChannelz$Tls;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/grpc/InternalChannelz$OtherSecurity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/InternalChannelz$Security;->tls:Lio/grpc/InternalChannelz$Tls;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/InternalChannelz$OtherSecurity;

    iput-object p1, p0, Lio/grpc/InternalChannelz$Security;->other:Lio/grpc/InternalChannelz$OtherSecurity;

    return-void
.end method

.method public constructor <init>(Lio/grpc/InternalChannelz$Tls;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/InternalChannelz$Tls;

    iput-object p1, p0, Lio/grpc/InternalChannelz$Security;->tls:Lio/grpc/InternalChannelz$Tls;

    const/4 p1, 0x0

    iput-object p1, p0, Lio/grpc/InternalChannelz$Security;->other:Lio/grpc/InternalChannelz$OtherSecurity;

    return-void
.end method
