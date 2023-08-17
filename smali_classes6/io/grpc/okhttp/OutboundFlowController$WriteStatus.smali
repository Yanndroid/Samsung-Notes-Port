.class final Lio/grpc/okhttp/OutboundFlowController$WriteStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/OutboundFlowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WriteStatus"
.end annotation


# instance fields
.field public numWrites:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/okhttp/OutboundFlowController$1;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;-><init>()V

    return-void
.end method


# virtual methods
.method public hasWritten()Z
    .locals 1

    iget v0, p0, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;->numWrites:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public incrementNumWrites()V
    .locals 1

    iget v0, p0, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;->numWrites:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;->numWrites:I

    return-void
.end method
