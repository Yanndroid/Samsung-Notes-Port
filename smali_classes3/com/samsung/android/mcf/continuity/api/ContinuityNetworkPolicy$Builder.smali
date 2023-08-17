.class public final Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mTopology:I

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    iput v0, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;->mType:I

    const/16 v0, 0x15

    iput v0, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;->mTopology:I

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;

    iget v1, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;->mType:I

    iget v2, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;->mTopology:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;-><init>(II)V

    return-object v0
.end method

.method public setTopology(I)Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/16 v0, 0x14

    if-lt p1, v0, :cond_0

    const/16 v0, 0x17

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;->mTopology:I

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid topology"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setType(I)Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    const/16 v0, 0xd

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;->mType:I

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
