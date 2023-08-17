.class public abstract Lcom/google/android/gms/internal/meet_coactivities/zznw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzrj;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/meet_coactivities/zzpg;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzpg;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzpg;

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zznw;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzpg;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/meet_coactivities/zzot;Lcom/google/android/gms/internal/meet_coactivities/zzpg;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzrj;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzot;Lcom/google/android/gms/internal/meet_coactivities/zzpg;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzrd;->zzP()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/google/android/gms/internal/meet_coactivities/zzsf;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzsf;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzrc;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzsf;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzqe;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzqe;->zzh(Lcom/google/android/gms/internal/meet_coactivities/zzrc;)Lcom/google/android/gms/internal/meet_coactivities/zzqe;

    throw p2

    :cond_1
    :goto_0
    return-object p1
.end method
