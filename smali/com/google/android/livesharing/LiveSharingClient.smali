.class public interface abstract Lcom/google/android/livesharing/LiveSharingClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/livesharing/annotations/PublicApi;
.end annotation


# virtual methods
.method public abstract beginCoDoing(Lcom/google/android/livesharing/CoDoingSessionDelegate;)Lcom/google/common/util/concurrent/ListenableFuture;
    .param p1    # Lcom/google/android/livesharing/CoDoingSessionDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/livesharing/CoDoingSessionDelegate;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lcom/google/android/livesharing/CoDoingSession;",
            ">;"
        }
    .end annotation
.end method

.method public abstract beginCoWatching(Lcom/google/android/livesharing/CoWatchingSessionDelegate;)Lcom/google/common/util/concurrent/ListenableFuture;
    .param p1    # Lcom/google/android/livesharing/CoWatchingSessionDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/livesharing/CoWatchingSessionDelegate;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lcom/google/android/livesharing/CoWatchingSession;",
            ">;"
        }
    .end annotation
.end method

.method public abstract connectMeeting(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/livesharing/MeetingDisconnectHandler;)Lcom/google/common/util/concurrent/ListenableFuture;
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/livesharing/MeetingDisconnectHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/livesharing/MeetingDisconnectHandler;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lcom/google/android/livesharing/LiveSharingMeetingInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract disconnectMeeting()Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract endCoDoing()Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract endCoWatching()Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryMeeting(Landroid/content/Context;Ljava/util/Optional;)Lcom/google/common/util/concurrent/ListenableFuture;
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Optional;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Optional<",
            "Landroid/os/Handler;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lcom/google/android/livesharing/LiveSharingMeetingInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setParticipantMetadata([Ljava/lang/Byte;Lcom/google/android/livesharing/ParticipantMetadataDelegate;)V
    .param p1    # [Ljava/lang/Byte;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/livesharing/ParticipantMetadataDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
