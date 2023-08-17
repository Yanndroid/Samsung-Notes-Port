.class final Lcom/google/android/gms/internal/meet_coactivities/zzaht;
.super Lcom/google/android/gms/internal/meet_coactivities/zzxf;
.source "SourceFile"


# instance fields
.field public final zza:Ljava/net/SocketAddress;

.field public final zzb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/SocketAddress;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzxf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaht;->zza:Ljava/net/SocketAddress;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaht;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/net/URI;Lcom/google/android/gms/internal/meet_coactivities/zzxd;)Lcom/google/android/gms/internal/meet_coactivities/zzxk;
    .locals 0

    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzahs;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzahs;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzaht;)V

    return-object p1
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    const-string v0, "directaddress"

    return-object v0
.end method
