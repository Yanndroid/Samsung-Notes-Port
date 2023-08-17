.class final Lcom/google/android/gms/internal/meet_coactivities/zzzm;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private zza:[[B
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzb:[B
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzc:I

.field private zzd:I

.field private zze:I

.field private zzf:Z


# direct methods
.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzm;->zza:[[B

    array-length v1, p1

    if-gtz v1, :cond_0

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzm;->zzb:[B

    iput v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzm;->zze:I

    return-void
.end method

.method public constructor <init>([[BI)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzm;->zza:[[B

    iput p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzm;->zze:I

    array-length p2, p1

    if-lez p2, :cond_0

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzm;->zzb:[B

    :cond_0
    return-void
.end method

.method private final zza()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzm;->zzc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzm;->zzc:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzm;->zzd:I

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzm;->zza:[[B

    if-eqz v1, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzm;->zzb:[B

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzm;->zzb:[B

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzm;->zze:I

    return v0
.end method

.method public final close()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzm;->zzf:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzm;->zzf:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzm;->zza:[[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzzn;->zza([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzm;->zzb:[B

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzzn;->zza([B)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzm;->zzb:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzm;->zza:[[B

    :cond_2
    return-void
.end method

.method public final read()I
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzm;->zzb:[B

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzm;->zzd:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzm;->zzd:I

    aget-byte v2, v0, v2

    iget v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzm;->zze:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzm;->zze:I

    array-length v0, v0

    if-ne v3, v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzzm;->zza()V

    :cond_0
    return v2

    :cond_1
    return v1
.end method

.method public final read([BII)I
    .locals 5

    move v0, p3

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzm;->zzb:[B

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    iget v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzm;->zzd:I

    const/4 v4, 0x1

    array-length v1, v1

    sub-int/2addr v1, v3

    aput v1, v2, v4

    const/4 v1, 0x2

    iget v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzm;->zze:I

    aput v3, v2, v1

    invoke-static {v2}, Lcom/google/common/primitives/Ints;->min([I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzm;->zzb:[B

    iget v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzm;->zzd:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzm;->zze:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzm;->zze:I

    if-nez v0, :cond_0

    iget p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzm;->zzd:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzm;->zzd:I

    iget-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzm;->zzb:[B

    array-length p2, p2

    if-ne p1, p2, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzzm;->zza()V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzzm;->zza()V

    goto :goto_0

    :cond_1
    :goto_1
    sub-int/2addr p3, v0

    if-gtz p3, :cond_3

    iget p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzm;->zze:I

    if-lez p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, -0x1

    return p1

    :cond_3
    :goto_2
    return p3
.end method
