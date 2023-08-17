.class public final Lcom/google/android/gms/internal/meet_coactivities/zzus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/meet_coactivities/zztd;

.field public static final zzb:Lcom/google/android/gms/internal/meet_coactivities/zztd;

.field public static final zzc:Lcom/google/android/gms/internal/meet_coactivities/zztd;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "io.grpc.Grpc.TRANSPORT_ATTR_REMOTE_ADDR"

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zztd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zztd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzus;->zza:Lcom/google/android/gms/internal/meet_coactivities/zztd;

    const-string v0, "io.grpc.Grpc.TRANSPORT_ATTR_LOCAL_ADDR"

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zztd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zztd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzus;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zztd;

    const-string v0, "io.grpc.Grpc.TRANSPORT_ATTR_SSL_SESSION"

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zztd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zztd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzus;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zztd;

    return-void
.end method
