.class public final Lcom/google/android/gms/internal/meet_coactivities/zzud;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzyd;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzuc;Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "state is null"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    const-string p1, "status is null"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/meet_coactivities/zzuc;)Lcom/google/android/gms/internal/meet_coactivities/zzud;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzuc;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "state is TRANSIENT_ERROR. Use forError() instead"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzud;

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzud;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzuc;Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    return-object v0
.end method

.method public static zzc(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)Lcom/google/android/gms/internal/meet_coactivities/zzud;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzk()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "The error status must not be OK"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzud;

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzuc;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzud;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzuc;Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/internal/meet_coactivities/zzud;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzud;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    iget-object v2, p1, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    iget-object p1, p1, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzk()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/android/gms/internal/meet_coactivities/zzuc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/meet_coactivities/zzyd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzud;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    return-object v0
.end method
