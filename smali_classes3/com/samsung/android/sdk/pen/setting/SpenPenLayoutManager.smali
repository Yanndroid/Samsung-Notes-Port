.class Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenPenLayoutManager"


# instance fields
.field private mActionButtonManager:Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;

.field private mAlphaView:Landroid/view/View;

.field private mColorView:Landroid/view/View;

.field private mContentBody:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mPatternView:Landroid/view/View;

.field private mPenView:Landroid/view/View;

.field private mSizeView:Landroid/view/View;

.field private mWidthView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mActionButtonManager:Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;

    return-void
.end method


# virtual methods
.method public addActionButton(Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mActionButtonManager:Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->addButton(Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 2

    const-string v0, "SpenPenLayoutManager"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mPenView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mSizeView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mAlphaView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mWidthView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mColorView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mPatternView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mContentBody:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mActionButtonManager:Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mActionButtonManager:Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;

    return-void
.end method

.method public getActionButtonCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mActionButtonManager:Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->getButtonCount()I

    move-result v0

    return v0
.end method

.method public getAlphaView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mAlphaView:Landroid/view/View;

    return-object v0
.end method

.method public getColorView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mColorView:Landroid/view/View;

    return-object v0
.end method

.method public getContentBody()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mContentBody:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPatternView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mPatternView:Landroid/view/View;

    return-object v0
.end method

.method public getPenView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mPenView:Landroid/view/View;

    return-object v0
.end method

.method public getPixelSize(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getSizeView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mSizeView:Landroid/view/View;

    return-object v0
.end method

.method public getWidthView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mWidthView:Landroid/view/View;

    return-object v0
.end method

.method public isContainMode(II)Z
    .locals 0

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public resetContentView()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mContentBody:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mActionButtonManager:Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->getActionLayout()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mContentBody:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mContentBody:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_3

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mContentBody:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v2, v0, :cond_2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mContentBody:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    :goto_1
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mPenView:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mSizeView:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mAlphaView:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mWidthView:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mColorView:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mPatternView:Landroid/view/View;

    return-void
.end method

.method public setAlphaView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mAlphaView:Landroid/view/View;

    return-void
.end method

.method public setAttributeVisibility(ZZ)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAttributeVisibility() alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPenLayoutManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mSizeView:Landroid/view/View;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mAlphaView:Landroid/view/View;

    if-nez v0, :cond_1

    const-string p1, "Invalid alpha status."

    :goto_0
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mWidthView:Landroid/view/View;

    if-nez v0, :cond_2

    const-string p1, "Invalid width status."

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mAlphaView:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_1

    :cond_3
    move p1, v1

    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mWidthView:Landroid/view/View;

    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    move v2, v1

    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method public setColorView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mColorView:Landroid/view/View;

    return-void
.end method

.method public setContentView(Landroid/widget/LinearLayout;)V
    .locals 2

    const-string v0, "SpenPenLayoutManager"

    const-string/jumbo v1, "setContentView()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mContentBody:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mActionButtonManager:Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->setContentView(Landroid/widget/LinearLayout;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "Invalid param."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPatternView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mPatternView:Landroid/view/View;

    return-void
.end method

.method public setPatternViewVisibility(Z)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPatternViewVisibility() isVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPenLayoutManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mColorView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mPatternView:Landroid/view/View;

    if-eqz v2, :cond_1

    const/16 v3, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mColorView:Landroid/view/View;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mPatternView:Landroid/view/View;

    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public setPenView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mPenView:Landroid/view/View;

    return-void
.end method

.method public setSizeView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mSizeView:Landroid/view/View;

    return-void
.end method

.method public setWidthView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->mWidthView:Landroid/view/View;

    return-void
.end method
