.class public Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final STYLE_TYPE_FILL:I = 0x1

.field public static final STYLE_TYPE_STROKE:I


# instance fields
.field public color:I

.field public fillColor:I

.field public isBlankShape:Z

.field public sizeLevel:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->type:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->sizeLevel:I

    const/high16 v1, -0x1000000

    iput v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->color:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->fillColor:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->isBlankShape:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->type:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->sizeLevel:I

    const/high16 v1, -0x1000000

    iput v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->color:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->fillColor:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->isBlankShape:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->type:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->type:I

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->sizeLevel:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->sizeLevel:I

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->color:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->color:I

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->fillColor:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->fillColor:I

    iget-boolean p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->isBlankShape:Z

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->isBlankShape:Z

    return-void
.end method
