.class final Lcom/google/android/gms/internal/meet_coactivities/zzdg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

.field private static final zzb:Ljava/time/Duration;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "com/google/android/livesharing/internal/CoActivityStartInfoProvider"

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzih;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzih;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzdg;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzdg;->zzb:Ljava/time/Duration;

    return-void
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/meet_coactivities/zzgr;)Lcom/google/android/gms/internal/meet_coactivities/zzdf;
    .locals 15

    move-object/from16 v1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzco;->zzc:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const-string v7, "com/google/android/livesharing/internal/CoActivityStartInfoProvider"

    const-string v8, "CoActivityStartInfoProvider.java"

    if-ge v6, v4, :cond_1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/meet_coactivities/zzk;

    sget-object v10, Lcom/google/android/gms/internal/meet_coactivities/zzco;->zzb:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v10, v9}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    :try_start_0
    invoke-virtual {v2, v10, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    iget-boolean v7, v11, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_0

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    sget-object v9, Lcom/google/android/gms/internal/meet_coactivities/zzdg;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v9

    const/16 v11, 0x6a

    const-string v12, "isInstalled"

    invoke-interface {v9, v7, v12, v11, v8}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string v8, "App Package %s is not installed"

    invoke-interface {v7, v8, v10}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzp(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_2

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzk;

    new-instance v3, Lcom/google/android/gms/internal/meet_coactivities/zzdf;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzdg;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzk;Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzr;

    move-result-object v1

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzdg;->zzc(Landroid/content/pm/PackageManager;Lcom/google/android/gms/internal/meet_coactivities/zzk;)Z

    move-result v0

    xor-int/2addr v0, v6

    invoke-direct {v3, v1, v0, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzdf;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzr;ZLcom/google/android/gms/internal/meet_coactivities/zzde;)V

    return-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    move v10, v5

    :goto_2
    if-ge v10, v9, :cond_8

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/google/android/gms/internal/meet_coactivities/zzk;

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzco;->zzb:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, v11}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzgs;

    move-object/from16 v13, p2

    check-cast v13, Lcom/google/android/gms/internal/meet_coactivities/zzgy;

    move-object v14, p0

    invoke-direct {v0, v13, p0, v12}, Lcom/google/android/gms/internal/meet_coactivities/zzgs;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzgy;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    :try_start_1
    sget-object v13, Lcom/google/android/gms/internal/meet_coactivities/zzdg;->zzb:Ljava/time/Duration;

    invoke-virtual {v13}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    sget-object v13, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v13}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/livesharing/LiveSharingMeetingInfo;

    invoke-virtual {v0}, Lcom/google/android/livesharing/LiveSharingMeetingInfo;->meetingStatus()Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    move-result-object v0

    sget-object v4, Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;->CONNECTED:Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    invoke-virtual {v0, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;->CONNECTED_WITH_LIVE_SHARING:Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    invoke-virtual {v0, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_5

    :cond_3
    move v0, v6

    goto :goto_3

    :catch_1
    move-exception v0

    instance-of v4, v0, Ljava/lang/InterruptedException;

    if-eqz v4, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    sget-object v4, Lcom/google/android/gms/internal/meet_coactivities/zzdg;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const/16 v4, 0x9a

    const-string v5, "isMeetingOngoing"

    invoke-interface {v0, v7, v5, v4, v8}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string v4, "Fail to detect ongoing calls in app: %s."

    invoke-interface {v0, v4, v12}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzp(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    const/4 v0, 0x0

    :goto_3
    add-int/lit8 v10, v10, 0x1

    if-eqz v0, :cond_7

    invoke-static {v2, v11}, Lcom/google/android/gms/internal/meet_coactivities/zzdg;->zzc(Landroid/content/pm/PackageManager;Lcom/google/android/gms/internal/meet_coactivities/zzk;)Z

    move-result v0

    const-string v2, "getCoActivityStartInfo"

    if-eqz v0, :cond_6

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzdg;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    const/16 v3, 0x3e

    invoke-interface {v0, v7, v2, v3, v8}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string v2, "Package: %s hosting the ongoing meeting is updated."

    invoke-interface {v0, v2, v12}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzp(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzdf;

    invoke-static {v11, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzdg;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzk;Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzr;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzdf;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzr;ZLcom/google/android/gms/internal/meet_coactivities/zzde;)V

    return-object v0

    :cond_6
    const/4 v3, 0x0

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzdg;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    const/16 v4, 0x45

    invoke-interface {v0, v7, v2, v4, v8}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string v2, "Package: %s hosting the ongoing meeting is outdated. Cannot connect."

    invoke-interface {v0, v2, v12}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzp(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzdf;

    invoke-static {v11, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzdg;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzk;Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzr;

    move-result-object v1

    invoke-direct {v0, v1, v6, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzdf;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzr;ZLcom/google/android/gms/internal/meet_coactivities/zzde;)V

    return-object v0

    :cond_7
    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x0

    :cond_9
    if-ge v4, v0, :cond_a

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/meet_coactivities/zzk;

    invoke-static {v2, v5}, Lcom/google/android/gms/internal/meet_coactivities/zzdg;->zzc(Landroid/content/pm/PackageManager;Lcom/google/android/gms/internal/meet_coactivities/zzk;)Z

    move-result v6

    add-int/lit8 v4, v4, 0x1

    if-eqz v6, :cond_9

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzdf;

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzdg;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzk;Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzr;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v0, v1, v6, v5}, Lcom/google/android/gms/internal/meet_coactivities/zzdf;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzr;ZLcom/google/android/gms/internal/meet_coactivities/zzde;)V

    return-object v0

    :cond_a
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzdf;

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzk;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzk;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzdg;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzk;Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzr;

    move-result-object v1

    invoke-direct {v0, v1, v6, v5}, Lcom/google/android/gms/internal/meet_coactivities/zzdf;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzr;ZLcom/google/android/gms/internal/meet_coactivities/zzde;)V

    return-object v0
.end method

.method private static zzb(Lcom/google/android/gms/internal/meet_coactivities/zzk;Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzr;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzr;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzq;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzq;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzk;)Lcom/google/android/gms/internal/meet_coactivities/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzj()Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/meet_coactivities/zzr;

    return-object p0
.end method

.method private static zzc(Landroid/content/pm/PackageManager;Lcom/google/android/gms/internal/meet_coactivities/zzk;)Z
    .locals 9

    const-string v0, "isVersionUpdated"

    const-string v1, "com/google/android/livesharing/internal/CoActivityStartInfoProvider"

    const-string v2, "CoActivityStartInfoProvider.java"

    sget-object v3, Lcom/google/android/gms/internal/meet_coactivities/zzco;->zzb:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v5

    goto :goto_0

    :cond_0
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v5, p0

    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/meet_coactivities/zzdg;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v7

    const/16 v8, 0x7b

    invoke-interface {v7, v1, v0, v8, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string v8, "%s long version code is: %s"

    invoke-interface {v7, v8, v3, v5, v6}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzr(Ljava/lang/String;Ljava/lang/Object;J)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v7, Lcom/google/android/gms/internal/meet_coactivities/zzco;->zza:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v7, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long p1, v5, v7

    if-gez p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p0

    const/16 p1, 0x82

    invoke-interface {p0, v1, v0, p1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string p1, "App Package %s is too old to support live sharing"

    :goto_1
    invoke-interface {p0, p1, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzp(Ljava/lang/String;Ljava/lang/Object;)V

    return v4

    :cond_1
    const/4 p0, 0x1

    return p0

    :catch_0
    sget-object p0, Lcom/google/android/gms/internal/meet_coactivities/zzdg;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p0

    const/16 p1, 0x7d

    invoke-interface {p0, v1, v0, p1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string p1, "App Package %s is not installed"

    goto :goto_1
.end method
