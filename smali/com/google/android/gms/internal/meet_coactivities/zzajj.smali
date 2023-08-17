.class final Lcom/google/android/gms/internal/meet_coactivities/zzajj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzajn;


# instance fields
.field public final synthetic zza:Ljava/lang/Object;

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzakh;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajj;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajj;->zza:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/meet_coactivities/zzakf;)V
    .locals 3

    iget-object v0, p1, Lcom/google/android/gms/internal/meet_coactivities/zzakf;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajj;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzv(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajj;->zza:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzxa;->zzc(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzalc;->zzm(Ljava/io/InputStream;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/meet_coactivities/zzakf;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    invoke-interface {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzalc;->zzc()V

    return-void
.end method
