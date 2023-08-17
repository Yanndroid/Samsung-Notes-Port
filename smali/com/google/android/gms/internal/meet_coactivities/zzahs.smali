.class final Lcom/google/android/gms/internal/meet_coactivities/zzahs;
.super Lcom/google/android/gms/internal/meet_coactivities/zzxk;
.source "SourceFile"


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzaht;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzaht;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahs;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaht;

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzxk;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahs;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaht;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzaht;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()V
    .locals 0

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/meet_coactivities/zzxg;)V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzxi;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzxh;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzup;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzahs;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaht;

    iget-object v2, v2, Lcom/google/android/gms/internal/meet_coactivities/zzaht;->zza:Ljava/net/SocketAddress;

    sget-object v3, Lcom/google/android/gms/internal/meet_coactivities/zztf;->zza:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzup;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/meet_coactivities/zztf;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzxh;->zza(Ljava/util/List;)Lcom/google/android/gms/internal/meet_coactivities/zzxh;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzxh;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zztf;)Lcom/google/android/gms/internal/meet_coactivities/zzxh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzxh;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzxi;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzxg;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzxi;)V

    return-void
.end method
