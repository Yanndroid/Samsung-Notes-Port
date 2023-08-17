.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# instance fields
.field public final synthetic zza:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzea;->zza:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzea;->zza:Ljava/lang/String;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzed;->zze(Ljava/lang/Throwable;)V

    instance-of v1, p1, Lcom/google/android/livesharing/LiveSharingException;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/livesharing/LiveSharingException;

    invoke-virtual {p1}, Lcom/google/android/livesharing/LiveSharingException;->getCode()Lcom/google/android/livesharing/LiveSharingException$Code;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/livesharing/zzo;->zzc(Ljava/lang/String;Lcom/google/android/livesharing/LiveSharingException$Code;)Lcom/google/android/livesharing/LiveSharingException;

    move-result-object p1

    throw p1

    :cond_0
    invoke-static {v0}, Lcom/google/android/livesharing/zzo;->zzb(Ljava/lang/String;)Lcom/google/android/livesharing/LiveSharingException;

    move-result-object p1

    throw p1
.end method
