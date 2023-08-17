.class public Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;
    }
.end annotation


# instance fields
.field private final mTopology:I

.field private final mType:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->mType:I

    iput p2, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->mTopology:I

    return-void
.end method


# virtual methods
.method public getTopology()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->mTopology:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->mType:I

    return v0
.end method
