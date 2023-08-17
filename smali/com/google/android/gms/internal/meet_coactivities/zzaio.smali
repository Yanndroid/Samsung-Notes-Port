.class public final Lcom/google/android/gms/internal/meet_coactivities/zzaio;
.super Lcom/google/android/gms/internal/meet_coactivities/zzvu;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/meet_coactivities/zzti;

.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzwu;

.field private final zzc:Lcom/google/android/gms/internal/meet_coactivities/zzxa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzwu;Lcom/google/android/gms/internal/meet_coactivities/zzti;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzvu;-><init>()V

    const-string v0, "method"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaio;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    const-string p1, "headers"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzwu;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaio;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzwu;

    const-string p1, "callOptions"

    invoke-static {p3, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzti;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaio;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lcom/google/android/gms/internal/meet_coactivities/zzaio;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzaio;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaio;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    iget-object v3, p1, Lcom/google/android/gms/internal/meet_coactivities/zzaio;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaio;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzwu;

    iget-object v3, p1, Lcom/google/android/gms/internal/meet_coactivities/zzaio;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzwu;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaio;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    iget-object p1, p1, Lcom/google/android/gms/internal/meet_coactivities/zzaio;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaio;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaio;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzwu;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaio;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaio;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaio;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzwu;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaio;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[method="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " headers="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " callOptions="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/android/gms/internal/meet_coactivities/zzti;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaio;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/meet_coactivities/zzwu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaio;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzwu;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/meet_coactivities/zzxa;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaio;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    return-object v0
.end method
