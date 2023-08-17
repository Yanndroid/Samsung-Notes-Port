.class Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->beginCoDoing(Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;)Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

.field public final synthetic val$callback:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$4;->this$0:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$4;->val$callback:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$4;->val$callback:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;->onFailure(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$4;->this$0:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->b(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$4;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$4;->val$callback:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
