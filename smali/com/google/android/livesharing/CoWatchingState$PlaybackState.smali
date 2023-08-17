.class public final enum Lcom/google/android/livesharing/CoWatchingState$PlaybackState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/livesharing/annotations/PublicApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/livesharing/CoWatchingState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlaybackState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/livesharing/CoWatchingState$PlaybackState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BUFFERING:Lcom/google/android/livesharing/CoWatchingState$PlaybackState;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final enum ENDED:Lcom/google/android/livesharing/CoWatchingState$PlaybackState;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final enum PAUSE:Lcom/google/android/livesharing/CoWatchingState$PlaybackState;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final enum PLAY:Lcom/google/android/livesharing/CoWatchingState$PlaybackState;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final synthetic zza:[Lcom/google/android/livesharing/CoWatchingState$PlaybackState;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/google/android/livesharing/CoWatchingState$PlaybackState;

    const-string v1, "BUFFERING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/livesharing/CoWatchingState$PlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/livesharing/CoWatchingState$PlaybackState;->BUFFERING:Lcom/google/android/livesharing/CoWatchingState$PlaybackState;

    new-instance v1, Lcom/google/android/livesharing/CoWatchingState$PlaybackState;

    const-string v3, "PLAY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/livesharing/CoWatchingState$PlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/livesharing/CoWatchingState$PlaybackState;->PLAY:Lcom/google/android/livesharing/CoWatchingState$PlaybackState;

    new-instance v3, Lcom/google/android/livesharing/CoWatchingState$PlaybackState;

    const-string v5, "PAUSE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/livesharing/CoWatchingState$PlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/livesharing/CoWatchingState$PlaybackState;->PAUSE:Lcom/google/android/livesharing/CoWatchingState$PlaybackState;

    new-instance v5, Lcom/google/android/livesharing/CoWatchingState$PlaybackState;

    const-string v7, "ENDED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/android/livesharing/CoWatchingState$PlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/livesharing/CoWatchingState$PlaybackState;->ENDED:Lcom/google/android/livesharing/CoWatchingState$PlaybackState;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/android/livesharing/CoWatchingState$PlaybackState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/google/android/livesharing/CoWatchingState$PlaybackState;->zza:[Lcom/google/android/livesharing/CoWatchingState$PlaybackState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/livesharing/CoWatchingState$PlaybackState;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-class v0, Lcom/google/android/livesharing/CoWatchingState$PlaybackState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/livesharing/CoWatchingState$PlaybackState;

    return-object p0
.end method

.method public static values()[Lcom/google/android/livesharing/CoWatchingState$PlaybackState;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/google/android/livesharing/CoWatchingState$PlaybackState;->zza:[Lcom/google/android/livesharing/CoWatchingState$PlaybackState;

    invoke-virtual {v0}, [Lcom/google/android/livesharing/CoWatchingState$PlaybackState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/livesharing/CoWatchingState$PlaybackState;

    return-object v0
.end method
