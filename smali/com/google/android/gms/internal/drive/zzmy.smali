.class public final Lcom/google/android/gms/internal/drive/zzmy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zzvr:Lcom/google/android/gms/internal/drive/zzmy;


# instance fields
.field private count:I

.field private zznh:Z

.field private zzrr:I

.field private zzue:[Ljava/lang/Object;

.field private zzvs:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/drive/zzmy;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/google/android/gms/internal/drive/zzmy;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzmy;->zzvr:Lcom/google/android/gms/internal/drive/zzmy;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/16 v0, 0x8

    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/google/android/gms/internal/drive/zzmy;-><init>(I[I[Ljava/lang/Object;Z)V

    return-void
.end method

.method private constructor <init>(I[I[Ljava/lang/Object;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzmy;->zzrr:I

    iput p1, p0, Lcom/google/android/gms/internal/drive/zzmy;->count:I

    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzmy;->zzvs:[I

    iput-object p3, p0, Lcom/google/android/gms/internal/drive/zzmy;->zzue:[Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/drive/zzmy;->zznh:Z

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/drive/zzmy;Lcom/google/android/gms/internal/drive/zzmy;)Lcom/google/android/gms/internal/drive/zzmy;
    .locals 6

    iget v0, p0, Lcom/google/android/gms/internal/drive/zzmy;->count:I

    iget v1, p1, Lcom/google/android/gms/internal/drive/zzmy;->count:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzmy;->zzvs:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/drive/zzmy;->zzvs:[I

    iget v3, p0, Lcom/google/android/gms/internal/drive/zzmy;->count:I

    iget v4, p1, Lcom/google/android/gms/internal/drive/zzmy;->count:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzmy;->zzue:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/drive/zzmy;->zzue:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/gms/internal/drive/zzmy;->count:I

    iget p1, p1, Lcom/google/android/gms/internal/drive/zzmy;->count:I

    invoke-static {v3, v5, v2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lcom/google/android/gms/internal/drive/zzmy;

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/gms/internal/drive/zzmy;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object p0
.end method

.method private static zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V
    .locals 2

    ushr-int/lit8 v0, p0, 0x3

    and-int/lit8 p0, p0, 0x7

    if-eqz p0, :cond_5

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-ne p0, v1, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p2, v0, p0}, Lcom/google/android/gms/internal/drive/zzns;->zzf(II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdl()Lcom/google/android/gms/internal/drive/zzkr;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/drive/zzns;->zzcd()I

    move-result p0

    sget v1, Lcom/google/android/gms/internal/drive/zzkk$zze;->zzsi:I

    if-ne p0, v1, :cond_2

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/drive/zzns;->zzak(I)V

    check-cast p1, Lcom/google/android/gms/internal/drive/zzmy;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/drive/zzmy;->zzb(Lcom/google/android/gms/internal/drive/zzns;)V

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/drive/zzns;->zzal(I)V

    return-void

    :cond_2
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/drive/zzns;->zzal(I)V

    check-cast p1, Lcom/google/android/gms/internal/drive/zzmy;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/drive/zzmy;->zzb(Lcom/google/android/gms/internal/drive/zzns;)V

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/drive/zzns;->zzak(I)V

    return-void

    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/drive/zzjc;

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/drive/zzns;->zza(ILcom/google/android/gms/internal/drive/zzjc;)V

    return-void

    :cond_4
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-interface {p2, v0, p0, p1}, Lcom/google/android/gms/internal/drive/zzns;->zzc(IJ)V

    return-void

    :cond_5
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-interface {p2, v0, p0, p1}, Lcom/google/android/gms/internal/drive/zzns;->zzi(IJ)V

    return-void
.end method

.method public static zzfa()Lcom/google/android/gms/internal/drive/zzmy;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/drive/zzmy;->zzvr:Lcom/google/android/gms/internal/drive/zzmy;

    return-object v0
.end method

.method public static zzfb()Lcom/google/android/gms/internal/drive/zzmy;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/drive/zzmy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/drive/zzmy;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/drive/zzmy;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/drive/zzmy;

    iget v2, p0, Lcom/google/android/gms/internal/drive/zzmy;->count:I

    iget v3, p1, Lcom/google/android/gms/internal/drive/zzmy;->count:I

    if-ne v2, v3, :cond_8

    iget-object v3, p0, Lcom/google/android/gms/internal/drive/zzmy;->zzvs:[I

    iget-object v4, p1, Lcom/google/android/gms/internal/drive/zzmy;->zzvs:[I

    move v5, v1

    :goto_0
    if-ge v5, v2, :cond_4

    aget v6, v3, v5

    aget v7, v4, v5

    if-eq v6, v7, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    move v2, v0

    :goto_1
    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzmy;->zzue:[Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/drive/zzmy;->zzue:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/gms/internal/drive/zzmy;->count:I

    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_6

    aget-object v5, v2, v4

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    move p1, v1

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    move p1, v0

    :goto_3
    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    return v0

    :cond_8
    :goto_4
    return v1
.end method

.method public final hashCode()I
    .locals 8

    iget v0, p0, Lcom/google/android/gms/internal/drive/zzmy;->count:I

    add-int/lit16 v1, v0, 0x20f

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzmy;->zzvs:[I

    const/4 v3, 0x0

    const/16 v4, 0x11

    move v5, v3

    move v6, v4

    :goto_0
    if-ge v5, v0, :cond_0

    mul-int/lit8 v6, v6, 0x1f

    aget v7, v2, v5

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v1, v6

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzmy;->zzue:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/drive/zzmy;->count:I

    :goto_1
    if-ge v3, v2, :cond_1

    mul-int/lit8 v4, v4, 0x1f

    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v1, v4

    return v1
.end method

.method public final zza(Lcom/google/android/gms/internal/drive/zzns;)V
    .locals 3

    invoke-interface {p1}, Lcom/google/android/gms/internal/drive/zzns;->zzcd()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/drive/zzkk$zze;->zzsj:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/drive/zzmy;->count:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzmy;->zzvs:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzmy;->zzue:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/drive/zzns;->zza(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/drive/zzmy;->count:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzmy;->zzvs:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzmy;->zzue:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/drive/zzns;->zza(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final zza(Ljava/lang/StringBuilder;I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/drive/zzmy;->count:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzmy;->zzvs:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzmy;->zzue:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/internal/drive/zzlt;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzb(ILjava/lang/Object;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzmy;->zznh:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/drive/zzmy;->count:I

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzmy;->zzvs:[I

    array-length v2, v1

    if-ne v0, v2, :cond_1

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    shr-int/lit8 v2, v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/drive/zzmy;->zzvs:[I

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzmy;->zzue:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zzmy;->zzue:[Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzmy;->zzvs:[I

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzmy;->count:I

    aput p1, v0, v1

    iget-object p1, p0, Lcom/google/android/gms/internal/drive/zzmy;->zzue:[Ljava/lang/Object;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/drive/zzmy;->count:I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/drive/zzns;)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/drive/zzmy;->count:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/drive/zzns;->zzcd()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/drive/zzkk$zze;->zzsi:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/drive/zzmy;->count:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzmy;->zzvs:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzmy;->zzue:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/drive/zzmy;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzmy;->count:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzmy;->zzvs:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzmy;->zzue:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/drive/zzmy;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final zzbp()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzmy;->zznh:Z

    return-void
.end method

.method public final zzcx()I
    .locals 6

    iget v0, p0, Lcom/google/android/gms/internal/drive/zzmy;->zzrr:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/drive/zzmy;->count:I

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzmy;->zzvs:[I

    aget v2, v2, v0

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v2, v2, 0x7

    if-eqz v2, :cond_5

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3

    const/4 v5, 0x3

    if-eq v2, v5, :cond_2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzmy;->zzue:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/drive/zzjr;->zzj(II)I

    move-result v2

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdl()Lcom/google/android/gms/internal/drive/zzkr;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzjr;->zzab(I)I

    move-result v2

    shl-int/2addr v2, v4

    iget-object v3, p0, Lcom/google/android/gms/internal/drive/zzmy;->zzue:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/google/android/gms/internal/drive/zzmy;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/drive/zzmy;->zzcx()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzmy;->zzue:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Lcom/google/android/gms/internal/drive/zzjc;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/drive/zzjr;->zzc(ILcom/google/android/gms/internal/drive/zzjc;)I

    move-result v2

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzmy;->zzue:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/drive/zzjr;->zzg(IJ)I

    move-result v2

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzmy;->zzue:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/drive/zzjr;->zze(IJ)I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    iput v1, p0, Lcom/google/android/gms/internal/drive/zzmy;->zzrr:I

    return v1
.end method

.method public final zzfc()I
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/drive/zzmy;->zzrr:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/drive/zzmy;->count:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzmy;->zzvs:[I

    aget v2, v2, v0

    ushr-int/lit8 v2, v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/drive/zzmy;->zzue:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/google/android/gms/internal/drive/zzjc;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/drive/zzjr;->zzd(ILcom/google/android/gms/internal/drive/zzjc;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/google/android/gms/internal/drive/zzmy;->zzrr:I

    return v1
.end method
