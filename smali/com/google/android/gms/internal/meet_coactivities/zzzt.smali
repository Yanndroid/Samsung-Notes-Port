.class abstract Lcom/google/android/gms/internal/meet_coactivities/zzzt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzald;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/meet_coactivities/zzzl;

.field public final zzb:Lcom/google/android/gms/internal/meet_coactivities/zztf;

.field public final zzc:I

.field public zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaag;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public zze:Lcom/google/android/gms/internal/meet_coactivities/zzalb;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public zzf:Lcom/google/android/gms/internal/meet_coactivities/zzale;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzg:Ljava/io/InputStream;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzh:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzi:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzj:Ljava/util/ArrayList;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzk:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzl:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzm:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzn:Lcom/google/android/gms/internal/meet_coactivities/zzzq;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzo:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzp:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzq:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzr:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzzl;Lcom/google/android/gms/internal/meet_coactivities/zztf;ILcom/google/android/gms/internal/meet_coactivities/zzzs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p4, Lcom/google/android/gms/internal/meet_coactivities/zzzq;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzzq;

    iput-object p4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzn:Lcom/google/android/gms/internal/meet_coactivities/zzzq;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzzl;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    iput p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzc:I

    return-void
.end method

.method private final zzp(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzyd;Z)V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzo()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzn:Lcom/google/android/gms/internal/meet_coactivities/zzzq;

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzzq;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzzq;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzzq;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzzq;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzl(Lcom/google/android/gms/internal/meet_coactivities/zzzq;)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzalb;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzalb;->zzm(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    :cond_1
    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzzl;

    iget v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzc:I

    invoke-virtual {p3, v1, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zzo(ILcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzzl;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zzn(Lcom/google/android/gms/internal/meet_coactivities/zzzt;)V

    :cond_4
    return-void
.end method

.method private final zzq()V
    .locals 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzi:I

    if-nez v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzj:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzj:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/meet_coactivities/zzzr;

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget v3, v2, Lcom/google/android/gms/internal/meet_coactivities/zzzr;->zzc:I

    add-int/2addr v1, v3

    iget-boolean v2, v2, Lcom/google/android/gms/internal/meet_coactivities/zzzr;->zzd:Z

    add-int/lit8 v0, v0, 0x1

    if-eqz v2, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzi:I

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzr(I)V

    :cond_2
    return-void
.end method

.method private final zzr(I)V
    .locals 8
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzalb;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzalb;

    iget v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzo:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzalb;->zze(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzalb;

    iget v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzo:I

    int-to-long v6, p1

    move-wide v4, v6

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/meet_coactivities/zzalb;->zzf(IJJ)V

    iget p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzo:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzo:I

    return-void
.end method

.method private final zzs()Z
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzg:Ljava/io/InputStream;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzi:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final zzt()Z
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzk:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzh:I

    iget v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzl:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzk:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzn:Lcom/google/android/gms/internal/meet_coactivities/zzzq;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzs()Z

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzale;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[SfxA="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "/De="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/Msg="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "/Lis="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

.method public abstract zza(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end method

.method public abstract zzb()V
.end method

.method public abstract zzc(ILandroid/os/Parcel;)V
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end method

.method public abstract zzd(ILandroid/os/Parcel;)V
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end method

.method public zze()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final declared-synchronized zzf()Ljava/io/InputStream;
    .locals 7
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzg:Ljava/io/InputStream;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzg:Ljava/io/InputStream;

    goto :goto_2

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzp:I

    if-lez v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzs()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzi:I

    iput v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzi:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzj:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/meet_coactivities/zzzr;

    iget v4, v3, Lcom/google/android/gms/internal/meet_coactivities/zzzr;->zzc:I

    new-instance v4, Lcom/google/android/gms/internal/meet_coactivities/zzzm;

    iget-object v3, v3, Lcom/google/android/gms/internal/meet_coactivities/zzzr;->zzb:[B

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzzm;-><init>([B)V

    goto :goto_1

    :cond_1
    new-array v3, v0, [[B

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_2

    iget-object v6, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzj:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/meet_coactivities/zzzr;

    iget-object v6, v6, Lcom/google/android/gms/internal/meet_coactivities/zzzr;->zzb:[B

    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    aput-object v6, v3, v4

    array-length v6, v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance v4, Lcom/google/android/gms/internal/meet_coactivities/zzzm;

    invoke-direct {v4, v3, v5}, Lcom/google/android/gms/internal/meet_coactivities/zzzm;-><init>([[BI)V

    :goto_1
    iget v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzh:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzh:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzq()V

    move-object v0, v4

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_4

    iget v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzp:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzp:I

    goto :goto_3

    :cond_4
    iput-boolean v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzr:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzt()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzo()Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzzq;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzzq;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzl(Lcom/google/android/gms/internal/meet_coactivities/zzzq;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzi()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_5
    :goto_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzp(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzyd;Z)V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzp(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzyd;Z)V

    return-void
.end method

.method public final zzi()V
    .locals 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzq:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzq:Z

    :cond_1
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzzq;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzzq;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzn:Lcom/google/android/gms/internal/meet_coactivities/zzzq;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_2

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzale;

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzk:Z

    if-eqz v1, :cond_8

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzale;

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzr:Z

    if-nez v1, :cond_8

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzs()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzp:I

    if-eqz v1, :cond_8

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzt()Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzn:Lcom/google/android/gms/internal/meet_coactivities/zzzq;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v1, v3, :cond_6

    if-ne v1, v2, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    iget-boolean v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzr:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzs()Z

    move-result v1

    if-eqz v1, :cond_7

    iput-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzr:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzale;

    invoke-interface {v1, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzale;->zzf(Lcom/google/android/gms/internal/meet_coactivities/zzald;)V

    goto :goto_0

    :cond_7
    iget-boolean v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzk:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzzq;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzzq;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzl(Lcom/google/android/gms/internal/meet_coactivities/zzzq;)V

    :goto_2
    iget-boolean v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzk:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzzq;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzzq;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzl(Lcom/google/android/gms/internal/meet_coactivities/zzzq;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzb()V

    goto :goto_0

    :cond_8
    :goto_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzq:Z

    return-void
.end method

.method public final declared-synchronized zzj(Landroid/os/Parcel;)V
    .locals 12

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzo()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzaao;->zzc(II)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzaao;->zza(ILandroid/os/Parcel;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p1

    invoke-direct {p0, p1, p1, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzp(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzyd;Z)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/meet_coactivities/zzye; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzaao;->zzc(II)Z

    move-result v4

    const/4 v5, 0x2

    invoke-static {v1, v5}, Lcom/google/android/gms/internal/meet_coactivities/zzaao;->zzc(II)Z

    move-result v5

    const/4 v6, 0x4

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/meet_coactivities/zzaao;->zzc(II)Z

    move-result v6

    if-eqz v4, :cond_2

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzc(ILandroid/os/Parcel;)V

    sget-object v4, Lcom/google/android/gms/internal/meet_coactivities/zzzq;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzzq;

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzl(Lcom/google/android/gms/internal/meet_coactivities/zzzq;)V

    :cond_2
    if-eqz v5, :cond_c

    and-int/lit8 v4, v1, 0x40

    const/4 v7, 0x0

    if-nez v4, :cond_b

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzzn;->zzc(I)[B

    move-result-object v8

    if-lez v4, :cond_3

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_3
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_4

    move v10, v0

    goto :goto_0

    :cond_4
    move v10, v3

    :goto_0
    iget-object v11, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzj:Ljava/util/ArrayList;

    if-nez v11, :cond_7

    iget v11, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzo:I

    if-nez v11, :cond_6

    if-nez v9, :cond_6

    iget v9, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzh:I

    if-ne v2, v9, :cond_6

    iget-object v7, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzg:Ljava/io/InputStream;

    if-nez v7, :cond_5

    move v7, v3

    goto :goto_1

    :cond_5
    move v7, v0

    :goto_1
    invoke-static {v7}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    new-instance v7, Lcom/google/android/gms/internal/meet_coactivities/zzzm;

    invoke-direct {v7, v8}, Lcom/google/android/gms/internal/meet_coactivities/zzzm;-><init>([B)V

    iput-object v7, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzg:Ljava/io/InputStream;

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzr(I)V

    goto :goto_3

    :cond_6
    new-instance v9, Ljava/util/ArrayList;

    const/16 v11, 0x10

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v9, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzj:Ljava/util/ArrayList;

    :cond_7
    new-instance v9, Lcom/google/android/gms/internal/meet_coactivities/zzzr;

    invoke-direct {v9, v7, v8, v4, v10}, Lcom/google/android/gms/internal/meet_coactivities/zzzr;-><init>(Ljava/io/InputStream;[BIZ)V

    iget v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzh:I

    sub-int v4, v2, v4

    iget-object v8, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzj:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_8

    iget-object v7, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzj:Ljava/util/ArrayList;

    invoke-virtual {v7, v4, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzq()V

    goto :goto_3

    :cond_8
    iget-object v8, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzj:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v4, v8, :cond_a

    :cond_9
    iget-object v8, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzj:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzj:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v4, v8, :cond_9

    iget-object v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzj:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    iget-object v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzj:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zztd;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/meet_coactivities/zztf;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zztd;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzyv;

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    const-string v1, "Parcelable messages not allowed"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzye;

    invoke-direct {v1, p1, v7}, Lcom/google/android/gms/internal/meet_coactivities/zzye;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V

    throw v1

    :cond_c
    :goto_3
    if-eqz v6, :cond_d

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzd(ILandroid/os/Parcel;)V

    iput v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzl:I

    iput-boolean v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzk:Z

    :cond_d
    iget v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzh:I

    if-ne v2, v1, :cond_f

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzj:Ljava/util/ArrayList;

    if-nez v2, :cond_e

    :goto_4
    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzh:I

    goto :goto_5

    :cond_e
    if-nez v5, :cond_f

    if-nez v6, :cond_f

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzh:I

    goto :goto_4

    :cond_f
    :goto_5
    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzm:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzm:I

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzalb;

    if-eqz p1, :cond_10

    if-eqz v1, :cond_10

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzalb;->zzh(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzalb;

    iget v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzm:I

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzalb;->zzg(J)V

    iput v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzm:I

    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzi()V
    :try_end_2
    .catch Lcom/google/android/gms/internal/meet_coactivities/zzye; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzye;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p1

    invoke-direct {p0, p1, p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzp(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzyd;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzk(Lcom/google/android/gms/internal/meet_coactivities/zzaag;Lcom/google/android/gms/internal/meet_coactivities/zzale;)V
    .locals 0
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaag;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzalb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzalb;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzale;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzo()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzzq;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzzq;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzl(Lcom/google/android/gms/internal/meet_coactivities/zzzq;)V

    :cond_0
    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/meet_coactivities/zzzq;)V
    .locals 7
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzn:Lcom/google/android/gms/internal/meet_coactivities/zzzq;

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzzq;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzzq;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const-string v3, "%s -> %s"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_4

    const/4 v6, 0x2

    if-eq v2, v6, :cond_3

    const/4 v1, 0x3

    if-eq v2, v1, :cond_2

    const/4 v1, 0x4

    if-eq v2, v1, :cond_1

    const/4 v0, 0x5

    if-ne v2, v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzzq;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzzq;

    if-ne v0, v1, :cond_6

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzzq;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzzq;

    if-ne v0, v1, :cond_6

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzzq;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzzq;

    if-eq v0, v2, :cond_5

    if-ne v0, v1, :cond_6

    goto :goto_0

    :cond_4
    if-ne v0, v1, :cond_6

    :cond_5
    :goto_0
    move v4, v5

    :cond_6
    invoke-static {v4, v3, v0, p1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzn:Lcom/google/android/gms/internal/meet_coactivities/zzzq;

    return-void
.end method

.method public final zzm()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzaag;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzale;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzale;->zzg()V

    :cond_0
    if-eqz v0, :cond_1

    :try_start_1
    monitor-enter v0
    :try_end_1
    .catch Lcom/google/android/gms/internal/meet_coactivities/zzye; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaag;->zzg()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Lcom/google/android/gms/internal/meet_coactivities/zzye; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    monitor-enter p0

    :try_start_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzye;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzp(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzyd;Z)V

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_1
    return-void

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method public final zzn(I)V
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzp:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzp:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzi()V

    return-void
.end method

.method public final zzo()Z
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzn:Lcom/google/android/gms/internal/meet_coactivities/zzzq;

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzzq;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzzq;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
