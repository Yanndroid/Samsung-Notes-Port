.class final enum Lcom/google/android/gms/internal/meet_coactivities/zzlx;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/meet_coactivities/zzlx;

.field public static final enum zzb:Lcom/google/android/gms/internal/meet_coactivities/zzlx;

.field public static final enum zzc:Lcom/google/android/gms/internal/meet_coactivities/zzlx;

.field public static final enum zzd:Lcom/google/android/gms/internal/meet_coactivities/zzlx;

.field private static final synthetic zze:[Lcom/google/android/gms/internal/meet_coactivities/zzlx;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzlx;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzlx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzlx;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzlx;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzlx;

    const-string v3, "STRING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzlx;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzlx;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzlx;

    new-instance v3, Lcom/google/android/gms/internal/meet_coactivities/zzlx;

    const-string v5, "LONG"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/gms/internal/meet_coactivities/zzlx;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/meet_coactivities/zzlx;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzlx;

    new-instance v5, Lcom/google/android/gms/internal/meet_coactivities/zzlx;

    const-string v7, "DOUBLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/android/gms/internal/meet_coactivities/zzlx;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/gms/internal/meet_coactivities/zzlx;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzlx;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/android/gms/internal/meet_coactivities/zzlx;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/google/android/gms/internal/meet_coactivities/zzlx;->zze:[Lcom/google/android/gms/internal/meet_coactivities/zzlx;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/meet_coactivities/zzlx;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzlx;->zze:[Lcom/google/android/gms/internal/meet_coactivities/zzlx;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/meet_coactivities/zzlx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/meet_coactivities/zzlx;

    return-object v0
.end method

.method public static bridge synthetic zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/meet_coactivities/zzlx;
    .locals 2

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/meet_coactivities/zzlx;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzlx;

    goto :goto_0

    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    sget-object p0, Lcom/google/android/gms/internal/meet_coactivities/zzlx;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzlx;

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    sget-object p0, Lcom/google/android/gms/internal/meet_coactivities/zzlx;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzlx;

    goto :goto_0

    :cond_2
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_3

    sget-object p0, Lcom/google/android/gms/internal/meet_coactivities/zzlx;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzlx;

    :goto_0
    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "invalid tag type: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
