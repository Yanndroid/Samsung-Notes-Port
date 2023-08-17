.class public final Lcom/google/android/gms/internal/meet_coactivities/zzuu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Ljava/net/SocketAddress;

.field private zzb:Ljava/net/InetSocketAddress;

.field private zzc:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzd:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzut;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzuu;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzuu;->zzd:Ljava/lang/String;

    return-object p0
.end method

.method public final zzb(Ljava/net/SocketAddress;)Lcom/google/android/gms/internal/meet_coactivities/zzuu;
    .locals 1

    const-string v0, "proxyAddress"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/SocketAddress;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzuu;->zza:Ljava/net/SocketAddress;

    return-object p0
.end method

.method public final zzc(Ljava/net/InetSocketAddress;)Lcom/google/android/gms/internal/meet_coactivities/zzuu;
    .locals 1

    const-string v0, "targetAddress"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzuu;->zzb:Ljava/net/InetSocketAddress;

    return-object p0
.end method

.method public final zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzuu;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzuu;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/meet_coactivities/zzuw;
    .locals 7

    new-instance v6, Lcom/google/android/gms/internal/meet_coactivities/zzuw;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzuu;->zza:Ljava/net/SocketAddress;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzuu;->zzb:Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzuu;->zzc:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzuu;->zzd:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/meet_coactivities/zzuw;-><init>(Ljava/net/SocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/meet_coactivities/zzuv;)V

    return-object v6
.end method
