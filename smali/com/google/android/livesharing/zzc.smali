.class final Lcom/google/android/livesharing/zzc;
.super Lcom/google/android/livesharing/CoDoingState;
.source "SourceFile"


# instance fields
.field private final zza:[B


# direct methods
.method public synthetic constructor <init>([BLcom/google/android/livesharing/zzb;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/livesharing/CoDoingState;-><init>()V

    iput-object p1, p0, Lcom/google/android/livesharing/zzc;->zza:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/android/livesharing/CoDoingState;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/livesharing/CoDoingState;

    iget-object v0, p0, Lcom/google/android/livesharing/zzc;->zza:[B

    instance-of v1, p1, Lcom/google/android/livesharing/zzc;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/livesharing/zzc;

    iget-object p1, p1, Lcom/google/android/livesharing/zzc;->zza:[B

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/livesharing/CoDoingState;->state()[B

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/livesharing/zzc;->zza:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    return v0
.end method

.method public final state()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/livesharing/zzc;->zza:[B

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/livesharing/zzc;->zza:[B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CoDoingState{state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
