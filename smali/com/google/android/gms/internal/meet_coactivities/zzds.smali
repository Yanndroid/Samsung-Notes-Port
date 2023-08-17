.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzds;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic zza:D

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzpd;


# direct methods
.method public synthetic constructor <init>(DLcom/google/android/gms/internal/meet_coactivities/zzpd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzds;->zza:D

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzds;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzpd;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzds;->zza:D

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzds;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzpd;

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zznk;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zznk;->zze(D)Lcom/google/android/gms/internal/meet_coactivities/zznk;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zznk;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzpd;)Lcom/google/android/gms/internal/meet_coactivities/zznk;

    return-object p1
.end method
