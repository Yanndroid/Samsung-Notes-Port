.class final Lcom/google/android/gms/internal/meet_coactivities/zzakd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzake;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzake;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakd;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzake;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzakd;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzake;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzY(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzx(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzabx;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzale;->zzg()V

    :cond_0
    return-void
.end method
