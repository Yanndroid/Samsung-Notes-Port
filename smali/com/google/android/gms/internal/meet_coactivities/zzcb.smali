.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzcb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzcl;

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzm;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzcl;Lcom/google/android/gms/internal/meet_coactivities/zzm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcb;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzcl;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcb;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzm;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcb;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzcl;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzcb;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzq(Lcom/google/android/gms/internal/meet_coactivities/zzm;)V

    return-void
.end method
