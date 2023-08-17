.class public final Lcom/google/android/gms/internal/meet_coactivities/zzti;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field public static final zza:Lcom/google/android/gms/internal/meet_coactivities/zzti;


# instance fields
.field private zzb:Lcom/google/android/gms/internal/meet_coactivities/zzul;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzc:Ljava/util/concurrent/Executor;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzd:[[Ljava/lang/Object;

.field private zze:Ljava/util/List;

.field private zzf:Ljava/lang/Boolean;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzg:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzh:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzti;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzti;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zze:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzd:[[Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x0
        0x2
    .end array-data
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzti;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zze:Ljava/util/List;

    iget-object v0, p1, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzul;

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzul;

    iget-object v0, p1, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzc:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzc:Ljava/util/concurrent/Executor;

    iget-object v0, p1, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzd:[[Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzd:[[Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzf:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzf:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzg:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzg:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzh:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzh:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zze:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zze:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzul;

    const-string v2, "deadline"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "authority"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "callCredentials"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzc:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "executor"

    invoke-virtual {v0, v3, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "compressorName"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzd:[[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "customOptions"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzo()Z

    move-result v1

    const-string v2, "waitForReady"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzg:Ljava/lang/Integer;

    const-string v2, "maxInboundMessageSize"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzh:Ljava/lang/Integer;

    const-string v2, "maxOutboundMessageSize"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zze:Ljava/util/List;

    const-string v2, "streamTracerFactories"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/meet_coactivities/zzul;)Lcom/google/android/gms/internal/meet_coactivities/zzti;
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/meet_coactivities/zzul;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzti;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzti;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzti;)V

    iput-object p1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzul;

    return-object v0
.end method

.method public final zzb(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/meet_coactivities/zzti;
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzti;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzti;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzti;)V

    iput-object p1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzc:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/meet_coactivities/zzti;
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "invalid maxsize %s"

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzti;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzti;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzti;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzg:Ljava/lang/Integer;

    return-object v0
.end method

.method public final zzd(I)Lcom/google/android/gms/internal/meet_coactivities/zzti;
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "invalid maxsize %s"

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzti;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzti;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzti;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzh:Ljava/lang/Integer;

    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/meet_coactivities/zzth;Ljava/lang/Object;)Lcom/google/android/gms/internal/meet_coactivities/zzti;
    .locals 9

    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "value"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzti;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzti;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzti;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzd:[[Ljava/lang/Object;

    array-length v4, v3

    const/4 v5, -0x1

    if-ge v2, v4, :cond_1

    aget-object v3, v3, v2

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzd:[[Ljava/lang/Object;

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v2, v5, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v1

    :goto_2
    add-int/2addr v3, v6

    const/4 v6, 0x2

    new-array v7, v6, [I

    aput v6, v7, v4

    aput v3, v7, v1

    const-class v3, Ljava/lang/Object;

    invoke-static {v3, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/Object;

    iput-object v3, v0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzd:[[Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzd:[[Ljava/lang/Object;

    array-length v8, v7

    invoke-static {v7, v1, v3, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-ne v2, v5, :cond_3

    iget-object v2, v0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzd:[[Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzd:[[Ljava/lang/Object;

    array-length v3, v3

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p2, v5, v4

    aput-object v5, v2, v3

    goto :goto_3

    :cond_3
    iget-object v3, v0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzd:[[Ljava/lang/Object;

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p2, v5, v4

    aput-object v5, v3, v2

    :goto_3
    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/meet_coactivities/zztt;)Lcom/google/android/gms/internal/meet_coactivities/zzti;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzti;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzti;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzti;)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zze:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zze:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zze:Ljava/util/List;

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/meet_coactivities/zzti;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzti;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzti;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzti;)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzf:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/internal/meet_coactivities/zzti;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzti;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzti;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzti;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzf:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final zzi()Lcom/google/android/gms/internal/meet_coactivities/zzul;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzul;

    return-object v0
.end method

.method public final zzj()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzg:Ljava/lang/Integer;

    return-object v0
.end method

.method public final zzk()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzh:Ljava/lang/Integer;

    return-object v0
.end method

.method public final zzl(Lcom/google/android/gms/internal/meet_coactivities/zzth;)Ljava/lang/Object;
    .locals 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzd:[[Ljava/lang/Object;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzd:[[Ljava/lang/Object;

    aget-object p1, p1, v1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzth;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzth;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzm()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zze:Ljava/util/List;

    return-object v0
.end method

.method public final zzn()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzc:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final zzo()Z
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzf:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
