.class final Lcom/google/android/gms/internal/meet_coactivities/zzabi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/meet_coactivities/zzabh;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzalg;

.field private final zzc:Lcom/google/android/gms/internal/meet_coactivities/zzafx;

.field private final zzd:Lcom/google/android/gms/internal/meet_coactivities/zzafx;

.field private final zze:Lcom/google/android/gms/internal/meet_coactivities/zzafx;

.field private volatile zzf:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzabg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzabg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzabi;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabh;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzalg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzafy;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzafx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabi;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzafx;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzafy;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzafx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabi;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzafx;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzafy;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzafx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabi;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzafx;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabi;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzalg;

    return-void
.end method


# virtual methods
.method public final zza(Z)V
    .locals 2

    const-wide/16 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabi;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzafx;

    :goto_0
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzafx;->zza(J)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabi;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzafx;

    goto :goto_0
.end method

.method public final zzb()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabi;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzafx;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzafx;->zza(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabi;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzalg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzalg;->zza()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabi;->zzf:J

    return-void
.end method
