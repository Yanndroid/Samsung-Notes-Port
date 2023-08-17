.class public final Lcom/google/android/gms/internal/meet_coactivities/zzlk;
.super Lcom/google/android/gms/internal/meet_coactivities/zzky;
.source "SourceFile"


# static fields
.field private static final zza:Ljava/util/Set;

.field private static final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzkc;

.field private static final zzc:Lcom/google/android/gms/internal/meet_coactivities/zzlh;


# instance fields
.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/util/logging/Level;

.field private final zzf:Ljava/util/Set;

.field private final zzg:Lcom/google/android/gms/internal/meet_coactivities/zzkc;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/meet_coactivities/zzje;

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzim;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzje;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzjh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzje;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzlk;->zza:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzkf;->zza(Ljava/util/Set;)Lcom/google/android/gms/internal/meet_coactivities/zzjx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzjx;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzkc;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzlk;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzkc;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzlh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzlh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzlk;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzlh;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/logging/Level;Ljava/util/Set;Lcom/google/android/gms/internal/meet_coactivities/zzkc;Lcom/google/android/gms/internal/meet_coactivities/zzlj;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzky;-><init>(Ljava/lang/String;)V

    const-string p1, ""

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzlc;->zza(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzlk;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/meet_coactivities/zzlk;->zze:Ljava/util/logging/Level;

    iput-object p6, p0, Lcom/google/android/gms/internal/meet_coactivities/zzlk;->zzf:Ljava/util/Set;

    iput-object p7, p0, Lcom/google/android/gms/internal/meet_coactivities/zzlk;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzkc;

    return-void
.end method

.method public static bridge synthetic zze()Lcom/google/android/gms/internal/meet_coactivities/zzkc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzlk;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzkc;

    return-object v0
.end method

.method public static bridge synthetic zzf()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzlk;->zza:Ljava/util/Set;

    return-object v0
.end method

.method public static bridge synthetic zzg(Lcom/google/android/gms/internal/meet_coactivities/zzjn;Ljava/lang/String;ZLjava/util/logging/Level;Ljava/util/Set;Lcom/google/android/gms/internal/meet_coactivities/zzkc;)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/meet_coactivities/zzlk;->zzh(Lcom/google/android/gms/internal/meet_coactivities/zzjn;Ljava/lang/String;ZLjava/util/logging/Level;Ljava/util/Set;Lcom/google/android/gms/internal/meet_coactivities/zzkc;)V

    return-void
.end method

.method private static zzh(Lcom/google/android/gms/internal/meet_coactivities/zzjn;Ljava/lang/String;ZLjava/util/logging/Level;Ljava/util/Set;Lcom/google/android/gms/internal/meet_coactivities/zzkc;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzkt;->zzf()Lcom/google/android/gms/internal/meet_coactivities/zzjt;

    move-result-object p1

    invoke-interface {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzjn;->zzi()Lcom/google/android/gms/internal/meet_coactivities/zzjt;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzkq;->zzh(Lcom/google/android/gms/internal/meet_coactivities/zzjt;Lcom/google/android/gms/internal/meet_coactivities/zzjt;)Lcom/google/android/gms/internal/meet_coactivities/zzkq;

    move-result-object p1

    invoke-interface {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzjn;->zzl()Ljava/util/logging/Level;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/logging/Level;->intValue()I

    move-result p2

    invoke-virtual {p3}, Ljava/util/logging/Level;->intValue()I

    move-result p3

    if-ge p2, p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_2

    invoke-static {p0, p1, p4}, Lcom/google/android/gms/internal/meet_coactivities/zzkw;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzjn;Lcom/google/android/gms/internal/meet_coactivities/zzkq;Ljava/util/Set;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzkw;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzjn;)Ljava/lang/String;

    goto :goto_2

    :cond_2
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_3

    invoke-interface {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzjn;->zzj()Lcom/google/android/gms/internal/meet_coactivities/zzkx;

    move-result-object p2

    if-eqz p2, :cond_3

    const-string p1, "(REDACTED) "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzjn;->zzj()Lcom/google/android/gms/internal/meet_coactivities/zzkx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzkx;->zzb()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-static {p0, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzji;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzjn;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    invoke-static {p1, p5, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzkw;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzkq;Lcom/google/android/gms/internal/meet_coactivities/zzkc;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-interface {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzjn;->zzi()Lcom/google/android/gms/internal/meet_coactivities/zzjt;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/meet_coactivities/zzim;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzje;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzjt;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzje;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzjn;->zzl()Ljava/util/logging/Level;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzlc;->zzb(Ljava/util/logging/Level;)I

    return-void
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/meet_coactivities/zzjn;)V
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzlk;->zzd:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzlk;->zze:Ljava/util/logging/Level;

    iget-object v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzlk;->zzf:Ljava/util/Set;

    iget-object v5, p0, Lcom/google/android/gms/internal/meet_coactivities/zzlk;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzkc;

    const/4 v2, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/meet_coactivities/zzlk;->zzh(Lcom/google/android/gms/internal/meet_coactivities/zzjn;Ljava/lang/String;ZLjava/util/logging/Level;Ljava/util/Set;Lcom/google/android/gms/internal/meet_coactivities/zzkc;)V

    return-void
.end method

.method public final zzd(Ljava/util/logging/Level;)Z
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzlc;->zzb(Ljava/util/logging/Level;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzlk;->zzd:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "all"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
