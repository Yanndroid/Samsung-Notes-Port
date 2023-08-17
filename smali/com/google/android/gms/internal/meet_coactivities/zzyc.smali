.class final Lcom/google/android/gms/internal/meet_coactivities/zzyc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzwt;


# static fields
.field private static final zza:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyc;->zza:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzyb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zzb(B)Z
    .locals 1

    const/16 v0, 0x20

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7e

    if-ge p0, v0, :cond_1

    const/16 v0, 0x25

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)[B
    .locals 7

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    aget-byte v3, p1, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/meet_coactivities/zzyc;->zzb(B)Z

    move-result v3

    if-eqz v3, :cond_3

    sub-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v1

    new-array v2, v2, [B

    if-eqz v1, :cond_0

    invoke-static {p1, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    move v0, v1

    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_2

    aget-byte v3, p1, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/meet_coactivities/zzyc;->zzb(B)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x25

    aput-byte v4, v2, v0

    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v5, v3, 0x4

    sget-object v6, Lcom/google/android/gms/internal/meet_coactivities/zzyc;->zza:[B

    and-int/lit8 v5, v5, 0xf

    aget-byte v5, v6, v5

    aput-byte v5, v2, v4

    add-int/lit8 v4, v0, 0x2

    and-int/lit8 v3, v3, 0xf

    aget-byte v3, v6, v3

    aput-byte v3, v2, v4

    add-int/lit8 v0, v0, 0x3

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v0, 0x1

    aput-byte v3, v2, v0

    move v0, v4

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return-object p1
.end method
