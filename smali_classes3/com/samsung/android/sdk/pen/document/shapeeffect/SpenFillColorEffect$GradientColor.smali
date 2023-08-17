.class public Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientColor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GradientColor"
.end annotation


# instance fields
.field public color:I

.field public position:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientColor;->color:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientColor;->position:F

    return-void
.end method
