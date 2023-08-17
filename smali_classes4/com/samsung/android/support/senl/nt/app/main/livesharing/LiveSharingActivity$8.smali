.class Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->beginCoDoing()V
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
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$8;->this$0:Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;

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

    const-string p1, "LS$LiveSharingActivity"

    const-string v0, "beginCoDoing#onFailure"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$8;->this$0:Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->q(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$8;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 3

    const-string p1, "LS$LiveSharingActivity"

    const-string v0, "beginCoDoing#onSuccess"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$8;->this$0:Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->g(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$8;->this$0:Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->u(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;->NONE:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$8;->this$0:Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->i(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;->getInvitationLink()Lcom/samsung/android/sdk/mobileservice/social/group/InvitationLink;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/mobileservice/social/group/InvitationLink;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->setInvitationLink(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$8;->this$0:Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->e(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->removeCoDoingDelegate(Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$8;->this$0:Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->j(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$8;->this$0:Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->w(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$8;->this$0:Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->t(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginCoDoing#onSuccess, sendSharingData fail : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$8;->this$0:Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->f(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
