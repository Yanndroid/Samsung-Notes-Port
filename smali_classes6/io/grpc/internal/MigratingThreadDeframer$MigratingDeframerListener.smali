.class Lio/grpc/internal/MigratingThreadDeframer$MigratingDeframerListener;
.super Lio/grpc/internal/ForwardingDeframerListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/MigratingThreadDeframer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MigratingDeframerListener"
.end annotation


# instance fields
.field private delegate:Lio/grpc/internal/MessageDeframer$Listener;


# direct methods
.method public constructor <init>(Lio/grpc/internal/MessageDeframer$Listener;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/internal/ForwardingDeframerListener;-><init>()V

    invoke-virtual {p0, p1}, Lio/grpc/internal/MigratingThreadDeframer$MigratingDeframerListener;->setDelegate(Lio/grpc/internal/MessageDeframer$Listener;)V

    return-void
.end method


# virtual methods
.method public delegate()Lio/grpc/internal/MessageDeframer$Listener;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer$MigratingDeframerListener;->delegate:Lio/grpc/internal/MessageDeframer$Listener;

    return-object v0
.end method

.method public setDelegate(Lio/grpc/internal/MessageDeframer$Listener;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/MessageDeframer$Listener;

    iput-object p1, p0, Lio/grpc/internal/MigratingThreadDeframer$MigratingDeframerListener;->delegate:Lio/grpc/internal/MessageDeframer$Listener;

    return-void
.end method
