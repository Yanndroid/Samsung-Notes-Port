.class public final Lcom/google/android/gms/internal/meet_coactivities/zzux;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Lcom/google/android/gms/internal/meet_coactivities/zzuy;

.field private zzc:Ljava/lang/Long;

.field private zzd:Lcom/google/android/gms/internal/meet_coactivities/zzvn;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzux;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzux;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/meet_coactivities/zzuy;)Lcom/google/android/gms/internal/meet_coactivities/zzux;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzux;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzuy;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/meet_coactivities/zzvn;)Lcom/google/android/gms/internal/meet_coactivities/zzux;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzux;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzvn;

    return-object p0
.end method

.method public final zzd(J)Lcom/google/android/gms/internal/meet_coactivities/zzux;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzux;->zzc:Ljava/lang/Long;

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/meet_coactivities/zzva;
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzux;->zza:Ljava/lang/String;

    const-string v1, "description"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzux;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzuy;

    const-string v1, "severity"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzux;->zzc:Ljava/lang/Long;

    const-string v1, "timestampNanos"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const-string v1, "at least one of channelRef and subchannelRef must be null"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzva;

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzux;->zza:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzux;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzuy;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzux;->zzc:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v8, p0, Lcom/google/android/gms/internal/meet_coactivities/zzux;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzvn;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/meet_coactivities/zzva;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/meet_coactivities/zzuy;JLcom/google/android/gms/internal/meet_coactivities/zzvn;Lcom/google/android/gms/internal/meet_coactivities/zzvn;Lcom/google/android/gms/internal/meet_coactivities/zzuz;)V

    return-object v0
.end method
