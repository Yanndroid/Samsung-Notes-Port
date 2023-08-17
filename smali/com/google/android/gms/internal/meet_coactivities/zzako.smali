.class final Lcom/google/android/gms/internal/meet_coactivities/zzako;
.super Lcom/google/android/gms/internal/meet_coactivities/zzakm;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;Lcom/google/android/gms/internal/meet_coactivities/zzakn;)V
    .locals 0

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzakm;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzakl;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzako;->zza:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/meet_coactivities/zzakr;I)V
    .locals 1

    iget-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzako;->zza:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/meet_coactivities/zzakr;II)Z
    .locals 1

    iget-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzako;->zza:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 p3, 0x0

    const/4 v0, -0x1

    invoke-virtual {p2, p1, p3, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result p1

    return p1
.end method
