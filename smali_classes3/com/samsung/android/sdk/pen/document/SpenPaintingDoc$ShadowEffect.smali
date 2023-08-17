.class public Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$ShadowEffect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShadowEffect"
.end annotation


# instance fields
.field public color:I

.field public offset:Landroid/graphics/PointF;

.field public variance:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$ShadowEffect;->offset:Landroid/graphics/PointF;

    iput v1, p0, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$ShadowEffect;->variance:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPaintingDoc$ShadowEffect;->color:I

    return-void
.end method
