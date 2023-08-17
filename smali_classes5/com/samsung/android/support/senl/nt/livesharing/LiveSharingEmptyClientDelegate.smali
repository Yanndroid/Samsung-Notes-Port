.class Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingEmptyClientDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beginCoDoing(Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public connectMeeting(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;Lcom/google/android/livesharing/MeetingDisconnectHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback<",
            "Lcom/google/android/livesharing/LiveSharingMeetingInfo;",
            ">;",
            "Lcom/google/android/livesharing/MeetingDisconnectHandler;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public disconnectMeeting(Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public endCoDoing(Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getMeetingInfo()Lcom/google/android/livesharing/LiveSharingMeetingInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public isCoDoing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public queryMeeting(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback<",
            "Lcom/google/android/livesharing/LiveSharingMeetingInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public sendSharingData(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;)V
    .locals 0

    return-void
.end method
