.class final Lcom/google/android/gms/internal/meet_coactivities/zzajl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzakh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzY(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzx(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzabx;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzale;->zzg()V

    :cond_0
    return-void
.end method
