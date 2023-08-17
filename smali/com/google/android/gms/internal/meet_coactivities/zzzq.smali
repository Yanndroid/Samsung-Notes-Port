.class final enum Lcom/google/android/gms/internal/meet_coactivities/zzzq;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/meet_coactivities/zzzq;

.field public static final enum zzb:Lcom/google/android/gms/internal/meet_coactivities/zzzq;

.field public static final enum zzc:Lcom/google/android/gms/internal/meet_coactivities/zzzq;

.field public static final enum zzd:Lcom/google/android/gms/internal/meet_coactivities/zzzq;

.field public static final enum zze:Lcom/google/android/gms/internal/meet_coactivities/zzzq;

.field public static final enum zzf:Lcom/google/android/gms/internal/meet_coactivities/zzzq;

.field private static final synthetic zzg:[Lcom/google/android/gms/internal/meet_coactivities/zzzq;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzzq;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzzq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzzq;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzzq;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzzq;

    const-string v3, "INITIALIZED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzzq;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzzq;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzzq;

    new-instance v3, Lcom/google/android/gms/internal/meet_coactivities/zzzq;

    const-string v5, "PREFIX_DELIVERED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/gms/internal/meet_coactivities/zzzq;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/meet_coactivities/zzzq;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzzq;

    new-instance v5, Lcom/google/android/gms/internal/meet_coactivities/zzzq;

    const-string v7, "ALL_MESSAGES_DELIVERED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/android/gms/internal/meet_coactivities/zzzq;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/gms/internal/meet_coactivities/zzzq;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzzq;

    new-instance v7, Lcom/google/android/gms/internal/meet_coactivities/zzzq;

    const-string v9, "SUFFIX_DELIVERED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/android/gms/internal/meet_coactivities/zzzq;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/android/gms/internal/meet_coactivities/zzzq;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzzq;

    new-instance v9, Lcom/google/android/gms/internal/meet_coactivities/zzzq;

    const-string v11, "CLOSED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/google/android/gms/internal/meet_coactivities/zzzq;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/android/gms/internal/meet_coactivities/zzzq;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzzq;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/google/android/gms/internal/meet_coactivities/zzzq;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/google/android/gms/internal/meet_coactivities/zzzq;->zzg:[Lcom/google/android/gms/internal/meet_coactivities/zzzq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/meet_coactivities/zzzq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzzq;->zzg:[Lcom/google/android/gms/internal/meet_coactivities/zzzq;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/meet_coactivities/zzzq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/meet_coactivities/zzzq;

    return-object v0
.end method
