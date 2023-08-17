.class Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/livesharing/CoDoingSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$4;->onSuccess(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$4;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$4;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$4$1;->this$1:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public broadcastStateUpdate(Lcom/google/android/livesharing/CoDoingState;)V
    .locals 1
    .param p1    # Lcom/google/android/livesharing/CoDoingState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$4$1;->this$1:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$4;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$4;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->access$300(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;)Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;->getMethod()Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Method;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Method;->requestSendData(Lcom/google/android/livesharing/CoDoingState;)V

    return-void
.end method
