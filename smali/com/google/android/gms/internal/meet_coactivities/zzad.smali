.class public final enum Lcom/google/android/gms/internal/meet_coactivities/zzad;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzpw;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/meet_coactivities/zzad;

.field public static final enum zzb:Lcom/google/android/gms/internal/meet_coactivities/zzad;

.field public static final enum zzc:Lcom/google/android/gms/internal/meet_coactivities/zzad;

.field public static final enum zzd:Lcom/google/android/gms/internal/meet_coactivities/zzad;

.field public static final enum zze:Lcom/google/android/gms/internal/meet_coactivities/zzad;

.field public static final enum zzf:Lcom/google/android/gms/internal/meet_coactivities/zzad;

.field public static final enum zzg:Lcom/google/android/gms/internal/meet_coactivities/zzad;

.field public static final enum zzh:Lcom/google/android/gms/internal/meet_coactivities/zzad;

.field public static final enum zzi:Lcom/google/android/gms/internal/meet_coactivities/zzad;

.field private static final zzj:Lcom/google/android/gms/internal/meet_coactivities/zzpx;

.field private static final synthetic zzk:[Lcom/google/android/gms/internal/meet_coactivities/zzad;


# instance fields
.field private final zzl:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzad;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzad;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzad;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzad;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzad;

    const-string v3, "CONNECTING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzad;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzad;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzad;

    new-instance v3, Lcom/google/android/gms/internal/meet_coactivities/zzad;

    const-string v5, "CONNECTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/meet_coactivities/zzad;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/meet_coactivities/zzad;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzad;

    new-instance v5, Lcom/google/android/gms/internal/meet_coactivities/zzad;

    const-string v7, "CONNECTED_WITH_COACTIVITY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/meet_coactivities/zzad;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/meet_coactivities/zzad;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzad;

    new-instance v7, Lcom/google/android/gms/internal/meet_coactivities/zzad;

    const-string v9, "ENDING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/meet_coactivities/zzad;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/meet_coactivities/zzad;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzad;

    new-instance v9, Lcom/google/android/gms/internal/meet_coactivities/zzad;

    const-string v11, "ENDED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/google/android/gms/internal/meet_coactivities/zzad;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/meet_coactivities/zzad;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzad;

    new-instance v11, Lcom/google/android/gms/internal/meet_coactivities/zzad;

    const-string v13, "NOT_CONNECTED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/google/android/gms/internal/meet_coactivities/zzad;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/meet_coactivities/zzad;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzad;

    new-instance v13, Lcom/google/android/gms/internal/meet_coactivities/zzad;

    const-string v15, "ENDED_UNEXPECTEDLY"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/google/android/gms/internal/meet_coactivities/zzad;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/gms/internal/meet_coactivities/zzad;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zzad;

    new-instance v15, Lcom/google/android/gms/internal/meet_coactivities/zzad;

    const-string v14, "UNRECOGNIZED"

    const/16 v12, 0x8

    const/4 v10, -0x1

    invoke-direct {v15, v14, v12, v10}, Lcom/google/android/gms/internal/meet_coactivities/zzad;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/gms/internal/meet_coactivities/zzad;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zzad;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/google/android/gms/internal/meet_coactivities/zzad;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    aput-object v15, v10, v12

    sput-object v10, Lcom/google/android/gms/internal/meet_coactivities/zzad;->zzk:[Lcom/google/android/gms/internal/meet_coactivities/zzad;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzac;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzac;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzad;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzpx;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzad;->zzl:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/meet_coactivities/zzad;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzad;->zzk:[Lcom/google/android/gms/internal/meet_coactivities/zzad;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/meet_coactivities/zzad;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/meet_coactivities/zzad;

    return-object v0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/meet_coactivities/zzad;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/meet_coactivities/zzad;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zzad;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/meet_coactivities/zzad;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzad;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/meet_coactivities/zzad;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzad;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/meet_coactivities/zzad;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzad;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/meet_coactivities/zzad;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzad;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/meet_coactivities/zzad;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzad;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/meet_coactivities/zzad;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzad;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/meet_coactivities/zzad;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzad;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzad;->zza()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzad;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zzad;

    if-eq p0, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzad;->zzl:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
