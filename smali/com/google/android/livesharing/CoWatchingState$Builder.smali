.class public abstract Lcom/google/android/livesharing/CoWatchingState$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/livesharing/annotations/PublicApi;
.end annotation

.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/livesharing/CoWatchingState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/google/android/livesharing/CoWatchingState;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setMediaId(Ljava/lang/String;)Lcom/google/android/livesharing/CoWatchingState$Builder;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setMediaPlayoutPosition(Ljava/time/Duration;)Lcom/google/android/livesharing/CoWatchingState$Builder;
    .param p1    # Ljava/time/Duration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setMediaPlayoutRate(D)Lcom/google/android/livesharing/CoWatchingState$Builder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setPlaybackState(Lcom/google/android/livesharing/CoWatchingState$PlaybackState;)Lcom/google/android/livesharing/CoWatchingState$Builder;
    .param p1    # Lcom/google/android/livesharing/CoWatchingState$PlaybackState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
