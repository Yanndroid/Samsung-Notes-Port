.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzdx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic zza:Ljava/time/Duration;


# direct methods
.method public synthetic constructor <init>(Ljava/time/Duration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdx;->zza:Ljava/time/Duration;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdx;->zza:Ljava/time/Duration;

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zznk;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzta;->zza(Ljava/time/Duration;)Lcom/google/android/gms/internal/meet_coactivities/zzpd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zznk;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzpd;)Lcom/google/android/gms/internal/meet_coactivities/zznk;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zznk;->zzf(I)Lcom/google/android/gms/internal/meet_coactivities/zznk;

    return-object p1
.end method
