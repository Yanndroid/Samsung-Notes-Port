.class public Lcom/samsung/android/sdk/pen/base/SpenRectD;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bottom:D

.field public left:D

.field public right:D

.field public top:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/sdk/pen/base/SpenRectD;->left:D

    iput-wide p3, p0, Lcom/samsung/android/sdk/pen/base/SpenRectD;->top:D

    iput-wide p5, p0, Lcom/samsung/android/sdk/pen/base/SpenRectD;->right:D

    iput-wide p7, p0, Lcom/samsung/android/sdk/pen/base/SpenRectD;->bottom:D

    return-void
.end method

.method public constructor <init>(Landroid/graphics/RectF;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/base/SpenRectD;->left:D

    iget v0, p1, Landroid/graphics/RectF;->top:F

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/base/SpenRectD;->top:D

    iget v0, p1, Landroid/graphics/RectF;->right:F

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/base/SpenRectD;->right:D

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/base/SpenRectD;->bottom:D

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/pen/base/SpenRectD;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/samsung/android/sdk/pen/base/SpenRectD;->left:D

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/base/SpenRectD;->left:D

    iget-wide v0, p1, Lcom/samsung/android/sdk/pen/base/SpenRectD;->top:D

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/base/SpenRectD;->top:D

    iget-wide v0, p1, Lcom/samsung/android/sdk/pen/base/SpenRectD;->right:D

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/base/SpenRectD;->right:D

    iget-wide v0, p1, Lcom/samsung/android/sdk/pen/base/SpenRectD;->bottom:D

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/base/SpenRectD;->bottom:D

    return-void
.end method
