.class final Lcom/google/android/livesharing/zzh;
.super Lcom/google/android/livesharing/zzp;
.source "SourceFile"


# instance fields
.field private zza:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/livesharing/zzp;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/livesharing/zzp;
    .locals 1

    const-string v0, "Null packageName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/livesharing/zzh;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public final zzb()Lcom/google/android/livesharing/LiveSharingExceptionMetadata;
    .locals 3

    iget-object v0, p0, Lcom/google/android/livesharing/zzh;->zza:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/livesharing/zzj;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/livesharing/zzj;-><init>(Ljava/lang/String;Lcom/google/android/livesharing/zzi;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties: packageName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
