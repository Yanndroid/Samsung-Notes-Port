.class public Lcom/google/android/gms/internal/meet_coactivities/zzje;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/Class;

.field private final zzc:Z

.field private final zzd:Z

.field private final zze:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzje;-><init>(Ljava/lang/String;Ljava/lang/Class;ZZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Class;ZZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzml;->zzb(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzje;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzje;->zzb:Ljava/lang/Class;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzje;->zzc:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzje;->zzd:Z

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x0

    const-wide/16 p3, 0x0

    :goto_0
    const/4 v0, 0x5

    if-ge p2, v0, :cond_0

    const-wide/16 v0, 0x1

    and-int/lit8 v2, p1, 0x3f

    shl-long/2addr v0, v2

    or-long/2addr p3, v0

    ushr-int/lit8 p1, p1, 0x6

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iput-wide p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzje;->zze:J

    return-void
.end method

.method public static zzd(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/meet_coactivities/zzje;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzje;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzje;-><init>(Ljava/lang/String;Ljava/lang/Class;ZZ)V

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzje;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzje;->zzb:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Ljava/util/Iterator;Lcom/google/android/gms/internal/meet_coactivities/zzjd;)V
    .locals 1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzje;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/meet_coactivities/zzjd;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/meet_coactivities/zzjd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzje;->zza:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzjd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzc()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzje;->zze:J

    return-wide v0
.end method

.method public final zze(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzje;->zzb:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzje;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzg(Ljava/lang/Object;Lcom/google/android/gms/internal/meet_coactivities/zzjd;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzje;->zzd:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzkt;->zza()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzje;->zza:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzjd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzje;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/meet_coactivities/zzjd;)V

    return-void
.end method

.method public final zzh(Ljava/util/Iterator;Lcom/google/android/gms/internal/meet_coactivities/zzjd;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzje;->zzc:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzje;->zzd:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzkt;->zza()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzje;->zza:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzjd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzje;->zza(Ljava/util/Iterator;Lcom/google/android/gms/internal/meet_coactivities/zzjd;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "non repeating key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzje;->zzc:Z

    return v0
.end method
