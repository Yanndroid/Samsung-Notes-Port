.class final Lcom/google/android/gms/internal/meet_coactivities/zzaae;
.super Lcom/google/android/gms/internal/meet_coactivities/zzaag;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzwu;

.field private final zzc:Lcom/google/android/gms/internal/meet_coactivities/zzalb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzzl;ILcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzwu;Lcom/google/android/gms/internal/meet_coactivities/zzalb;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p5, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaag;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzzl;ILcom/google/android/gms/internal/meet_coactivities/zzalb;Lcom/google/android/gms/internal/meet_coactivities/zzaaf;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaae;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    iput-object p4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaae;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzwu;

    iput-object p5, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaae;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzalb;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/os/Parcel;)I
    .locals 11
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaae;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzxa;->zzf()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaae;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzwu;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzvl;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzwu;)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_5

    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzvl;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzwu;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_8

    add-int v4, v3, v3

    aget-object v5, v0, v4

    check-cast v5, [B

    array-length v6, v5

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v4, v4, 0x1

    aget-object v4, v0, v4

    instance-of v5, v4, [B

    if-eqz v5, :cond_2

    check-cast v4, [B

    array-length v5, v4

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_4

    :cond_2
    instance-of v5, v4, Lcom/google/android/gms/internal/meet_coactivities/zzaai;

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-nez v5, :cond_7

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzzn;->zzb()[B

    move-result-object v5

    :try_start_0
    check-cast v4, Ljava/io/InputStream;

    move v8, v1

    :goto_2
    array-length v9, v5

    if-ge v8, v9, :cond_4

    sub-int v10, v9, v8

    invoke-virtual {v4, v5, v8, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    if-ne v10, v7, :cond_3

    goto :goto_3

    :cond_3
    add-int/2addr v8, v10

    goto :goto_2

    :cond_4
    :goto_3
    if-eq v8, v9, :cond_6

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    if-lez v8, :cond_5

    invoke-virtual {p1, v5, v1, v8}, Landroid/os/Parcel;->writeByteArray([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    invoke-static {v5}, Lcom/google/android/gms/internal/meet_coactivities/zzzn;->zza([B)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    :try_start_1
    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    const-string v0, "Metadata value too large"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzye;

    invoke-direct {v0, p1, v6}, Lcom/google/android/gms/internal/meet_coactivities/zzye;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    invoke-static {v5}, Lcom/google/android/gms/internal/meet_coactivities/zzzn;->zza([B)V

    throw p1

    :cond_7
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    check-cast v4, Lcom/google/android/gms/internal/meet_coactivities/zzaai;

    throw v6

    :cond_8
    :goto_5
    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaae;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzalb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzalb;->zzd()V

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaae;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzxa;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzwy;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzwy;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzwy;

    if-eq p1, v0, :cond_a

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzwy;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzwy;

    if-ne p1, v0, :cond_9

    goto :goto_6

    :cond_9
    return v1

    :cond_a
    :goto_6
    const/16 p1, 0x10

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/meet_coactivities/zzul;)V
    .locals 6
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaae;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzwu;

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzwp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzwu;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzwp;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzul;->zzb(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaae;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzwu;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzwu;->zzf(Lcom/google/android/gms/internal/meet_coactivities/zzwp;Ljava/lang/Object;)V

    return-void
.end method
