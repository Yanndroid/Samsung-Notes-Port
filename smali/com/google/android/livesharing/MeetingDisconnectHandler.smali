.class public interface abstract Lcom/google/android/livesharing/MeetingDisconnectHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/livesharing/annotations/PublicApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;
    }
.end annotation


# virtual methods
.method public abstract onMeetingEnded(Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;)V
    .param p1    # Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
