.class final Lcom/google/android/gms/internal/meet_coactivities/zzli;
.super Lcom/google/android/gms/internal/meet_coactivities/zzky;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/util/logging/Level;

.field private final zzc:Ljava/util/Set;

.field private final zzd:Lcom/google/android/gms/internal/meet_coactivities/zzkc;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 0

    sget-object p1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzlk;->zzf()Ljava/util/Set;

    move-result-object p3

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzlk;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzkc;

    move-result-object p4

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzky;-><init>(Ljava/lang/String;)V

    const-string p2, ""

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzli;->zza:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzli;->zzb:Ljava/util/logging/Level;

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzli;->zzc:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzli;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzkc;

    return-void
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/meet_coactivities/zzjn;)V
    .locals 9

    invoke-interface {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzjn;->zzi()Lcom/google/android/gms/internal/meet_coactivities/zzjt;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzjh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzje;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzjt;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzje;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzky;->zza()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzjn;->zzf()Lcom/google/android/gms/internal/meet_coactivities/zzis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzis;->zzb()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzli;->zza:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzlc;->zza(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/meet_coactivities/zzli;->zzb:Ljava/util/logging/Level;

    iget-object v7, p0, Lcom/google/android/gms/internal/meet_coactivities/zzli;->zzc:Ljava/util/Set;

    iget-object v8, p0, Lcom/google/android/gms/internal/meet_coactivities/zzli;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzkc;

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/meet_coactivities/zzlk;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzjn;Ljava/lang/String;ZLjava/util/logging/Level;Ljava/util/Set;Lcom/google/android/gms/internal/meet_coactivities/zzkc;)V

    return-void
.end method

.method public final zzd(Ljava/util/logging/Level;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
