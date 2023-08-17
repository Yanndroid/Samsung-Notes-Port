.class public final Lcom/google/android/gms/internal/meet_coactivities/zzvt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/meet_coactivities/zzvt;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzvy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/internal/meet_coactivities/zztt;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zzd:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

.field private final zze:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzvt;

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v2, v1, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzvt;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzvy;Lcom/google/android/gms/internal/meet_coactivities/zztt;Lcom/google/android/gms/internal/meet_coactivities/zzyd;Z)V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzvt;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzvt;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzvy;Lcom/google/android/gms/internal/meet_coactivities/zztt;Lcom/google/android/gms/internal/meet_coactivities/zzyd;Z)V
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/meet_coactivities/zzvy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/meet_coactivities/zztt;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzvt;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzvy;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzvt;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zztt;

    const-string p1, "status"

    invoke-static {p3, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzvt;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzvt;->zze:Z

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)Lcom/google/android/gms/internal/meet_coactivities/zzvt;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzk()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "drop status shouldn\'t be OK"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzvt;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, p0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzvt;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzvy;Lcom/google/android/gms/internal/meet_coactivities/zztt;Lcom/google/android/gms/internal/meet_coactivities/zzyd;Z)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)Lcom/google/android/gms/internal/meet_coactivities/zzvt;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzk()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "error status shouldn\'t be OK"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzvt;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, p0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzvt;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzvy;Lcom/google/android/gms/internal/meet_coactivities/zztt;Lcom/google/android/gms/internal/meet_coactivities/zzyd;Z)V

    return-object v0
.end method

.method public static zzc()Lcom/google/android/gms/internal/meet_coactivities/zzvt;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzvt;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzvt;

    return-object v0
.end method

.method public static zzd(Lcom/google/android/gms/internal/meet_coactivities/zzvy;Lcom/google/android/gms/internal/meet_coactivities/zztt;)Lcom/google/android/gms/internal/meet_coactivities/zzvt;
    .locals 3
    .param p1    # Lcom/google/android/gms/internal/meet_coactivities/zztt;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzvt;

    const-string v0, "subchannel"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/meet_coactivities/zzvy;

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p1, p0, v1, v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzvt;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzvy;Lcom/google/android/gms/internal/meet_coactivities/zztt;Lcom/google/android/gms/internal/meet_coactivities/zzyd;Z)V

    return-object p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/internal/meet_coactivities/zzvt;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzvt;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzvt;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzvy;

    iget-object v2, p1, Lcom/google/android/gms/internal/meet_coactivities/zzvt;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzvy;

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzvt;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    iget-object v2, p1, Lcom/google/android/gms/internal/meet_coactivities/zzvt;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzvt;->zze:Z

    iget-boolean p1, p1, Lcom/google/android/gms/internal/meet_coactivities/zzvt;->zze:Z

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzvt;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzvy;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzvt;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzvt;->zze:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzvt;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzvy;

    const-string v2, "subchannel"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "streamTracerFactory"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzvt;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzvt;->zze:Z

    const-string v2, "drop"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/meet_coactivities/zzvy;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzvt;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzvy;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/meet_coactivities/zzyd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzvt;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    return-object v0
.end method

.method public final zzg()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzvt;->zze:Z

    return v0
.end method
