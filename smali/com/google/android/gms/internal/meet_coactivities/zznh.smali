.class public final enum Lcom/google/android/gms/internal/meet_coactivities/zznh;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzpw;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/meet_coactivities/zznh;

.field public static final enum zzb:Lcom/google/android/gms/internal/meet_coactivities/zznh;

.field public static final enum zzc:Lcom/google/android/gms/internal/meet_coactivities/zznh;

.field public static final enum zzd:Lcom/google/android/gms/internal/meet_coactivities/zznh;

.field private static final zze:Lcom/google/android/gms/internal/meet_coactivities/zzpx;

.field private static final synthetic zzf:[Lcom/google/android/gms/internal/meet_coactivities/zznh;


# instance fields
.field private final zzg:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zznh;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/meet_coactivities/zznh;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zznh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zznh;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zznh;

    const-string v3, "INCOMING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/meet_coactivities/zznh;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/meet_coactivities/zznh;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zznh;

    new-instance v3, Lcom/google/android/gms/internal/meet_coactivities/zznh;

    const-string v5, "OUTGOING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/meet_coactivities/zznh;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/meet_coactivities/zznh;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zznh;

    new-instance v5, Lcom/google/android/gms/internal/meet_coactivities/zznh;

    const-string v7, "UNRECOGNIZED"

    const/4 v8, 0x3

    const/4 v9, -0x1

    invoke-direct {v5, v7, v8, v9}, Lcom/google/android/gms/internal/meet_coactivities/zznh;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/meet_coactivities/zznh;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zznh;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/android/gms/internal/meet_coactivities/zznh;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/google/android/gms/internal/meet_coactivities/zznh;->zzf:[Lcom/google/android/gms/internal/meet_coactivities/zznh;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzng;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzng;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zznh;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzpx;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zznh;->zzg:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/meet_coactivities/zznh;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zznh;->zzf:[Lcom/google/android/gms/internal/meet_coactivities/zznh;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/meet_coactivities/zznh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/meet_coactivities/zznh;

    return-object v0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/meet_coactivities/zznh;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/meet_coactivities/zznh;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zznh;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/meet_coactivities/zznh;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zznh;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/meet_coactivities/zznh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zznh;

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zznh;->zza()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zznh;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zznh;

    if-eq p0, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zznh;->zzg:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
