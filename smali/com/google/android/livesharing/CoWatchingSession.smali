.class public interface abstract Lcom/google/android/livesharing/CoWatchingSession;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/livesharing/annotations/PublicApi;
.end annotation


# static fields
.field public static final MAX_PLAYOUT_RATE:D = 2.0

.field public static final MAX_SEEKS_PER_SECOND:D = 0.9


# virtual methods
.method public abstract notifyBuffering(Ljava/time/Duration;)V
    .param p1    # Ljava/time/Duration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract notifyEnded(Ljava/time/Duration;)V
    .param p1    # Ljava/time/Duration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract notifyPauseState(ZLjava/time/Duration;)V
    .param p2    # Ljava/time/Duration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract notifyPlayoutRate(D)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract notifyPlayoutRate(DLjava/time/Duration;)V
    .param p3    # Ljava/time/Duration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract notifyReady(Ljava/time/Duration;)V
    .param p1    # Ljava/time/Duration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract notifySeekToTimestamp(Ljava/time/Duration;)V
    .param p1    # Ljava/time/Duration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract notifySwitchedToMedia(Ljava/lang/String;Ljava/lang/String;Ljava/time/Duration;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/time/Duration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
