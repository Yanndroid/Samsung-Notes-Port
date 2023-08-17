.class public Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCheckBoxView:Landroid/widget/CheckBox;

.field private mDateText:Ljava/lang/String;

.field private mHolderType:I

.field private mIsEnable:Z

.field private mLastModifiedAt:J

.field private mPrevUuid:Ljava/lang/String;

.field private mRootCardView:Landroid/view/View;

.field private mTitleText:Ljava/lang/CharSequence;

.field private final mTouchPos:[F

.field private mUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->mTouchPos:[F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->mIsEnable:Z

    return-void
.end method

.method private inflateCheckBox()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->isCheckboxInflated()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->mRootCardView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->checkbox:I

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_checkbox:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/util/ViewModeUtils;->getInflatedView(Landroid/view/View;II)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->mCheckBoxView:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->inflateCheckBox()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->mCheckBoxView:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getDateText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->mDateText:Ljava/lang/String;

    return-object v0
.end method

.method public getHolderType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->mHolderType:I

    return v0
.end method

.method public getIsEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->mIsEnable:Z

    return v0
.end method

.method public getLastModifiedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->mLastModifiedAt:J

    return-wide v0
.end method

.method public getPrevUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->mPrevUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getRootCardView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->mRootCardView:Landroid/view/View;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->mTitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTouchPos()[F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->mTouchPos:[F

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method public isCheckboxInflated()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->mCheckBoxView:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCoeditExtraVisible(ZZ)V
    .locals 0

    return-void
.end method

.method public setCoeditLoadProgressVisible(ZZ)V
    .locals 0

    return-void
.end method

.method public setCoeditSpaceExtraVisible(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public setDateText(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->mDateText:Ljava/lang/String;

    return-object p0
.end method

.method public setDueDateViewVisible(J)V
    .locals 0

    return-void
.end method

.method public setEnable(Z)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->mIsEnable:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->mIsEnable:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->mRootCardView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->mRootCardView:Landroid/view/View;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->mRootCardView:Landroid/view/View;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->mRootCardView:Landroid/view/View;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-object p0
.end method

.method public setGcsExtraVisible(ZZZ)V
    .locals 0

    return-void
.end method

.method public setHolderType(I)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->mHolderType:I

    return-object p0
.end method

.method public setLastModifiedAt(J)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->mLastModifiedAt:J

    return-object p0
.end method

.method public setRootCardView(Landroid/view/View;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->mRootCardView:Landroid/view/View;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->mTitleText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTouchPos(FF)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->mTouchPos:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    return-void
.end method

.method public setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->mUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->mPrevUuid:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->mUuid:Ljava/lang/String;

    return-object p0
.end method
