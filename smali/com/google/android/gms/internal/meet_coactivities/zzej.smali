.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzej;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;

.field public final synthetic zzb:Lcom/google/android/livesharing/CoDoingSessionDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzfo;Lcom/google/android/livesharing/CoDoingSessionDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzej;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzej;->zzb:Lcom/google/android/livesharing/CoDoingSessionDelegate;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzej;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzej;->zzb:Lcom/google/android/livesharing/CoDoingSessionDelegate;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzL(Lcom/google/android/livesharing/CoDoingSessionDelegate;)Lcom/google/android/gms/internal/meet_coactivities/zzdm;

    move-result-object v0

    return-object v0
.end method
