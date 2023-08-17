.class public abstract Lcom/google/android/gms/internal/meet_coactivities/zzmg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/meet_coactivities/zzkx;

.field private zzb:I

.field private zzc:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzkx;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzmg;->zzb:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzmg;->zzc:I

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzml;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzmg;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzkx;

    return-void
.end method


# virtual methods
.method public abstract zza()Ljava/lang/Object;
.end method

.method public abstract zzc(IILcom/google/android/gms/internal/meet_coactivities/zzmb;)V
.end method

.method public final zzh()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzmg;->zzc:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final zzi()Lcom/google/android/gms/internal/meet_coactivities/zzmh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzmg;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzkx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzkx;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzmh;

    move-result-object v0

    return-object v0
.end method

.method public final zzj()Ljava/lang/Object;
    .locals 15

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzmg;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzkx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzkx;->zzb()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzmj;->zzc(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    move v4, v1

    move v5, v3

    :goto_0
    const/4 v6, 0x1

    if-ltz v2, :cond_17

    add-int/lit8 v7, v2, 0x1

    move v9, v1

    move v8, v7

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    const-string v11, "unterminated parameter"

    if-ge v8, v10, :cond_16

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v12, v8, -0x30

    int-to-char v12, v12

    const/16 v13, 0xa

    if-ge v12, v13, :cond_1

    mul-int/lit8 v9, v9, 0xa

    add-int/2addr v9, v12

    const v8, 0xf4240

    if-ge v9, v8, :cond_0

    move v8, v10

    goto :goto_1

    :cond_0
    const-string v1, "index too large"

    invoke-static {v1, v0, v2, v10}, Lcom/google/android/gms/internal/meet_coactivities/zzmi;->zzc(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/internal/meet_coactivities/zzmi;

    move-result-object v0

    throw v0

    :cond_1
    const/16 v12, 0x24

    if-ne v8, v12, :cond_5

    add-int/lit8 v5, v10, -0x1

    sub-int/2addr v5, v7

    if-eqz v5, :cond_4

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x30

    if-eq v5, v7, :cond_3

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v10, v5, :cond_2

    add-int/lit8 v5, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move v7, v10

    move v10, v5

    move v5, v9

    goto :goto_2

    :cond_2
    invoke-static {v11, v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzmi;->zzd(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/internal/meet_coactivities/zzmi;

    move-result-object v0

    throw v0

    :cond_3
    const-string v1, "index has leading zero"

    invoke-static {v1, v0, v2, v10}, Lcom/google/android/gms/internal/meet_coactivities/zzmi;->zzc(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/internal/meet_coactivities/zzmi;

    move-result-object v0

    throw v0

    :cond_4
    const-string v1, "missing index"

    invoke-static {v1, v0, v2, v10}, Lcom/google/android/gms/internal/meet_coactivities/zzmi;->zzc(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/internal/meet_coactivities/zzmi;

    move-result-object v0

    throw v0

    :cond_5
    const/16 v9, 0x3c

    if-ne v8, v9, :cond_8

    if-eq v5, v3, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v10, v7, :cond_6

    add-int/lit8 v7, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move v14, v10

    move v10, v7

    move v7, v14

    goto :goto_2

    :cond_6
    invoke-static {v11, v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzmi;->zzd(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/internal/meet_coactivities/zzmi;

    move-result-object v0

    throw v0

    :cond_7
    const-string v1, "invalid relative parameter"

    invoke-static {v1, v0, v2, v10}, Lcom/google/android/gms/internal/meet_coactivities/zzmi;->zzc(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/internal/meet_coactivities/zzmi;

    move-result-object v0

    throw v0

    :cond_8
    add-int/lit8 v5, v4, 0x1

    move v14, v5

    move v5, v4

    move v4, v14

    :goto_2
    add-int/2addr v10, v3

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v10, v8, :cond_15

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    and-int/lit8 v8, v8, -0x21

    add-int/lit8 v8, v8, -0x41

    int-to-char v8, v8

    const/16 v9, 0x1a

    if-ge v8, v9, :cond_14

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    and-int/lit8 v9, v8, 0x20

    if-nez v9, :cond_9

    goto :goto_4

    :cond_9
    move v6, v1

    :goto_4
    invoke-static {v0, v7, v10, v6}, Lcom/google/android/gms/internal/meet_coactivities/zzjk;->zzg(Ljava/lang/String;IIZ)Lcom/google/android/gms/internal/meet_coactivities/zzjk;

    move-result-object v6

    invoke-static {v8}, Lcom/google/android/gms/internal/meet_coactivities/zzjj;->zzc(C)Lcom/google/android/gms/internal/meet_coactivities/zzjj;

    move-result-object v7

    add-int/lit8 v10, v10, 0x1

    if-eqz v7, :cond_b

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/meet_coactivities/zzjk;->zzi(Lcom/google/android/gms/internal/meet_coactivities/zzjj;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-static {v5, v7, v6}, Lcom/google/android/gms/internal/meet_coactivities/zzmd;->zza(ILcom/google/android/gms/internal/meet_coactivities/zzjj;Lcom/google/android/gms/internal/meet_coactivities/zzjk;)Lcom/google/android/gms/internal/meet_coactivities/zzmd;

    move-result-object v6

    goto :goto_7

    :cond_a
    const-string v1, "invalid format specifier"

    invoke-static {v1, v0, v2, v10}, Lcom/google/android/gms/internal/meet_coactivities/zzmi;->zzc(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/internal/meet_coactivities/zzmi;

    move-result-object v0

    throw v0

    :cond_b
    const/16 v7, 0x74

    const/16 v9, 0xa0

    const-string v11, "invalid format specification"

    if-eq v8, v7, :cond_10

    const/16 v7, 0x54

    if-ne v8, v7, :cond_c

    goto :goto_6

    :cond_c
    const/16 v7, 0x68

    if-eq v8, v7, :cond_e

    const/16 v7, 0x48

    if-ne v8, v7, :cond_d

    goto :goto_5

    :cond_d
    invoke-static {v11, v0, v2, v10}, Lcom/google/android/gms/internal/meet_coactivities/zzmi;->zzc(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/internal/meet_coactivities/zzmi;

    move-result-object v0

    throw v0

    :cond_e
    :goto_5
    invoke-virtual {v6, v9, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzjk;->zzl(IZ)Z

    move-result v7

    if-eqz v7, :cond_f

    new-instance v7, Lcom/google/android/gms/internal/meet_coactivities/zzme;

    invoke-direct {v7, v6, v5, v6}, Lcom/google/android/gms/internal/meet_coactivities/zzme;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzjk;ILcom/google/android/gms/internal/meet_coactivities/zzjk;)V

    move-object v6, v7

    goto :goto_7

    :cond_f
    invoke-static {v11, v0, v2, v10}, Lcom/google/android/gms/internal/meet_coactivities/zzmi;->zzc(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/internal/meet_coactivities/zzmi;

    move-result-object v0

    throw v0

    :cond_10
    :goto_6
    invoke-virtual {v6, v9, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzjk;->zzl(IZ)Z

    move-result v7

    if-eqz v7, :cond_13

    add-int/lit8 v7, v10, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v7, v8, :cond_12

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/google/android/gms/internal/meet_coactivities/zzlz;->zzb(C)Lcom/google/android/gms/internal/meet_coactivities/zzlz;

    move-result-object v8

    if-eqz v8, :cond_11

    invoke-static {v8, v6, v5}, Lcom/google/android/gms/internal/meet_coactivities/zzma;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzlz;Lcom/google/android/gms/internal/meet_coactivities/zzjk;I)Lcom/google/android/gms/internal/meet_coactivities/zzmb;

    move-result-object v6

    move v10, v7

    :goto_7
    invoke-virtual {p0, v2, v10, v6}, Lcom/google/android/gms/internal/meet_coactivities/zzmg;->zzl(IILcom/google/android/gms/internal/meet_coactivities/zzmb;)V

    invoke-static {v0, v10}, Lcom/google/android/gms/internal/meet_coactivities/zzmj;->zzc(Ljava/lang/String;I)I

    move-result v2

    goto/16 :goto_0

    :cond_11
    const-string v1, "illegal date/time conversion"

    invoke-static {v1, v0, v10}, Lcom/google/android/gms/internal/meet_coactivities/zzmi;->zza(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/internal/meet_coactivities/zzmi;

    move-result-object v0

    throw v0

    :cond_12
    const-string v1, "truncated format specifier"

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzmi;->zza(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/internal/meet_coactivities/zzmi;

    move-result-object v0

    throw v0

    :cond_13
    invoke-static {v11, v0, v2, v10}, Lcom/google/android/gms/internal/meet_coactivities/zzmi;->zzc(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/internal/meet_coactivities/zzmi;

    move-result-object v0

    throw v0

    :cond_14
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    :cond_15
    invoke-static {v11, v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzmi;->zzd(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/internal/meet_coactivities/zzmi;

    move-result-object v0

    throw v0

    :cond_16
    invoke-static {v11, v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzmi;->zzd(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/internal/meet_coactivities/zzmi;

    move-result-object v0

    throw v0

    :cond_17
    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzmg;->zzb:I

    add-int/lit8 v2, v0, 0x1

    and-int/2addr v2, v0

    if-nez v2, :cond_19

    iget v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzmg;->zzc:I

    const/16 v4, 0x1f

    if-le v2, v4, :cond_18

    if-ne v0, v3, :cond_19

    :cond_18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzmg;->zza()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_19
    not-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "unreferenced arguments [first missing index=%d]"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzmg;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzkx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzkx;->zzb()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzmi;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzmi;

    move-result-object v0

    throw v0
.end method

.method public final zzk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzmg;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzkx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzkx;->zzb()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzl(IILcom/google/android/gms/internal/meet_coactivities/zzmb;)V
    .locals 3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/meet_coactivities/zzmb;->zzc()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzmg;->zzb:I

    const/4 v1, 0x1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/meet_coactivities/zzmb;->zzc()I

    move-result v2

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzmg;->zzb:I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzmg;->zzc:I

    invoke-virtual {p3}, Lcom/google/android/gms/internal/meet_coactivities/zzmb;->zzc()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzmg;->zzc:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzmg;->zzc(IILcom/google/android/gms/internal/meet_coactivities/zzmb;)V

    return-void
.end method
