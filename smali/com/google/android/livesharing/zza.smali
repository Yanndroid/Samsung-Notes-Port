.class final Lcom/google/android/livesharing/zza;
.super Lcom/google/android/livesharing/CoDoingState$Builder;
.source "SourceFile"


# instance fields
.field private zza:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/livesharing/CoDoingState$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/livesharing/CoDoingState;
    .locals 3

    iget-object v0, p0, Lcom/google/android/livesharing/zza;->zza:[B

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/livesharing/zzc;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/livesharing/zzc;-><init>([BLcom/google/android/livesharing/zzb;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties: state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setState([B)Lcom/google/android/livesharing/CoDoingState$Builder;
    .locals 1

    const-string v0, "Null state"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/livesharing/zza;->zza:[B

    return-object p0
.end method
