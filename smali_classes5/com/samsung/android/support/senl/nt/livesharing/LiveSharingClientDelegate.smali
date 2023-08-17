.class interface abstract Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract beginCoDoing(Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;)V
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
.end method

.method public abstract connectMeeting(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;Lcom/google/android/livesharing/MeetingDisconnectHandler;)V
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
.end method

.method public abstract disconnectMeeting(Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract endCoDoing(Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getMeetingInfo()Lcom/google/android/livesharing/LiveSharingMeetingInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract isCoDoing()Z
.end method

.method public abstract isConnected()Z
.end method

.method public abstract queryMeeting(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback<",
            "Lcom/google/android/livesharing/LiveSharingMeetingInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendSharingData(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;)V
.end method
