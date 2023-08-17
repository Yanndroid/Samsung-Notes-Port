.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzev;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncCallable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzev;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;

    return-void
.end method


# virtual methods
.method public final call()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzev;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzi(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
