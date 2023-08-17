.class final Lcom/google/android/gms/internal/meet_coactivities/zzlg;
.super Lcom/google/android/gms/internal/meet_coactivities/zzll;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/meet_coactivities/zzlg;


# instance fields
.field private final zzb:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzlg;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzll;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzll;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzlg;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzll;)V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzlg;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzlg;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzll;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzll;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzlg;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static final zzb()Lcom/google/android/gms/internal/meet_coactivities/zzlg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzlg;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzlg;

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/meet_coactivities/zzjt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzlg;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzll;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzll;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzjt;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/meet_coactivities/zzly;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzlg;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzll;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzll;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzly;

    move-result-object v0

    return-object v0
.end method

.method public final zzd(Ljava/lang/String;Ljava/util/logging/Level;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzlg;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzll;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzll;->zzd(Ljava/lang/String;Ljava/util/logging/Level;Z)Z

    const/4 p1, 0x0

    return p1
.end method
