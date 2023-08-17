.class public final Lcom/google/android/gms/internal/meet_coactivities/zzaed;
.super Lcom/google/android/gms/internal/meet_coactivities/zzxl;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzxl;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/net/URI;Lcom/google/android/gms/internal/meet_coactivities/zzxd;)Lcom/google/android/gms/internal/meet_coactivities/zzxk;
    .locals 9

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dns"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "targetPath"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "the path component (%s) of the target (%s) must start with \'/\'"

    invoke-static {v1, v2, v0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzaec;

    invoke-virtual {p1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const-class p1, Lcom/google/android/gms/internal/meet_coactivities/zzaed;

    sget-object v6, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zzo:Lcom/google/android/gms/internal/meet_coactivities/zzaky;

    invoke-static {}, Lcom/google/common/base/Stopwatch;->createUnstarted()Lcom/google/common/base/Stopwatch;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzvm;->zza(Ljava/lang/ClassLoader;)Z

    move-result v8

    move-object v2, v0

    move-object v5, p2

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/meet_coactivities/zzaec;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/meet_coactivities/zzxd;Lcom/google/android/gms/internal/meet_coactivities/zzaky;Lcom/google/common/base/Stopwatch;Z)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    const-string v0, "dns"

    return-object v0
.end method

.method public final zzc()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public final zzd()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
