.class public Lcom/samsung/android/sdk/pen/document/changedInfo/SpenLayerChangedInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CHANGED_ALPHA_LOCK:I = 0x6

.field public static final CHANGED_BITMAP:I = 0x5

.field public static final CHANGED_LOCK_STATE:I = 0x3

.field public static final CHANGED_MAX:I = 0x7

.field public static final CHANGED_THUMBNAIL:I = 0x4

.field public static final CHANGED_TRANSPARENCY:I = 0x1

.field public static final CHANGED_UNDEFINED:I = 0x0

.field public static final CHANGED_VISIBILITY:I = 0x2


# instance fields
.field public layerChangedType:I

.field public layerId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenLayerChangedInfo;->layerChangedType:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenLayerChangedInfo;->layerId:I

    return-void
.end method
