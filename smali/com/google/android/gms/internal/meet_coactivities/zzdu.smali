.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzdu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic zza:Z

.field public final synthetic zzb:Ljava/time/Duration;


# direct methods
.method public synthetic constructor <init>(ZLjava/time/Duration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdu;->zza:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdu;->zzb:Ljava/time/Duration;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdu;->zza:Z

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdu;->zzb:Ljava/time/Duration;

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zznk;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zznk;->zzf(I)Lcom/google/android/gms/internal/meet_coactivities/zznk;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzta;->zza(Ljava/time/Duration;)Lcom/google/android/gms/internal/meet_coactivities/zzpd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zznk;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzpd;)Lcom/google/android/gms/internal/meet_coactivities/zznk;

    return-object p1
.end method
