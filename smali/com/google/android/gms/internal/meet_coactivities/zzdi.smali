.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzdi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzdj;

.field public final synthetic zzb:Lcom/google/android/livesharing/CoDoingState;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzdj;Lcom/google/android/livesharing/CoDoingState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdi;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzdj;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdi;->zzb:Lcom/google/android/livesharing/CoDoingState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdi;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzdj;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdi;->zzb:Lcom/google/android/livesharing/CoDoingState;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzdj;->zzd(Lcom/google/android/livesharing/CoDoingState;)V

    return-void
.end method
