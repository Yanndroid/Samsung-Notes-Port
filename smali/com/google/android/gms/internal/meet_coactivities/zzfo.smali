.class public final Lcom/google/android/gms/internal/meet_coactivities/zzfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/livesharing/LiveSharingClient;


# static fields
.field public static final zza:Lcom/google/android/livesharing/LiveSharingMeetingInfo;

.field public static final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzon;

.field public static final synthetic zzc:I

.field private static final zzd:Lcom/google/android/gms/internal/meet_coactivities/zzih;


# instance fields
.field private zze:Ljava/util/Optional;

.field private zzf:Ljava/util/Optional;

.field private final zzg:Lcom/google/android/gms/internal/meet_coactivities/zzfn;

.field private final zzh:Lcom/google/android/gms/internal/meet_coactivities/zzfs;

.field private final zzi:Ljava/util/function/Function;

.field private final zzj:Ljava/util/Optional;

.field private final zzk:Ljava/util/concurrent/Executor;

.field private final zzl:Lcom/google/android/gms/internal/meet_coactivities/zzgr;

.field private zzm:Ljava/util/Optional;

.field private zzn:Ljava/util/Optional;

.field private zzo:Ljava/util/Optional;

.field private zzp:Ljava/util/Optional;

.field private zzq:Ljava/util/Optional;

.field private zzr:Ljava/util/Optional;

.field private zzs:Ljava/util/Optional;

.field private zzt:Lcom/google/android/livesharing/LiveSharingMeetingInfo;

.field private zzu:Lcom/google/android/gms/internal/meet_coactivities/zzdd;

.field private final zzv:Ljava/util/Optional;

.field private final zzw:Lcom/google/android/gms/internal/meet_coactivities/zzha;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/google/android/livesharing/LiveSharingMeetingInfo;->builder()Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;->setMeetingCode(Ljava/lang/String;)Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;

    invoke-virtual {v0, v1}, Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;->setMeetingUrl(Ljava/lang/String;)Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;

    sget-object v1, Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;->NOT_CONNECTED:Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    invoke-virtual {v0, v1}, Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;->setMeetingStatus(Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;)Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;

    invoke-virtual {v0}, Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;->build()Lcom/google/android/livesharing/LiveSharingMeetingInfo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zza:Lcom/google/android/livesharing/LiveSharingMeetingInfo;

    const-string v0, "{}"

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzon;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzon;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzon;

    const-string v0, "com/google/android/livesharing/internal/LiveSharingClientImpl"

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzih;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzih;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    return-void
.end method

.method public constructor <init>(Ljava/util/Optional;Ljava/util/Optional;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zze:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzf:Ljava/util/Optional;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzfn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzfn;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzfo;Lcom/google/android/gms/internal/meet_coactivities/zzfm;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzfn;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzm:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzn:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzo:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzp:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzq:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzr:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzs:Ljava/util/Optional;

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zza:Lcom/google/android/livesharing/LiveSharingMeetingInfo;

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzt:Lcom/google/android/livesharing/LiveSharingMeetingInfo;

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzdd;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzdd;

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzu:Lcom/google/android/gms/internal/meet_coactivities/zzdd;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzv:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzj:Ljava/util/Optional;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzgy;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzgr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzl:Lcom/google/android/gms/internal/meet_coactivities/zzgr;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzha;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzha;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzw:Lcom/google/android/gms/internal/meet_coactivities/zzha;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzcw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzcw;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzgq;->zza(Ljava/util/Optional;)Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzfr;->zze(Lcom/google/common/util/concurrent/ListeningExecutorService;)Lcom/google/android/gms/internal/meet_coactivities/zzfr;

    invoke-static {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzgq;->zzb(Ljava/util/Optional;)Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzfr;->zzc(Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;)Lcom/google/android/gms/internal/meet_coactivities/zzfr;

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzgq;->zza(Ljava/util/Optional;)Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzfr;->zzb(Lcom/google/common/util/concurrent/ListeningExecutorService;)Lcom/google/android/gms/internal/meet_coactivities/zzfr;

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzgq;->zza(Ljava/util/Optional;)Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzfr;->zza(Lcom/google/common/util/concurrent/ListeningExecutorService;)Lcom/google/android/gms/internal/meet_coactivities/zzfr;

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzgq;->zza(Ljava/util/Optional;)Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzfr;->zzd(Lcom/google/common/util/concurrent/ListeningExecutorService;)Lcom/google/android/gms/internal/meet_coactivities/zzfr;

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzgq;->zza(Ljava/util/Optional;)Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzfr;->zzf(Lcom/google/common/util/concurrent/ListeningExecutorService;)Lcom/google/android/gms/internal/meet_coactivities/zzfr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzfr;->zzg()Lcom/google/android/gms/internal/meet_coactivities/zzfs;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zzfs;

    new-instance p2, Lcom/google/android/gms/internal/meet_coactivities/zzeq;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzeq;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzi:Ljava/util/function/Function;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzfs;->zzd()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/util/concurrent/MoreExecutors;->newSequentialExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzk:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static bridge synthetic zzA(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzk:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static synthetic zzB(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzR()V

    return-void
.end method

.method public static synthetic zzC(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzS()V

    return-void
.end method

.method public static synthetic zzD(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzT()V

    return-void
.end method

.method public static bridge synthetic zzE(Lcom/google/android/gms/internal/meet_coactivities/zzfo;Lcom/google/android/livesharing/LiveSharingMeetingInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzt:Lcom/google/android/livesharing/LiveSharingMeetingInfo;

    return-void
.end method

.method public static bridge synthetic zzF(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzR()V

    return-void
.end method

.method public static bridge synthetic zzG(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzS()V

    return-void
.end method

.method public static bridge synthetic zzH(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzT()V

    return-void
.end method

.method public static bridge synthetic zzJ(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzU()Z

    move-result p0

    return p0
.end method

.method public static zzK([B)[Ljava/lang/Byte;
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Byte;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    aget-byte v4, p0, v2

    add-int/lit8 v5, v3, 0x1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private final zzM()Lcom/google/android/gms/internal/meet_coactivities/zzgj;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzj:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzj:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzgj;

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzgj;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzm:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/meet_coactivities/zzfq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzfq;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzbo;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzm:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/meet_coactivities/zzfq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzfq;->zzd()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzu:Lcom/google/android/gms/internal/meet_coactivities/zzdd;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzms;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzmt;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zzfs;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/meet_coactivities/zzgj;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzbo;Ljava/lang/String;Lcom/google/android/gms/internal/meet_coactivities/zzdd;Lcom/google/android/gms/internal/meet_coactivities/zzmt;Lcom/google/android/gms/internal/meet_coactivities/zzfs;)V

    return-object v0
.end method

.method private final zzN()Ljava/lang/Void;
    .locals 2

    const-string v0, "endCoDoing"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzP(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zze:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const-string v1, "Expected co-doing activity to exist before calling endCoDoing."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzfe;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzfe;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)V

    const-string v1, "Unexpected error when trying to end co-doing."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzed;->zzd(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private final zzO()Ljava/lang/Void;
    .locals 2

    const-string v0, "endCoWatching"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzP(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzf:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const-string v1, "Expected co-watching activity to exist before calling endCoWatching."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzez;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzez;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)V

    const-string v1, "Unexpected error when trying to end co-watching."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzed;->zzd(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private final zzP(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzU()Z

    move-result v0

    const-string v1, "Expected meeting to be connected before calling %s."

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzQ(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzo:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const-string v1, "Expected meeting to be connected before calling %s."

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzR()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zze:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzdm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzgl;->zza()V

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zze:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzq:Ljava/util/Optional;

    return-void
.end method

.method private final zzS()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzf:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzeg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzft;->zza()V

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzf:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzp:Ljava/util/Optional;

    return-void
.end method

.method private final zzT()V
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    const-string v1, "com/google/android/livesharing/internal/LiveSharingClientImpl"

    const-string v2, "resetDisconnectState"

    const/16 v3, 0x2c9

    const-string v4, "LiveSharingClientImpl.java"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string v1, "Resetting client to disconnected state."

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzo(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzm:Ljava/util/Optional;

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zza:Lcom/google/android/livesharing/LiveSharingMeetingInfo;

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzt:Lcom/google/android/livesharing/LiveSharingMeetingInfo;

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzdd;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzdd;

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzu:Lcom/google/android/gms/internal/meet_coactivities/zzdd;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzo:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzp:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzq:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzr:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzs:Ljava/util/Optional;

    return-void
.end method

.method private final zzU()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzt:Lcom/google/android/livesharing/LiveSharingMeetingInfo;

    invoke-virtual {v0}, Lcom/google/android/livesharing/LiveSharingMeetingInfo;->meetingStatus()Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    move-result-object v0

    sget-object v1, Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;->CONNECTED:Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzm:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static zzg(Lcom/google/android/gms/internal/meet_coactivities/zzo;)Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzo;->zzd()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzer;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzer;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzfb;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfb;

    invoke-static {v0}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic zzh()Lcom/google/android/gms/internal/meet_coactivities/zzih;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    return-object v0
.end method

.method public static synthetic zzi(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzem;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzem;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzk:Ljava/util/concurrent/Executor;

    invoke-static {v0, p0}, Lcom/google/common/util/concurrent/Futures;->submitAsync(Lcom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic zzj(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzo:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const-string v1, "Unexpected call to disconnectMeeting before calling connectMeeting"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzo:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzen;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzen;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzk:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p0}, Lcom/google/common/util/concurrent/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic zzw(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zze:Ljava/util/Optional;

    return-object p0
.end method

.method public static bridge synthetic zzx(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzf:Ljava/util/Optional;

    return-object p0
.end method

.method public static bridge synthetic zzy(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzm:Ljava/util/Optional;

    return-object p0
.end method

.method public static bridge synthetic zzz(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzn:Ljava/util/Optional;

    return-object p0
.end method


# virtual methods
.method public final beginCoDoing(Lcom/google/android/livesharing/CoDoingSessionDelegate;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/livesharing/CoDoingSessionDelegate;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lcom/google/android/livesharing/CoDoingSession;",
            ">;"
        }
    .end annotation

    const-string v0, "Expected \'delegate\' to be provided."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzfc;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzfc;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzfo;Lcom/google/android/livesharing/CoDoingSessionDelegate;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzk:Ljava/util/concurrent/Executor;

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/Futures;->submitAsync(Lcom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final beginCoWatching(Lcom/google/android/livesharing/CoWatchingSessionDelegate;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/livesharing/CoWatchingSessionDelegate;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lcom/google/android/livesharing/CoWatchingSession;",
            ">;"
        }
    .end annotation

    const-string v0, "Expected \'delegate\' to be provided."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzex;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzex;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzfo;Lcom/google/android/livesharing/CoWatchingSessionDelegate;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzk:Ljava/util/concurrent/Executor;

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/Futures;->submitAsync(Lcom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final connectMeeting(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/livesharing/MeetingDisconnectHandler;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/livesharing/MeetingDisconnectHandler;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lcom/google/android/livesharing/LiveSharingMeetingInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "Expected \'appContext\' to be provided."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Expected \'liveSharingApplicationName\' to be provided."

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Expected \'liveSharingApplicationName\' to be a non-empty string."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    const-string v0, "Expected \'meetingDisconnectHandler\' to be provided."

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzey;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzey;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzfo;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/livesharing/MeetingDisconnectHandler;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzk:Ljava/util/concurrent/Executor;

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/Futures;->submitAsync(Lcom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final disconnectMeeting()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzes;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzes;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzk:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->submitAsync(Lcom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final endCoDoing()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzfd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzfd;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzk:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->submitAsync(Lcom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final endCoWatching()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzel;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzel;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzk:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->submitAsync(Lcom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final queryMeeting(Landroid/content/Context;Ljava/util/Optional;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Optional<",
            "Landroid/os/Handler;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lcom/google/android/livesharing/LiveSharingMeetingInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "Expected \'appContext\' to be provided."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Expected \'appContext#getApplicationContext()\' to resolve to a non-null value."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Expected \'handler\' to be non-null, even if Optional#empty()."

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzl:Lcom/google/android/gms/internal/meet_coactivities/zzgr;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzgu;

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzgy;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzgu;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzgy;Landroid/content/Context;Ljava/util/Optional;)V

    invoke-static {v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    const-string p2, "Unexpected error when trying to query meeting."

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzed;->zzb(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final setParticipantMetadata([Ljava/lang/Byte;Lcom/google/android/livesharing/ParticipantMetadataDelegate;)V
    .locals 6

    array-length v0, p1

    int-to-long v1, v0

    const-wide/16 v3, 0xc8

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v5, "Participant metadata size cannot exceed %s."

    invoke-static {v1, v5, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    if-nez v0, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzon;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzon;->zzr()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzK([B)[Ljava/lang/Byte;

    move-result-object p1

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzfg;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzfg;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzfo;[Ljava/lang/Byte;Lcom/google/android/livesharing/ParticipantMetadataDelegate;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzk:Ljava/util/concurrent/Executor;

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/Futures;->submit(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "Failed to setParticipantMetadata or setParticipantMetadataDelegateOptional in MeetIpcManager."

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzed;->zza(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public final synthetic zzI([Ljava/lang/Byte;Lcom/google/android/livesharing/ParticipantMetadataDelegate;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzm:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzfq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzfq;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzbo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzbo;->zzi([Ljava/lang/Byte;)V

    invoke-static {p2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzn:Ljava/util/Optional;

    return-void
.end method

.method public final synthetic zzL(Lcom/google/android/livesharing/CoDoingSessionDelegate;)Lcom/google/android/gms/internal/meet_coactivities/zzdm;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzM()Lcom/google/android/gms/internal/meet_coactivities/zzgj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzgj;->zzh(Lcom/google/android/livesharing/CoDoingSessionDelegate;)Lcom/google/android/gms/internal/meet_coactivities/zzdm;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zze:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzdm;

    return-object p1
.end method

.method public final synthetic zza()Lcom/google/android/gms/internal/meet_coactivities/zzbn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzfn;

    return-object v0
.end method

.method public final synthetic zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/meet_coactivities/zzbo;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzei;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzei;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)V

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzbl;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzbk;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zzfs;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzfs;->zzc()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzbk;->zza(Lcom/google/common/util/concurrent/ListeningExecutorService;)Lcom/google/android/gms/internal/meet_coactivities/zzbk;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zzfs;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzfs;->zze()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzbk;->zzb(Lcom/google/common/util/concurrent/ListeningExecutorService;)Lcom/google/android/gms/internal/meet_coactivities/zzbk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzbk;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzbl;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzbo;->zze(Landroid/content/Context;Ljava/util/function/Supplier;Lcom/google/android/gms/internal/meet_coactivities/zzbl;)Lcom/google/android/gms/internal/meet_coactivities/zzbo;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzc(Lcom/google/android/livesharing/CoDoingSessionDelegate;Lcom/google/android/livesharing/LiveSharingMeetingInfo;)Lcom/google/android/livesharing/CoDoingSession;
    .locals 1

    const-string p2, "beginCoDoing"

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzP(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zze:Ljava/util/Optional;

    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    const-string v0, "Unexpected call to beginCoDoing during an existing co-doing activity."

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    new-instance p2, Lcom/google/android/gms/internal/meet_coactivities/zzej;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzej;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzfo;Lcom/google/android/livesharing/CoDoingSessionDelegate;)V

    const-string p1, "Unexpected error when trying to begin co-doing."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzed;->zzc(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/livesharing/CoDoingSession;

    return-object p1
.end method

.method public final synthetic zzd(Lcom/google/android/livesharing/CoWatchingSessionDelegate;Lcom/google/android/livesharing/LiveSharingMeetingInfo;)Lcom/google/android/livesharing/CoWatchingSession;
    .locals 1

    const-string p2, "beginCoWatching"

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzP(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzf:Ljava/util/Optional;

    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    const-string v0, "Unexpected call to beginCoWatching during an existing co-watching activity."

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    new-instance p2, Lcom/google/android/gms/internal/meet_coactivities/zzfh;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzfh;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzfo;Lcom/google/android/livesharing/CoWatchingSessionDelegate;)V

    const-string p1, "Unexpected error when trying to begin co-watching."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzed;->zzc(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/livesharing/CoWatchingSession;

    return-object p1
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/meet_coactivities/zzm;)Lcom/google/android/livesharing/LiveSharingMeetingInfo;
    .locals 5

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzht;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzm;)Lcom/google/android/livesharing/LiveSharingMeetingInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzt:Lcom/google/android/livesharing/LiveSharingMeetingInfo;

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    const-string v1, "com/google/android/livesharing/internal/LiveSharingClientImpl"

    const-string v2, "lambda$handleConnectMeeting$5"

    const/16 v3, 0x10a

    const-string v4, "LiveSharingClientImpl.java"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzm;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzad;

    move-result-object p1

    const-string v1, "Received meetingInfo with status : %s"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzp(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzm:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzfq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzfq;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzbo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzbo;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzg;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzdd;->zzf(Lcom/google/android/gms/internal/meet_coactivities/zzg;)Lcom/google/android/gms/internal/meet_coactivities/zzdd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzu:Lcom/google/android/gms/internal/meet_coactivities/zzdd;

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzt:Lcom/google/android/livesharing/LiveSharingMeetingInfo;

    return-object p1
.end method

.method public final synthetic zzf(Lcom/google/android/livesharing/CoWatchingSessionDelegate;)Lcom/google/android/gms/internal/meet_coactivities/zzeg;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzM()Lcom/google/android/gms/internal/meet_coactivities/zzgj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzgj;->zzb(Lcom/google/android/livesharing/CoWatchingSessionDelegate;)Lcom/google/android/gms/internal/meet_coactivities/zzeg;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzf:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzeg;

    return-object p1
.end method

.method public final synthetic zzk(Lcom/google/android/livesharing/CoDoingSessionDelegate;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzs:Ljava/util/Optional;

    const-string v0, "beginCoDoing"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzQ(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzo:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzfa;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzfa;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzfo;Lcom/google/android/livesharing/CoDoingSessionDelegate;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzk:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzq:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p1
.end method

.method public final synthetic zzl(Lcom/google/android/livesharing/CoWatchingSessionDelegate;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzr:Ljava/util/Optional;

    const-string v0, "beginCoWatching"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzQ(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzo:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzep;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzep;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzfo;Lcom/google/android/livesharing/CoWatchingSessionDelegate;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzk:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzp:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p1
.end method

.method public final synthetic zzm(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/livesharing/MeetingDisconnectHandler;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzm:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Unexpected call to connectMeeting before calling disconnectMeeting"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzl:Lcom/google/android/gms/internal/meet_coactivities/zzgr;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzdg;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/meet_coactivities/zzgr;)Lcom/google/android/gms/internal/meet_coactivities/zzdf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzdf;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzr;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzdf;->zzb()Z

    move-result v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzr;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzk;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/meet_coactivities/zzk;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzk;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/meet_coactivities/zzco;->zzb:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v4, v3}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzct;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzct;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzi:Ljava/util/function/Function;

    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzbo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzfp;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzbo;)Lcom/google/android/gms/internal/meet_coactivities/zzfp;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzfp;->zzc(Lcom/google/android/livesharing/MeetingDisconnectHandler;)Lcom/google/android/gms/internal/meet_coactivities/zzfp;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzfp;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzfp;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzfp;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzr;)Lcom/google/android/gms/internal/meet_coactivities/zzfp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzfp;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzfq;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzm:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzfq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzfq;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzbo;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzm:Ljava/util/Optional;

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/meet_coactivities/zzfq;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzfq;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzr;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzbo;->zzf(Lcom/google/android/gms/internal/meet_coactivities/zzr;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/meet_coactivities/zzek;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzek;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)V

    sget-object p3, Lcom/google/android/gms/internal/meet_coactivities/zzgq;->zza:Ljava/util/concurrent/Executor;

    invoke-static {p1, p2, p3}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/meet_coactivities/zzfi;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzfi;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)V

    invoke-static {p1, p2, p3}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzo:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/ListenableFuture;

    const-string p2, "Unexpected error when trying to connect to meeting."

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzed;->zzb(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object v3, p1, p2

    const-string p2, "Package %s is too old. Please update."

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/google/android/livesharing/LiveSharingException$Code;->zzb:Lcom/google/android/livesharing/LiveSharingException$Code;

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/google/android/livesharing/zzo;->zzd(Ljava/lang/String;Lcom/google/android/livesharing/LiveSharingException$Code;Ljava/lang/String;)Lcom/google/android/livesharing/LiveSharingException;

    move-result-object p1

    throw p1

    :cond_1
    sget-object p1, Lcom/google/android/livesharing/LiveSharingException$Code;->zzb:Lcom/google/android/livesharing/LiveSharingException$Code;

    const-string p2, "No apps are available for live sharing."

    const-string p3, "com.google.android.gm"

    invoke-static {p2, p1, p3}, Lcom/google/android/livesharing/zzo;->zzd(Ljava/lang/String;Lcom/google/android/livesharing/LiveSharingException$Code;Ljava/lang/String;)Lcom/google/android/livesharing/LiveSharingException;

    move-result-object p1

    throw p1
.end method

.method public final synthetic zzn()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzm:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzfq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzfq;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzbo;->zzg()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzo()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzq:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const-string v1, "Expected co-doing activity to exist before calling endCoDoing."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzq:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzeh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzeh;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzk:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzs:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method public final synthetic zzp()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzp:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const-string v1, "Expected co-watching activity to exist before calling endCoWatching."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzp:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzff;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzff;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzk:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzr:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method public final synthetic zzq(Lcom/google/android/livesharing/LiveSharingMeetingInfo;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzm:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    const-string v0, "Unexpected call to disconnectMeeting before calling connectMeeting"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzq:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzs:Ljava/util/Optional;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzet;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzet;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateVoidFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Failed to end co-doing."

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzed;->zza(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzp:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzr:Ljava/util/Optional;

    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzeu;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzeu;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateVoidFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to end co-watching."

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzed;->zza(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->whenAllComplete(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/Futures$FutureCombiner;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzev;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzev;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)V

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzgq;->zza:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0, v1}, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->callAsync(Lcom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzew;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzew;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)V

    invoke-static {p1, v0, v1}, Lcom/google/common/util/concurrent/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    const-string v0, "Unexpected error when trying to disconnect from meeting."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzed;->zzb(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzr()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzN()Ljava/lang/Void;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzs()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzO()Ljava/lang/Void;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzt(Ljava/lang/Void;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzeo;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzeo;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzk:Ljava/util/concurrent/Executor;

    invoke-static {p1, v0}, Lcom/google/common/util/concurrent/Futures;->submit(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzu(Lcom/google/android/livesharing/CoDoingSession;)Ljava/lang/Void;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzN()Ljava/lang/Void;

    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic zzv(Lcom/google/android/livesharing/CoWatchingSession;)Ljava/lang/Void;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzO()Ljava/lang/Void;

    const/4 p1, 0x0

    return-object p1
.end method
