.class Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback<",
        "Lcom/google/android/livesharing/LiveSharingMeetingInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;

.field public final synthetic val$startTime:J


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;J)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;

    iput-wide p2, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask$1;->val$startTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 4
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "QueryMeetingTask#onFailure time: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask$1;->val$startTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LS$LiveSharingManager"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;->clear()V

    return-void
.end method

.method public onSuccess(Lcom/google/android/livesharing/LiveSharingMeetingInfo;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;->a(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;->clear()V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/livesharing/LiveSharingMeetingInfo;->meetingStatus()Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QueryMeetingTask#onSuccess meetingStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask$1;->val$startTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LS$LiveSharingManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;->b(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    sget-object v1, Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;->CONNECTED:Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    if-ne p1, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;->NOT_CONNECTED:Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;->c(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;)Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryCallbackInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryCallbackInfo;->mCallback:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryCallback;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryCallback;->onMeetNotWorking()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;->c(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;)Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryCallbackInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryCallbackInfo;->mCallback:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryCallback;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;->b(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryCallback;->onMeetWorking(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/livesharing/LiveSharingMeetingInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask$1;->onSuccess(Lcom/google/android/livesharing/LiveSharingMeetingInfo;)V

    return-void
.end method
