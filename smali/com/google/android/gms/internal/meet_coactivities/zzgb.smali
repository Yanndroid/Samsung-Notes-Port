.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzgb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzhl;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzhl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgb;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzhl;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgb;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzhl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzhl;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zznb;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
