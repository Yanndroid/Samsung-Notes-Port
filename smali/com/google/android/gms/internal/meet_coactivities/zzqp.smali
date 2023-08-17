.class abstract Lcom/google/android/gms/internal/meet_coactivities/zzqp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/meet_coactivities/zzqp;

.field private static final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzqp;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzql;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzql;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzqk;)V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzqp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzqp;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzqn;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzqn;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzqm;)V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzqp;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzqp;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzqo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzd()Lcom/google/android/gms/internal/meet_coactivities/zzqp;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzqp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzqp;

    return-object v0
.end method

.method public static zze()Lcom/google/android/gms/internal/meet_coactivities/zzqp;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzqp;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzqp;

    return-object v0
.end method


# virtual methods
.method public abstract zza(Ljava/lang/Object;J)Ljava/util/List;
.end method

.method public abstract zzb(Ljava/lang/Object;J)V
.end method

.method public abstract zzc(Ljava/lang/Object;Ljava/lang/Object;J)V
.end method
