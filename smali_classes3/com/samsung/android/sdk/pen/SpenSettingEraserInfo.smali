.class public Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ERASER_TYPE_PEN:I = 0x0

.field public static final ERASER_TYPE_TEXT:I = 0x1


# instance fields
.field public size:F

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;->type:I

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;->size:F

    return-void
.end method
