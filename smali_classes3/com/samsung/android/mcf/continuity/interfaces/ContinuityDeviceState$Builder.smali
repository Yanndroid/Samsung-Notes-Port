.class public final Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBtState:I

.field private mCallState:I

.field private mCmcState:I

.field private mScreenState:I

.field private mWifiState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x190

    iput v0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;->mScreenState:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;->mCallState:I

    const/16 v0, 0x258

    iput v0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;->mBtState:I

    const/16 v0, 0x2bc

    iput v0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;->mWifiState:I

    const/16 v0, 0x320

    iput v0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;->mCmcState:I

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v7, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    iget v1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;->mScreenState:I

    iget v2, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;->mCallState:I

    iget v3, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;->mBtState:I

    iget v4, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;->mWifiState:I

    iget v5, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;->mCmcState:I

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;-><init>(IIIIILcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$1;)V

    return-object v7
.end method

.method public setBtState(I)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;->mBtState:I

    return-object p0
.end method

.method public setCallState(I)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;->mCallState:I

    return-object p0
.end method

.method public setCmcState(I)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;->mCmcState:I

    return-object p0
.end method

.method public setScreenState(I)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;->mScreenState:I

    return-object p0
.end method

.method public setWifiState(I)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;->mWifiState:I

    return-object p0
.end method
