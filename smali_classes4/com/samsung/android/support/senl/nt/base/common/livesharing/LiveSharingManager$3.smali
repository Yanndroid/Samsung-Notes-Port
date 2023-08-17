.class Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->disconnectMeeting(Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$3;->this$0:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$3;->val$callback:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onDisconnected()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$3;->this$0:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->e(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;)Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$LiveSharingDisconnectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$3;->this$0:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->e(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;)Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$LiveSharingDisconnectionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$LiveSharingDisconnectionListener;->onDisconnected()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$3;->this$0:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->j(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnectMeeting#onFailure : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LS$LiveSharingManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$3;->val$callback:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;->onFailure(Ljava/lang/Throwable;)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$3;->onDisconnected()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$3;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnectMeeting#onSuccess unused : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LS$LiveSharingManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$3;->this$0:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->i(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$3;->val$callback:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$3;->onDisconnected()V

    return-void
.end method
