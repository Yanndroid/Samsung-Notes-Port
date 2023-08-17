.class final Lcom/google/android/gms/internal/drive/zzjq;
.super Lcom/google/android/gms/internal/drive/zzjo;
.source "SourceFile"


# instance fields
.field private final buffer:[B

.field private limit:I

.field private pos:I

.field private final zzoc:Z

.field private zzod:I

.field private zzoe:I

.field private zzof:I


# direct methods
.method private constructor <init>([BIIZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/drive/zzjo;-><init>(Lcom/google/android/gms/internal/drive/zzjp;)V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzjq;->zzof:I

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzjq;->buffer:[B

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/android/gms/internal/drive/zzjq;->limit:I

    iput p2, p0, Lcom/google/android/gms/internal/drive/zzjq;->pos:I

    iput p2, p0, Lcom/google/android/gms/internal/drive/zzjq;->zzoe:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/drive/zzjq;->zzoc:Z

    return-void
.end method

.method public synthetic constructor <init>([BIIZLcom/google/android/gms/internal/drive/zzjp;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/drive/zzjq;-><init>([BIIZ)V

    return-void
.end method


# virtual methods
.method public final zzbz()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/drive/zzjq;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjq;->zzoe:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final zzv(I)I
    .locals 3

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzjo;->zzbz()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/gms/internal/drive/zzjq;->zzof:I

    if-gt p1, v0, :cond_1

    iput p1, p0, Lcom/google/android/gms/internal/drive/zzjq;->zzof:I

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjq;->limit:I

    iget v2, p0, Lcom/google/android/gms/internal/drive/zzjq;->zzod:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/drive/zzjq;->limit:I

    iget v2, p0, Lcom/google/android/gms/internal/drive/zzjq;->zzoe:I

    sub-int v2, v1, v2

    if-le v2, p1, :cond_0

    sub-int/2addr v2, p1

    iput v2, p0, Lcom/google/android/gms/internal/drive/zzjq;->zzod:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/drive/zzjq;->limit:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/drive/zzjq;->zzod:I

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdi()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object p1

    throw p1

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->zzdj()Lcom/google/android/gms/internal/drive/zzkq;

    move-result-object p1

    throw p1
.end method
