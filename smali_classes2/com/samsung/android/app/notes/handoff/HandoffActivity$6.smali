.class Lcom/samsung/android/app/notes/handoff/HandoffActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$ISyncWaitingProgressDialogPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/handoff/HandoffActivity;->waitSyncNewNote(Lorg/json/JSONObject;Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/handoff/HandoffActivity;

.field public final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/handoff/HandoffActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity$6;->this$0:Lcom/samsung/android/app/notes/handoff/HandoffActivity;

    iput-object p2, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity$6;->val$uuid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canStopToSendRequestSyncMsg()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity$6;->this$0:Lcom/samsung/android/app/notes/handoff/HandoffActivity;

    invoke-static {v0}, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->c(Lcom/samsung/android/app/notes/handoff/HandoffActivity;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity$6;->this$0:Lcom/samsung/android/app/notes/handoff/HandoffActivity;

    invoke-static {v0}, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->c(Lcom/samsung/android/app/notes/handoff/HandoffActivity;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity$6;->this$0:Lcom/samsung/android/app/notes/handoff/HandoffActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->i(Lcom/samsung/android/app/notes/handoff/HandoffActivity;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity$6;->val$uuid:Ljava/lang/String;

    return-object v0
.end method

.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity$6;->this$0:Lcom/samsung/android/app/notes/handoff/HandoffActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->e(Lcom/samsung/android/app/notes/handoff/HandoffActivity;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity$6;->this$0:Lcom/samsung/android/app/notes/handoff/HandoffActivity;

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->g(Lcom/samsung/android/app/notes/handoff/HandoffActivity;Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;)V

    return-void
.end method
