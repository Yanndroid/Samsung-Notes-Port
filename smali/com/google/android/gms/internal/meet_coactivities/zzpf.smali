.class final Lcom/google/android/gms/internal/meet_coactivities/zzpf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/lang/Object;

.field private final zzb:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpf;->zza:Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpf;->zzb:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/internal/meet_coactivities/zzpf;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzpf;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpf;->zza:Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/internal/meet_coactivities/zzpf;->zza:Ljava/lang/Object;

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpf;->zzb:I

    iget p1, p1, Lcom/google/android/gms/internal/meet_coactivities/zzpf;->zzb:I

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpf;->zza:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, 0xffff

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpf;->zzb:I

    add-int/2addr v0, v1

    return v0
.end method
