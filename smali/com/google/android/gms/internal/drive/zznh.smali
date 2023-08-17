.class abstract Lcom/google/android/gms/internal/drive/zznh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract zzb(I[BII)I
.end method

.method public abstract zzb(Ljava/lang/CharSequence;[BII)I
.end method

.method public final zze([BII)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/drive/zznh;->zzb(I[BII)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public abstract zzg([BII)Ljava/lang/String;
.end method
