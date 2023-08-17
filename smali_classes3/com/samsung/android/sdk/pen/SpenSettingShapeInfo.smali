.class public Lcom/samsung/android/sdk/pen/SpenSettingShapeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public fillColor:I

.field public isFillEnabled:Z

.field public isStroke:Z

.field public lineColor:I

.field public lineSize:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingShapeInfo;->lineSize:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingShapeInfo;->lineColor:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingShapeInfo;->isFillEnabled:Z

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingShapeInfo;->fillColor:I

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingShapeInfo;->isStroke:Z

    return-void
.end method
