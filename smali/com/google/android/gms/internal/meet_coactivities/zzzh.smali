.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzzh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzzj;

.field public final synthetic zzb:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzzj;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzzj;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzh;->zzb:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzzj;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzh;->zzb:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzzj;->zzh(Landroid/os/IBinder;)V

    return-void
.end method
