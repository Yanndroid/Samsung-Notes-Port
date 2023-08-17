.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzaak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzaam;

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzyd;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzaam;Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaak;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaam;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaak;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaak;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaam;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaak;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzaam;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    return-void
.end method
