.class Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->connectMeeting()V
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
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;

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

    const-string v0, "connectMeeting# onFailure"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->h(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)Lcom/google/android/livesharing/MeetingDisconnectHandler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->unregisterMeetingDisconnectHandler(Lcom/google/android/livesharing/MeetingDisconnectHandler;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onSuccess(Lcom/google/android/livesharing/LiveSharingMeetingInfo;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectMeeting# onSuccess "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/livesharing/LiveSharingMeetingInfo;->meetingStatus()Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LS$LiveSharingActivity"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/livesharing/LiveSharingMeetingInfo;->meetingStatus()Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    move-result-object p1

    sget-object v0, Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;->CONNECTED:Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->o(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/livesharing/LiveSharingMeetingInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$3;->onSuccess(Lcom/google/android/livesharing/LiveSharingMeetingInfo;)V

    return-void
.end method
