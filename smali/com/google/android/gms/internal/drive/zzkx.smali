.class public Lcom/google/android/gms/internal/drive/zzkx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zzng:Lcom/google/android/gms/internal/drive/zzjx;


# instance fields
.field private zzth:Lcom/google/android/gms/internal/drive/zzjc;

.field private volatile zzti:Lcom/google/android/gms/internal/drive/zzlq;

.field private volatile zztj:Lcom/google/android/gms/internal/drive/zzjc;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/drive/zzjx;->zzci()Lcom/google/android/gms/internal/drive/zzjx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/drive/zzkx;->zzng:Lcom/google/android/gms/internal/drive/zzjx;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zzh(Lcom/google/android/gms/internal/drive/zzlq;)Lcom/google/android/gms/internal/drive/zzlq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkx;->zzti:Lcom/google/android/gms/internal/drive/zzlq;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkx;->zzti:Lcom/google/android/gms/internal/drive/zzlq;

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzkx;->zzti:Lcom/google/android/gms/internal/drive/zzlq;

    sget-object v0, Lcom/google/android/gms/internal/drive/zzjc;->zznq:Lcom/google/android/gms/internal/drive/zzjc;

    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zzkx;->zztj:Lcom/google/android/gms/internal/drive/zzjc;
    :try_end_1
    .catch Lcom/google/android/gms/internal/drive/zzkq; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzkx;->zzti:Lcom/google/android/gms/internal/drive/zzlq;

    sget-object p1, Lcom/google/android/gms/internal/drive/zzjc;->zznq:Lcom/google/android/gms/internal/drive/zzjc;

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzkx;->zztj:Lcom/google/android/gms/internal/drive/zzjc;

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/drive/zzkx;->zzti:Lcom/google/android/gms/internal/drive/zzlq;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/drive/zzkx;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/drive/zzkx;

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkx;->zzti:Lcom/google/android/gms/internal/drive/zzlq;

    iget-object v1, p1, Lcom/google/android/gms/internal/drive/zzkx;->zzti:Lcom/google/android/gms/internal/drive/zzlq;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzkx;->zzbl()Lcom/google/android/gms/internal/drive/zzjc;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzkx;->zzbl()Lcom/google/android/gms/internal/drive/zzjc;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/drive/zzjc;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/google/android/gms/internal/drive/zzls;->zzda()Lcom/google/android/gms/internal/drive/zzlq;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/drive/zzkx;->zzh(Lcom/google/android/gms/internal/drive/zzlq;)Lcom/google/android/gms/internal/drive/zzlq;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    invoke-interface {v1}, Lcom/google/android/gms/internal/drive/zzls;->zzda()Lcom/google/android/gms/internal/drive/zzlq;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/drive/zzkx;->zzh(Lcom/google/android/gms/internal/drive/zzlq;)Lcom/google/android/gms/internal/drive/zzlq;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzbl()Lcom/google/android/gms/internal/drive/zzjc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkx;->zztj:Lcom/google/android/gms/internal/drive/zzjc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkx;->zztj:Lcom/google/android/gms/internal/drive/zzjc;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkx;->zztj:Lcom/google/android/gms/internal/drive/zzjc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkx;->zztj:Lcom/google/android/gms/internal/drive/zzjc;

    monitor-exit p0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkx;->zzti:Lcom/google/android/gms/internal/drive/zzlq;

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/drive/zzjc;->zznq:Lcom/google/android/gms/internal/drive/zzjc;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zzkx;->zztj:Lcom/google/android/gms/internal/drive/zzjc;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkx;->zzti:Lcom/google/android/gms/internal/drive/zzlq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/drive/zzlq;->zzbl()Lcom/google/android/gms/internal/drive/zzjc;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkx;->zztj:Lcom/google/android/gms/internal/drive/zzjc;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzcx()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkx;->zztj:Lcom/google/android/gms/internal/drive/zzjc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkx;->zztj:Lcom/google/android/gms/internal/drive/zzjc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzjc;->size()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkx;->zzti:Lcom/google/android/gms/internal/drive/zzlq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkx;->zzti:Lcom/google/android/gms/internal/drive/zzlq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/drive/zzlq;->zzcx()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final zzi(Lcom/google/android/gms/internal/drive/zzlq;)Lcom/google/android/gms/internal/drive/zzlq;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkx;->zzti:Lcom/google/android/gms/internal/drive/zzlq;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/drive/zzkx;->zzth:Lcom/google/android/gms/internal/drive/zzjc;

    iput-object v1, p0, Lcom/google/android/gms/internal/drive/zzkx;->zztj:Lcom/google/android/gms/internal/drive/zzjc;

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzkx;->zzti:Lcom/google/android/gms/internal/drive/zzlq;

    return-object v0
.end method
