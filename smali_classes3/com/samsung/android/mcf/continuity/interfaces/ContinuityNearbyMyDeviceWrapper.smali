.class public final Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;
    }
.end annotation


# instance fields
.field private final mBtMac:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mCurContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mDeviceType:I

.field private final mDisplayName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mIp:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mModelName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mPort:I

.field private final mPrevContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mBtMac:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mDisplayName:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mDeviceType:I

    iput-object p4, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mModelName:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mIp:Ljava/lang/String;

    iput p6, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mPort:I

    iput-object p7, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mPrevContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    iput-object p8, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mCurContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$1;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;)V

    return-void
.end method


# virtual methods
.method public getBtMac()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mBtMac:Ljava/lang/String;

    return-object v0
.end method

.method public getBtState()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mCurContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->getBtState()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x258

    :goto_0
    return v0
.end method

.method public getCallState()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mCurContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->getCallState()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f4

    :goto_0
    return v0
.end method

.method public getCmcState()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mCurContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->getCmcState()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x320

    :goto_0
    return v0
.end method

.method public getCurContinuityDeviceState()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mCurContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mDeviceType:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mIp:Ljava/lang/String;

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mModelName:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mPort:I

    return v0
.end method

.method public getPrevContinuityDeviceState()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mPrevContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    return-object v0
.end method

.method public getScreenState()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mCurContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->getScreenState()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x190

    :goto_0
    return v0
.end method

.method public getWifiState()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mCurContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->getWifiState()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2bc

    :goto_0
    return v0
.end method

.method public isDeviceStateChanged()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mCurContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mPrevContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->getScreenState()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mPrevContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    invoke-virtual {v2}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->getScreenState()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mCurContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->getBtState()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mPrevContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    invoke-virtual {v2}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->getBtState()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mCurContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->getWifiState()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->mPrevContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    invoke-virtual {v2}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->getWifiState()I

    move-result v2

    if-eq v0, v2, :cond_3

    :cond_2
    move v1, v3

    :cond_3
    return v1
.end method
