.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzdh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/livesharing/CoDoingSessionDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/livesharing/CoDoingSessionDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdh;->zza:Lcom/google/android/livesharing/CoDoingSessionDelegate;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdh;->zza:Lcom/google/android/livesharing/CoDoingSessionDelegate;

    invoke-interface {v0}, Lcom/google/android/livesharing/CoDoingSessionDelegate;->onCoDoingStateQuery()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
