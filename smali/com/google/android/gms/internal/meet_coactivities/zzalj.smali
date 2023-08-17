.class final Lcom/google/android/gms/internal/meet_coactivities/zzalj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzwx;


# static fields
.field private static final zza:Ljava/lang/ThreadLocal;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzrj;

.field private final zzc:Lcom/google/android/gms/internal/meet_coactivities/zzrc;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzalj;->zza:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzrc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalj;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzrc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzrc;->zzE()Lcom/google/android/gms/internal/meet_coactivities/zzrj;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalj;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzrj;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzali;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalj;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzrj;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzali;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzrc;Lcom/google/android/gms/internal/meet_coactivities/zzrj;)V

    return-object v0
.end method

.method public final bridge synthetic zzb(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 7

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez v0, :cond_5

    const/high16 v3, 0x400000

    if-gt v0, v3, :cond_5

    sget-object v3, Lcom/google/android/gms/internal/meet_coactivities/zzalj;->zza:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/Reference;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    if-eqz v4, :cond_0

    array-length v5, v4

    if-ge v5, v0, :cond_1

    :cond_0
    new-array v4, v0, [B

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    move v3, v0

    :goto_0
    if-lez v3, :cond_3

    sub-int v5, v0, v3

    invoke-virtual {p1, v4, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    goto :goto_1

    :cond_2
    sub-int/2addr v3, v5

    goto :goto_0

    :cond_3
    :goto_1
    if-nez v3, :cond_4

    invoke-static {v4, v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzot;->zzJ([BII)Lcom/google/android/gms/internal/meet_coactivities/zzot;

    move-result-object v0

    goto :goto_2

    :cond_4
    sub-int p1, v0, v3

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size inaccurate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " != "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    if-nez v0, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalj;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzrc;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_3

    :cond_6
    move-object v0, v2

    :goto_2
    if-nez v0, :cond_7

    const/16 v0, 0x1000

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzot;->zzI(Ljava/io/InputStream;I)Lcom/google/android/gms/internal/meet_coactivities/zzot;

    move-result-object v0

    :cond_7
    const p1, 0x7fffffff

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzot;->zzG(I)I

    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalj;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzrj;

    sget-object v3, Lcom/google/android/gms/internal/meet_coactivities/zzalk;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzpg;

    invoke-interface {p1, v0, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzrj;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzot;Lcom/google/android/gms/internal/meet_coactivities/zzpg;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Lcom/google/android/gms/internal/meet_coactivities/zzqe; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzot;->zzz(I)V
    :try_end_2
    .catch Lcom/google/android/gms/internal/meet_coactivities/zzqe; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    return-object p1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzqe;->zzh(Lcom/google/android/gms/internal/meet_coactivities/zzrc;)Lcom/google/android/gms/internal/meet_coactivities/zzqe;

    throw v0
    :try_end_3
    .catch Lcom/google/android/gms/internal/meet_coactivities/zzqe; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzo:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    const-string v1, "Invalid protobuf byte sequence"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zze(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzyf;

    invoke-direct {v0, p1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzyf;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V

    throw v0

    :catch_2
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
