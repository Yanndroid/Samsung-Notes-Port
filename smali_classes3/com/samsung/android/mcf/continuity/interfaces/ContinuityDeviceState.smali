.class public final Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;
    }
.end annotation


# instance fields
.field private final mBtState:I

.field private final mCallState:I

.field private final mCmcState:I

.field private final mScreenState:I

.field private final mWifiState:I


# direct methods
.method private constructor <init>(IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->mScreenState:I

    iput p2, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->mCallState:I

    iput p3, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->mBtState:I

    iput p4, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->mWifiState:I

    iput p5, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->mCmcState:I

    return-void
.end method

.method public synthetic constructor <init>(IIIIILcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method public getBtState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->mBtState:I

    return v0
.end method

.method public getCallState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->mCallState:I

    return v0
.end method

.method public getCmcState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->mCmcState:I

    return v0
.end method

.method public getScreenState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->mScreenState:I

    return v0
.end method

.method public getWifiState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->mWifiState:I

    return v0
.end method
