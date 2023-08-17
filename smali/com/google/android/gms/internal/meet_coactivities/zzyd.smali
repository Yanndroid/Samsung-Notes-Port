.class public final Lcom/google/android/gms/internal/meet_coactivities/zzyd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field public static final zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

.field public static final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

.field public static final zzc:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

.field public static final zzd:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

.field public static final zze:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

.field public static final zzf:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

.field public static final zzg:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

.field public static final zzh:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

.field public static final zzi:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

.field public static final zzj:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

.field public static final zzk:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

.field public static final zzl:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

.field public static final zzm:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

.field public static final zzn:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

.field public static final zzo:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

.field public static final zzp:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

.field public static final zzq:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

.field public static final zzr:Lcom/google/android/gms/internal/meet_coactivities/zzwp;

.field public static final zzs:Lcom/google/android/gms/internal/meet_coactivities/zzwp;

.field private static final zzt:Ljava/util/List;

.field private static final zzu:Lcom/google/android/gms/internal/meet_coactivities/zzwt;


# instance fields
.field private final zzv:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

.field private final zzw:Ljava/lang/String;

.field private final zzx:Ljava/lang/Throwable;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const-string v0, "io.grpc.Status.failOnEqualsForTest"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->values()[Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    invoke-virtual {v6}, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zza()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-direct {v8, v6, v5, v5}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzxy;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v7, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    if-nez v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, v5, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzv:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Code value duplication between "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " & "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzt:Ljava/util/List;

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzq:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzl:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzl:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzm:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzm:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzn:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzn:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzo:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzo:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzp:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzp:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzq:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzya;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/meet_coactivities/zzya;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzxz;)V

    const-string v1, "grpc-status"

    invoke-static {v1, v3, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzwp;->zzd(Ljava/lang/String;ZLcom/google/android/gms/internal/meet_coactivities/zzwt;)Lcom/google/android/gms/internal/meet_coactivities/zzwp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzr:Lcom/google/android/gms/internal/meet_coactivities/zzwp;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzyc;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/meet_coactivities/zzyc;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzyb;)V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzu:Lcom/google/android/gms/internal/meet_coactivities/zzwt;

    const-string v1, "grpc-message"

    invoke-static {v1, v3, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzwp;->zzd(Ljava/lang/String;ZLcom/google/android/gms/internal/meet_coactivities/zzwt;)Lcom/google/android/gms/internal/meet_coactivities/zzwp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzs:Lcom/google/android/gms/internal/meet_coactivities/zzwp;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzxy;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "code"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzv:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzw:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzx:Ljava/lang/Throwable;

    return-void
.end method

.method public static zzc(I)Lcom/google/android/gms/internal/meet_coactivities/zzyd;
    .locals 3

    if-ltz p0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    return-object p0

    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p0

    return-object p0
.end method

.method public static zzd(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;
    .locals 2

    const-string v0, "t"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    :goto_0
    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzye;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzye;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzye;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzyf;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzyf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyf;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zze(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p0

    return-object p0
.end method

.method public static zzg(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzw:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzv:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzv:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzw:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic zzj()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzt:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzv:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "code"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzw:Ljava/lang/String;

    const-string v2, "description"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzx:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/google/common/base/Throwables;->getStackTraceAsString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "cause"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/android/gms/internal/meet_coactivities/zzxy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzv:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    return-object v0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzw:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzv:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzx:Ljava/lang/Throwable;

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzxy;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzv:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzx:Ljava/lang/Throwable;

    invoke-direct {v1, v2, p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzxy;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public final zze(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzx:Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzv:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzw:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzxy;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzw:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzv:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzx:Ljava/lang/Throwable;

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzxy;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzw:Ljava/lang/String;

    return-object v0
.end method

.method public final zzi()Ljava/lang/Throwable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzx:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final zzk()Z
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzv:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
