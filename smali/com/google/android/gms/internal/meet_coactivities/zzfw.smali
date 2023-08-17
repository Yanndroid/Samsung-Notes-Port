.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzfw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/livesharing/CoWatchingSessionDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/livesharing/CoWatchingSessionDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfw;->zza:Lcom/google/android/livesharing/CoWatchingSessionDelegate;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfw;->zza:Lcom/google/android/livesharing/CoWatchingSessionDelegate;

    invoke-interface {v0}, Lcom/google/android/livesharing/CoWatchingSessionDelegate;->onCoWatchingStateQuery()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
