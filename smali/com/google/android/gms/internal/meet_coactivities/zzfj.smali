.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzfj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzfn;

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzm;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzfn;Lcom/google/android/gms/internal/meet_coactivities/zzm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfj;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfn;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfj;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzm;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfj;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfn;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfj;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzfn;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzm;)V

    return-void
.end method
