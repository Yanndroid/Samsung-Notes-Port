.class public Lcom/samsung/android/sdk/pen/document/SpenPageDoc$BackgroundEffect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackgroundEffect"
.end annotation


# instance fields
.field public color:I

.field public margin:F

.field public space:F

.field public width:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc$BackgroundEffect;->color:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc$BackgroundEffect;->margin:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc$BackgroundEffect;->space:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc$BackgroundEffect;->width:F

    return-void
.end method
