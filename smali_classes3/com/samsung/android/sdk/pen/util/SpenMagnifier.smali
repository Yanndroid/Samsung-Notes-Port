.class public Lcom/samsung/android/sdk/pen/util/SpenMagnifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/util/SpenMagnifier$MagnifierHandler;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/samsung/android/sdk/pen/util/SpenMagnifier$MagnifierHandler;

.field private mMagnifier:Landroid/widget/Magnifier;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenMagnifier;->mMagnifier:Landroid/widget/Magnifier;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/util/SpenMagnifier;->mVisible:Z

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenMagnifier;->mHandler:Lcom/samsung/android/sdk/pen/util/SpenMagnifier$MagnifierHandler;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/widget/Magnifier;

    invoke-direct {v0, p1}, Landroid/widget/Magnifier;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenMagnifier;->mMagnifier:Landroid/widget/Magnifier;

    new-instance p1, Lcom/samsung/android/sdk/pen/util/SpenMagnifier$MagnifierHandler;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/util/SpenMagnifier$MagnifierHandler;-><init>(Lcom/samsung/android/sdk/pen/util/SpenMagnifier;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/util/SpenMagnifier;->mHandler:Lcom/samsung/android/sdk/pen/util/SpenMagnifier$MagnifierHandler;

    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenMagnifier;->mMagnifier:Landroid/widget/Magnifier;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/Magnifier;->dismiss()V

    return-void
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/util/SpenMagnifier;->mVisible:Z

    return v0
.end method

.method public setVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/util/SpenMagnifier;->mVisible:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/util/SpenMagnifier;->mVisible:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/util/SpenMagnifier;->dismiss()V

    :cond_0
    return-void
.end method

.method public setVisibleDelayed(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenMagnifier;->mMagnifier:Landroid/widget/Magnifier;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenMagnifier;->mHandler:Lcom/samsung/android/sdk/pen/util/SpenMagnifier$MagnifierHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenMagnifier;->mHandler:Lcom/samsung/android/sdk/pen/util/SpenMagnifier$MagnifierHandler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public show(FFFFF)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenMagnifier;->mMagnifier:Landroid/widget/Magnifier;

    if-eqz v0, :cond_7

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/util/SpenMagnifier;->mVisible:Z

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {v0}, Landroid/widget/Magnifier;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v1, p4, v0

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_6

    add-float v1, p5, v0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_1

    goto :goto_2

    :cond_1
    sub-float/2addr p3, v0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_2

    move p1, v0

    :cond_2
    cmpl-float v0, p1, p3

    if-lez v0, :cond_3

    goto :goto_0

    :cond_3
    move p3, p1

    :goto_0
    cmpg-float p1, p2, p4

    if-gez p1, :cond_4

    move p2, p4

    :cond_4
    cmpl-float p1, p2, p5

    if-lez p1, :cond_5

    goto :goto_1

    :cond_5
    move p5, p2

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/util/SpenMagnifier;->mMagnifier:Landroid/widget/Magnifier;

    invoke-virtual {p1, p3, p5}, Landroid/widget/Magnifier;->show(FF)V

    return-void

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/util/SpenMagnifier;->mMagnifier:Landroid/widget/Magnifier;

    invoke-virtual {p1}, Landroid/widget/Magnifier;->dismiss()V

    :cond_7
    :goto_3
    return-void
.end method
