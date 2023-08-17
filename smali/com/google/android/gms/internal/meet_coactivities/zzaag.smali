.class abstract Lcom/google/android/gms/internal/meet_coactivities/zzaag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/meet_coactivities/zzzl;

.field private final zzb:I

.field private final zzc:Lcom/google/android/gms/internal/meet_coactivities/zzalb;

.field private zzd:Z

.field private zze:Ljava/io/InputStream;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzf:Ljava/util/Queue;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzg:Z

.field private zzh:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzi:I

.field private zzj:I

.field private zzk:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzzl;ILcom/google/android/gms/internal/meet_coactivities/zzalb;Lcom/google/android/gms/internal/meet_coactivities/zzaaf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x1

    iput p4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzk:I

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzzl;

    iput p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzalb;

    return-void
.end method

.method private final zzb(I)V
    .locals 5
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzk:I

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    goto :goto_1

    :cond_0
    if-ne v0, v4, :cond_3

    goto :goto_0

    :cond_1
    if-ne v0, v4, :cond_3

    goto :goto_0

    :cond_2
    if-ne v0, v3, :cond_3

    :goto_0
    move v2, v3

    :cond_3
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    :goto_1
    iput p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzk:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzk:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    const-string v1, "CLOSED"

    goto :goto_0

    :cond_1
    const-string v1, "SUFFIX_SENT"

    goto :goto_0

    :cond_2
    const-string v1, "ALL_MESSAGES_SENT"

    goto :goto_0

    :cond_3
    const-string v1, "PREFIX_SENT"

    goto :goto_0

    :cond_4
    const-string v1, "INITIAL"

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzi:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[S="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/NDM="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract zza(Landroid/os/Parcel;)I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end method

.method public final zzc()Lcom/google/android/gms/internal/meet_coactivities/zzalb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzalb;

    return-object v0
.end method

.method public final zzd(Ljava/io/InputStream;)V
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzd:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzf:Ljava/util/Queue;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zze:Ljava/io/InputStream;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zze:Ljava/io/InputStream;

    return-void

    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzf:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zze()V
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzd:Z

    return-void
.end method

.method public final zzf()V
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzg:Z

    return-void
.end method

.method public final zzg()V
    .locals 15
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzk:I

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    const/4 v0, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-eq v1, v0, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzg:Z

    if-nez v1, :cond_3

    goto/16 :goto_9

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzi()Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzg:Z

    if-nez v1, :cond_3

    goto/16 :goto_9

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzd:Z

    if-eqz v1, :cond_12

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzzl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zzu()Z

    move-result v1

    if-eqz v1, :cond_12

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzaah;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzaah;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/internal/meet_coactivities/zzye; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaah;->zza()Landroid/os/Parcel;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaah;->zza()Landroid/os/Parcel;

    move-result-object v5

    iget v6, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzh:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzh:I

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget v5, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzk:I

    add-int/lit8 v6, v5, -0x1

    if-eqz v5, :cond_11

    if-eqz v6, :cond_6

    if-eq v6, v3, :cond_5

    if-ne v6, v0, :cond_4

    move v5, v4

    goto/16 :goto_5

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    move v5, v4

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaah;->zza()Landroid/os/Parcel;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zza(Landroid/os/Parcel;)I

    move-result v5

    or-int/2addr v5, v3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzb(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzi()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzg:Z

    if-nez v0, :cond_7

    goto/16 :goto_6

    :cond_7
    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzi:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zze:Ljava/io/InputStream;

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzf:Ljava/util/Queue;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    goto :goto_2

    :cond_9
    move-object v0, v2

    :goto_2
    if-eqz v0, :cond_f

    or-int/lit8 v5, v5, 0x2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaah;->zza()Landroid/os/Parcel;

    move-result-object v6

    instance-of v7, v0, Lcom/google/android/gms/internal/meet_coactivities/zzaai;

    if-nez v7, :cond_e

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzzn;->zzb()[B

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-gtz v8, :cond_b

    invoke-virtual {v6, v4}, Landroid/os/Parcel;->writeInt(I)V

    :cond_a
    move v6, v4

    move v8, v6

    goto :goto_3

    :cond_b
    invoke-virtual {v6, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v6, v7, v4, v8}, Landroid/os/Parcel;->writeByteArray([BII)V

    iget v6, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzj:I

    add-int/2addr v6, v8

    iput v6, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzj:I

    array-length v6, v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v8, v6, :cond_a

    const/16 v6, 0x80

    move v8, v3

    :goto_3
    :try_start_3
    invoke-static {v7}, Lcom/google/android/gms/internal/meet_coactivities/zzzn;->zza([B)V

    if-nez v8, :cond_d

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget v10, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzi:I

    add-int/lit8 v0, v10, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzi:I

    if-lez v10, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzf:Ljava/util/Queue;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzalb;

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/meet_coactivities/zzalb;->zzi(I)V

    iget-object v9, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzalb;

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzj:I

    int-to-long v13, v0

    move-wide v11, v13

    invoke-virtual/range {v9 .. v14}, Lcom/google/android/gms/internal/meet_coactivities/zzalb;->zzj(IJJ)V

    iput v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzj:I

    :cond_d
    or-int v0, v5, v6

    move v5, v0

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/google/android/gms/internal/meet_coactivities/zzzn;->zza([B)V

    throw v0

    :cond_e
    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzaai;

    throw v2

    :cond_f
    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzg:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    :goto_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzg:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzi()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzb(I)V

    :goto_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaah;->zza()Landroid/os/Parcel;

    const/4 v0, 0x4

    or-int/2addr v5, v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzb(I)V

    :cond_10
    :goto_6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaah;->zza()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/meet_coactivities/zzaao;->zzb(Landroid/os/Parcel;I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaah;->zza()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    iget-object v5, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzzl;

    iget v6, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzb:I

    invoke-virtual {v5, v6, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zzq(ILcom/google/android/gms/internal/meet_coactivities/zzaah;)V

    iget-object v5, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzalb;

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/meet_coactivities/zzalb;->zzl(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzalb;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/meet_coactivities/zzalb;->zzk(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaah;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/google/android/gms/internal/meet_coactivities/zzye; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :cond_11
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaah;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v1

    :try_start_7
    const-class v5, Ljava/lang/Throwable;

    const-string v6, "addSuppressed"

    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Throwable;

    aput-object v8, v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v5, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    :goto_7
    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/google/android/gms/internal/meet_coactivities/zzye; {:try_start_8 .. :try_end_8} :catch_1

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    :try_start_9
    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzo:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zze(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzye;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzye;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V

    throw v1
    :try_end_9
    .catch Lcom/google/android/gms/internal/meet_coactivities/zzye; {:try_start_9 .. :try_end_9} :catch_1

    :goto_8
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzb(I)V

    throw v0

    :cond_12
    :goto_9
    return-void

    :cond_13
    throw v2
.end method

.method public final zzh()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzzl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zzu()Z

    move-result v0

    return v0
.end method

.method public final zzi()Z
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzf:Ljava/util/Queue;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zze:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzi:I

    if-nez v0, :cond_2

    return v1

    :cond_2
    return v2
.end method
