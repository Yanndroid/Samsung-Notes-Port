.class Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->endCoDoing(Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;

.field public final synthetic val$callback:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$4;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$4;->val$callback:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "LS$LiveSharingGoogleClientDelegate"

    const-string v1, "endCoDoing#onFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$4;->val$callback:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;

    if-eqz v1, :cond_0

    const-string v1, "endCoDoing#onFailure# call callback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$4;->val$callback:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;->onFailure(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$4;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 2

    const-string p1, "LS$LiveSharingGoogleClientDelegate"

    const-string v0, "endCoDoing#onSuccess"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$4;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->access$402(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;Ljava/util/Optional;)Ljava/util/Optional;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$4;->val$callback:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "endCoDoing#onSuccess# call callback"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$4;->val$callback:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;

    invoke-interface {p1, v1}, Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$4;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->access$502(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;)Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;

    return-void
.end method
