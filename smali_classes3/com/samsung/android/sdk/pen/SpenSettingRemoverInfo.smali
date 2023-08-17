.class public Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CUTTER_TARGET_ALL:I = 0x0

.field public static final CUTTER_TARGET_HIGHLIGHTER:I = 0x2

.field public static final CUTTER_TARGET_STROKE:I = 0x1

.field public static final CUTTER_TYPE_CUT:I = 0x0

.field public static final CUTTER_TYPE_REMOVE:I = 0x1


# instance fields
.field public size:F

.field public target:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->type:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->size:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->target:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->type:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->size:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->target:I

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->type:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->type:I

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->size:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->size:F

    iget p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->target:I

    iput p1, p0, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->target:I

    return-void
.end method
