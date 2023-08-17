.class final Lcom/google/android/gms/internal/meet_coactivities/zzme;
.super Lcom/google/android/gms/internal/meet_coactivities/zzmb;
.source "SourceFile"


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzjk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzjk;ILcom/google/android/gms/internal/meet_coactivities/zzjk;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzme;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzjk;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzmb;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzjk;I)V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/meet_coactivities/zzmc;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzjj;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzjj;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzmb;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzjk;

    move-result-object v1

    invoke-interface {p1, p2, v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzmc;->zzd(Ljava/lang/Object;Lcom/google/android/gms/internal/meet_coactivities/zzjj;Lcom/google/android/gms/internal/meet_coactivities/zzjk;)V

    return-void
.end method
