.class public final enum Lcom/google/android/livesharing/LiveSharingException$Code;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/livesharing/LiveSharingException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Code"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/livesharing/LiveSharingException$Code;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/livesharing/LiveSharingException$Code;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final enum zzb:Lcom/google/android/livesharing/LiveSharingException$Code;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final enum zzc:Lcom/google/android/livesharing/LiveSharingException$Code;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final enum zzd:Lcom/google/android/livesharing/LiveSharingException$Code;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final synthetic zze:[Lcom/google/android/livesharing/LiveSharingException$Code;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/google/android/livesharing/LiveSharingException$Code;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/livesharing/LiveSharingException$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/livesharing/LiveSharingException$Code;->zza:Lcom/google/android/livesharing/LiveSharingException$Code;

    new-instance v1, Lcom/google/android/livesharing/LiveSharingException$Code;

    const-string v3, "MEET_VERSION_UNSUPPORTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/livesharing/LiveSharingException$Code;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/livesharing/LiveSharingException$Code;->zzb:Lcom/google/android/livesharing/LiveSharingException$Code;

    new-instance v3, Lcom/google/android/livesharing/LiveSharingException$Code;

    const-string v5, "SDK_VERSION_UNSUPPORTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/livesharing/LiveSharingException$Code;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/livesharing/LiveSharingException$Code;->zzc:Lcom/google/android/livesharing/LiveSharingException$Code;

    new-instance v5, Lcom/google/android/livesharing/LiveSharingException$Code;

    const-string v7, "PARTICIPANT_INELIGIBLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/livesharing/LiveSharingException$Code;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/livesharing/LiveSharingException$Code;->zzd:Lcom/google/android/livesharing/LiveSharingException$Code;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/android/livesharing/LiveSharingException$Code;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/google/android/livesharing/LiveSharingException$Code;->zze:[Lcom/google/android/livesharing/LiveSharingException$Code;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/livesharing/LiveSharingException$Code;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/google/android/livesharing/LiveSharingException$Code;->zze:[Lcom/google/android/livesharing/LiveSharingException$Code;

    invoke-virtual {v0}, [Lcom/google/android/livesharing/LiveSharingException$Code;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/livesharing/LiveSharingException$Code;

    return-object v0
.end method
