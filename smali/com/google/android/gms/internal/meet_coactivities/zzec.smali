.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# instance fields
.field public final synthetic zza:Ljava/lang/String;

.field public final synthetic zzb:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzec;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzec;->zzb:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzec;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzec;->zzb:[Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzed;->zzf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateVoidFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
