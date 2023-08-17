.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzcl;

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzbb;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzcl;Lcom/google/android/gms/internal/meet_coactivities/zzbb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzca;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzcl;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzca;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzbb;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzca;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzcl;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzca;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzbb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzp(Lcom/google/android/gms/internal/meet_coactivities/zzbb;)V

    return-void
.end method
