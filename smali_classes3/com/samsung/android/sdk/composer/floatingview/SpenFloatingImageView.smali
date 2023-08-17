.class public Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenFloatingTextView"


# instance fields
.field private mListener:Lcom/samsung/android/sdk/composer/floatingview/SpenImageFloatingViewListener;

.field private mNativeHolder:J


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingImageView;->mListener:Lcom/samsung/android/sdk/composer/floatingview/SpenImageFloatingViewListener;

    iput-wide p2, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingImageView;->mNativeHolder:J

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const-string v0, "SpenFloatingTextView"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingImageView;->mListener:Lcom/samsung/android/sdk/composer/floatingview/SpenImageFloatingViewListener;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingImageView;->mNativeHolder:J

    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingImageView;->mListener:Lcom/samsung/android/sdk/composer/floatingview/SpenImageFloatingViewListener;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingImageView;->mNativeHolder:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingImageView;->mListener:Lcom/samsung/android/sdk/composer/floatingview/SpenImageFloatingViewListener;

    iget-wide v2, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingImageView;->mNativeHolder:J

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/sdk/composer/floatingview/SpenImageFloatingViewListener;->isInScreen(JI)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SpenFloatingTextView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setHolder(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingImageView;->mNativeHolder:J

    return-void
.end method

.method public setListner(Lcom/samsung/android/sdk/composer/floatingview/SpenImageFloatingViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingImageView;->mListener:Lcom/samsung/android/sdk/composer/floatingview/SpenImageFloatingViewListener;

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVisibility :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenFloatingTextView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const v0, -0x50506

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
