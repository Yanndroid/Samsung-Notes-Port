.class public abstract Lcom/google/android/gms/internal/meet_coactivities/zznu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzrc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/meet_coactivities/zznu<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/meet_coactivities/zznt<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/meet_coactivities/zzrc;"
    }
.end annotation


# instance fields
.field public zza:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zznu;->zza:I

    return-void
.end method


# virtual methods
.method public zzr(Lcom/google/android/gms/internal/meet_coactivities/zzrp;)I
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzs()Lcom/google/android/gms/internal/meet_coactivities/zzon;
    .locals 5

    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzrc;->zzv()I

    move-result v0

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzon;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzon;

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzG([B)Lcom/google/android/gms/internal/meet_coactivities/zzoy;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzrc;->zzN(Lcom/google/android/gms/internal/meet_coactivities/zzoy;)V

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzoi;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzoy;[B)Lcom/google/android/gms/internal/meet_coactivities/zzon;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Serializing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to a ByteString threw an IOException (should never happen)."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final zzt()[B
    .locals 5

    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzrc;->zzv()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzG([B)Lcom/google/android/gms/internal/meet_coactivities/zzoy;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzrc;->zzN(Lcom/google/android/gms/internal/meet_coactivities/zzoy;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzI()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Serializing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to a byte array threw an IOException (should never happen)."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
