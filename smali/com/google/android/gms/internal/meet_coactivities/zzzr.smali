.class final Lcom/google/android/gms/internal/meet_coactivities/zzzr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Ljava/io/InputStream;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final zzb:[B
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final zzc:I

.field public final zzd:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[BIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzr;->zza:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzr;->zzb:[B

    iput p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzr;->zzc:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzr;->zzd:Z

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzr;->zzc:I

    iget-boolean v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzr;->zzd:Z

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    const-string v1, "]"

    goto :goto_0

    :cond_0
    const-string v1, "(last)]"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TransactionData["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "b array"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
