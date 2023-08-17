.class public abstract Lcom/google/android/gms/internal/meet_coactivities/zzio;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzjb;
.implements Lcom/google/android/gms/internal/meet_coactivities/zzjn;


# static fields
.field private static final zza:Ljava/lang/String;


# instance fields
.field private final zzb:Ljava/util/logging/Level;

.field private final zzc:J

.field private zzd:Lcom/google/android/gms/internal/meet_coactivities/zzin;

.field private zze:Lcom/google/android/gms/internal/meet_coactivities/zzis;

.field private zzf:Lcom/google/android/gms/internal/meet_coactivities/zzkx;

.field private zzg:[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zza:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/logging/Level;Z)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzkt;->zzb()J

    move-result-wide v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzin;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzis;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzkx;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzg:[Ljava/lang/Object;

    const-string p2, "level"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzml;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzb:Ljava/util/logging/Level;

    iput-wide v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzc:J

    return-void
.end method

.method private final varargs zzx(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzg:[Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    aget-object v1, p2, v0

    instance-of v2, v1, Lcom/google/android/gms/internal/meet_coactivities/zzij;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/google/android/gms/internal/meet_coactivities/zzij;

    invoke-interface {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzij;->zza()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zza:Ljava/lang/String;

    if-eq p1, p2, :cond_2

    new-instance p2, Lcom/google/android/gms/internal/meet_coactivities/zzkx;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzmh;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzkx;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzmh;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzkx;

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzkt;->zzk()Lcom/google/android/gms/internal/meet_coactivities/zzly;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzly;->zze()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzi()Lcom/google/android/gms/internal/meet_coactivities/zzjt;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzim;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzje;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzjt;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzje;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/meet_coactivities/zzly;

    if-eqz p2, :cond_3

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzly;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzly;)Lcom/google/android/gms/internal/meet_coactivities/zzly;

    move-result-object p1

    :cond_3
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzm(Lcom/google/android/gms/internal/meet_coactivities/zzje;Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzib;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzjn;)V

    return-void
.end method

.method private final zzy()Z
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzis;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzkt;->zzg()Lcom/google/android/gms/internal/meet_coactivities/zzks;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/meet_coactivities/zzio;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzks;->zza(Ljava/lang/Class;I)Lcom/google/android/gms/internal/meet_coactivities/zzis;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzis;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzis;

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzis;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzis;

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzin;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzin;->zza()I

    move-result v2

    if-lez v2, :cond_4

    const-string v2, "logSiteKey"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzml;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzjt;->zza()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    sget-object v4, Lcom/google/android/gms/internal/meet_coactivities/zzim;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzje;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzjt;->zzb(I)Lcom/google/android/gms/internal/meet_coactivities/zzje;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzjt;->zzd(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/meet_coactivities/zzjc;

    if-eqz v5, :cond_1

    check-cast v4, Lcom/google/android/gms/internal/meet_coactivities/zzjc;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzjc;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzit;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzjf;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzit;Ljava/lang/Object;)Lcom/google/android/gms/internal/meet_coactivities/zzit;

    move-result-object v0

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzit;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract zza()Lcom/google/android/gms/internal/meet_coactivities/zzmh;
.end method

.method public zzb(Lcom/google/android/gms/internal/meet_coactivities/zzit;)Z
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzin;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eqz p1, :cond_3

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzim;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzje;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzin;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzje;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzin;

    sget-object v3, Lcom/google/android/gms/internal/meet_coactivities/zzim;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzje;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzin;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzje;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/meet_coactivities/zziy;

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzin;

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/meet_coactivities/zziz;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzit;Lcom/google/android/gms/internal/meet_coactivities/zzjt;)Lcom/google/android/gms/internal/meet_coactivities/zziz;

    move-result-object p1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zziz;->zzc(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    iget-wide v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzc:J

    invoke-virtual {p1, v4, v5, v2}, Lcom/google/android/gms/internal/meet_coactivities/zziz;->zzb(JLcom/google/android/gms/internal/meet_coactivities/zziy;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    return v3

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzin;

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzim;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzje;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzin;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzje;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzjg;

    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzin;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzin;->zzf(Lcom/google/android/gms/internal/meet_coactivities/zzje;)V

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zziw;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzi()Lcom/google/android/gms/internal/meet_coactivities/zzjt;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/meet_coactivities/zzim;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzje;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzjt;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzje;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    const-class v4, Lcom/google/android/gms/internal/meet_coactivities/zzio;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzjg;->zza()I

    move-result v5

    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzmk;->zzb(Ljava/lang/Class;II)[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-direct {v0, v2, p1, v4}, Lcom/google/android/gms/internal/meet_coactivities/zziw;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/meet_coactivities/zzjg;[Ljava/lang/StackTraceElement;)V

    invoke-virtual {p0, v3, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzm(Lcom/google/android/gms/internal/meet_coactivities/zzje;Ljava/lang/Object;)V

    :cond_5
    return v1
.end method

.method public abstract zzc()Lcom/google/android/gms/internal/meet_coactivities/zzib;
.end method

.method public abstract zzd()Lcom/google/android/gms/internal/meet_coactivities/zzjb;
.end method

.method public final zze()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzc:J

    return-wide v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/meet_coactivities/zzis;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzis;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot request log site information prior to postProcess()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzim;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzje;

    const-string v1, "metadata key"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzml;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzm(Lcom/google/android/gms/internal/meet_coactivities/zzje;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    return-object p1
.end method

.method public final zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;
    .locals 7

    new-instance v6, Lcom/google/android/gms/internal/meet_coactivities/zzir;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/meet_coactivities/zzir;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/meet_coactivities/zziq;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzis;

    if-nez p1, :cond_0

    iput-object v6, p0, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzis;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    return-object p1
.end method

.method public final zzi()Lcom/google/android/gms/internal/meet_coactivities/zzjt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzin;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzjt;->zzg()Lcom/google/android/gms/internal/meet_coactivities/zzjt;

    move-result-object v0

    return-object v0
.end method

.method public final zzj()Lcom/google/android/gms/internal/meet_coactivities/zzkx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzkx;

    return-object v0
.end method

.method public final zzk()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzkx;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzg:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot get literal argument if a template context exists"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzl()Ljava/util/logging/Level;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzb:Ljava/util/logging/Level;

    return-object v0
.end method

.method public final zzm(Lcom/google/android/gms/internal/meet_coactivities/zzje;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzin;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzin;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzin;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzin;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzin;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzin;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzje;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzn()V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzy()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zza:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzx(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzo(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzy()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zza:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzx(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzp(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzy()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzx(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzq(Ljava/lang/String;JLjava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzy()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p4, v0, p2

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzx(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzr(Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzy()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const/4 p2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "%s long version code is: %s"

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzx(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzs(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzy()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzx(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzt(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzy()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const/4 p2, 0x1

    aput-object p3, p1, p2

    const/4 p2, 0x2

    aput-object p4, p1, p2

    const-string p2, "Calling broadcastStatSample of type %s and direction %s - thread %s"

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzx(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzu(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzy()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzx(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzv()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzin;

    if-eqz v0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzim;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzje;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzin;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzje;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzw()[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzkx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzio;->zzg:[Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot get arguments unless a template context exists"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
