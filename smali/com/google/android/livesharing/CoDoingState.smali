.class public abstract Lcom/google/android/livesharing/CoDoingState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/livesharing/annotations/PublicApi;
.end annotation

.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/livesharing/CoDoingState$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/android/livesharing/CoDoingState$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/livesharing/zza;

    invoke-direct {v0}, Lcom/google/android/livesharing/zza;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract state()[B
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
