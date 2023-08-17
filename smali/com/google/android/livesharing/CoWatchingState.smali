.class public abstract Lcom/google/android/livesharing/CoWatchingState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/livesharing/annotations/PublicApi;
.end annotation

.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/livesharing/CoWatchingState$Builder;,
        Lcom/google/android/livesharing/CoWatchingState$PlaybackState;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/android/livesharing/CoWatchingState$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/livesharing/zze;

    invoke-direct {v0}, Lcom/google/android/livesharing/zze;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract mediaId()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract mediaPlayoutPosition()Ljava/time/Duration;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract mediaPlayoutRate()D
.end method

.method public abstract playbackState()Lcom/google/android/livesharing/CoWatchingState$PlaybackState;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract toBuilder()Lcom/google/android/livesharing/CoWatchingState$Builder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
