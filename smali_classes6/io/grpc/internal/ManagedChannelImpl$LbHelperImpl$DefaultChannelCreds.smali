.class final Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$DefaultChannelCreds;
.super Lio/grpc/ChannelCredentials;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DefaultChannelCreds"
.end annotation


# instance fields
.field public final synthetic this$1:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;


# direct methods
.method public constructor <init>(Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$DefaultChannelCreds;->this$1:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    invoke-direct {p0}, Lio/grpc/ChannelCredentials;-><init>()V

    return-void
.end method


# virtual methods
.method public withoutBearerTokens()Lio/grpc/ChannelCredentials;
    .locals 0

    return-object p0
.end method
