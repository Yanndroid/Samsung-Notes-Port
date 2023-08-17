.class public Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$Method;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Method"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$Method;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "livesharing.server.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.notes"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public join()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingIntent;->createStartNoteIntent()Landroid/content/Intent;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$Method;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "join# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LS$LiveSharingTestServer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public sendEndConnection(Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$Method;->createIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;->END_CONNECTION:Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "method"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "end_reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$Method;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public sendFailure()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$Method;->createIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;->FAILURE:Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "method"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$Method;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public sendQueryCoDoingState()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$Method;->createIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;->QUERY_CO_DOING_STATE:Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "method"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$Method;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public sendStateChanged(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$Method;->createIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;->STATE_CHANGED:Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "method"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;->getCoDoingState()Lcom/google/android/livesharing/CoDoingState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/livesharing/CoDoingState;->state()[B

    move-result-object p1

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$Method;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public sendSuccess(Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;)V
    .locals 3
    .param p1    # Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$Method;->createIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;->SUCCESS:Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ServerMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "method"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "meeting_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$Method;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public startNotes()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingIntent;->createStartNoteIntent()Landroid/content/Intent;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$Method;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startNotes# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LS$LiveSharingTestServer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method
