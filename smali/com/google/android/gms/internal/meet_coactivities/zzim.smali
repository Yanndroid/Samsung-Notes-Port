.class public final Lcom/google/android/gms/internal/meet_coactivities/zzim;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/meet_coactivities/zzje;

.field public static final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzje;

.field public static final zzc:Lcom/google/android/gms/internal/meet_coactivities/zzje;

.field public static final zzd:Lcom/google/android/gms/internal/meet_coactivities/zzje;

.field public static final zze:Lcom/google/android/gms/internal/meet_coactivities/zzje;

.field public static final zzf:Lcom/google/android/gms/internal/meet_coactivities/zzje;

.field public static final zzg:Lcom/google/android/gms/internal/meet_coactivities/zzje;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-class v0, Ljava/lang/Throwable;

    const-string v1, "cause"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzje;->zzd(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/meet_coactivities/zzje;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzim;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzje;

    const-class v0, Ljava/lang/Integer;

    const-string v1, "ratelimit_count"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzje;->zzd(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/meet_coactivities/zzje;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzim;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzje;

    const-class v0, Lcom/google/android/gms/internal/meet_coactivities/zziy;

    const-string v1, "ratelimit_period"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzje;->zzd(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/meet_coactivities/zzje;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzim;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzje;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzik;

    const-class v1, Ljava/lang/Object;

    const-string v2, "group_by"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzik;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzim;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzje;

    const-class v0, Ljava/lang/Boolean;

    const-string v1, "forced"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzje;->zzd(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/meet_coactivities/zzje;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzim;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzje;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzil;

    const-class v1, Lcom/google/android/gms/internal/meet_coactivities/zzly;

    const-string v2, "tags"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzil;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzim;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzje;

    const-class v0, Lcom/google/android/gms/internal/meet_coactivities/zzjg;

    const-string v1, "stack_size"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzje;->zzd(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/meet_coactivities/zzje;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzim;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzje;

    return-void
.end method
