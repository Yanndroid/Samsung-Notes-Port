.class Lio/grpc/internal/DelayedClientCall$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/DelayedClientCall;->request(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/internal/DelayedClientCall;

.field public final synthetic val$numMessages:I


# direct methods
.method public constructor <init>(Lio/grpc/internal/DelayedClientCall;I)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/DelayedClientCall$6;->this$0:Lio/grpc/internal/DelayedClientCall;

    iput p2, p0, Lio/grpc/internal/DelayedClientCall$6;->val$numMessages:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall$6;->this$0:Lio/grpc/internal/DelayedClientCall;

    invoke-static {v0}, Lio/grpc/internal/DelayedClientCall;->access$200(Lio/grpc/internal/DelayedClientCall;)Lio/grpc/ClientCall;

    move-result-object v0

    iget v1, p0, Lio/grpc/internal/DelayedClientCall$6;->val$numMessages:I

    invoke-virtual {v0, v1}, Lio/grpc/ClientCall;->request(I)V

    return-void
.end method
