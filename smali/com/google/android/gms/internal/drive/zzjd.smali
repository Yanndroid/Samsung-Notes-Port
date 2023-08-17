.class final Lcom/google/android/gms/internal/drive/zzjd;
.super Lcom/google/android/gms/internal/drive/zzjf;
.source "SourceFile"


# instance fields
.field private final limit:I

.field private position:I

.field private final synthetic zznu:Lcom/google/android/gms/internal/drive/zzjc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/drive/zzjc;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzjd;->zznu:Lcom/google/android/gms/internal/drive/zzjc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzjf;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzjd;->position:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzjc;->size()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/drive/zzjd;->limit:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/drive/zzjd;->position:I

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjd;->limit:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final nextByte()B
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/drive/zzjd;->position:I

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjd;->limit:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/drive/zzjd;->position:I

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzjd;->zznu:Lcom/google/android/gms/internal/drive/zzjc;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/drive/zzjc;->zzt(I)B

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
