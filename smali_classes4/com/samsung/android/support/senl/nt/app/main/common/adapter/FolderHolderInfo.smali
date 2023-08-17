.class public Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mArrowIcon:Landroid/widget/ImageView;

.field private mArrowIconLayout:Landroid/view/View;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mColor:I

.field private mCount:I

.field private mCountView:Landroid/widget/TextView;

.field private mDepth:I

.field private mDrawerIcon:Landroid/view/View;

.field private mFolderItemContainer:Landroid/view/View;

.field private mFolderItemLayout:Landroid/view/View;

.field private mHasChild:Z

.field private mIconLayout:Landroid/view/View;

.field private mSelectedHolderLayout:Landroid/view/View;

.field private mSyncSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private mTitle:Ljava/lang/String;

.field private mTitleView:Landroid/widget/TextView;

.field private final mTouchPos:[F

.field private mTouchedView:Landroid/view/View;

.field private mUuid:Ljava/lang/String;

.field private mViewType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mTouchPos:[F

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mFolderItemContainer:Landroid/view/View;

    return-object p0
.end method

.method private inflateCheckBox()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mFolderItemContainer:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->checkbox:I

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_checkbox:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/util/ViewModeUtils;->getInflatedView(Landroid/view/View;II)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_0
    return-void
.end method

.method private inflateFolderSyncSwitch()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mSyncSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mFolderItemContainer:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->folder_to_sync_switch:I

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_folder_to_sync_switch:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/util/ViewModeUtils;->getInflatedView(Landroid/view/View;II)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mSyncSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getArrowIconLayout()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mArrowIconLayout:Landroid/view/View;

    return-object v0
.end method

.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->inflateCheckBox()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mColor:I

    return v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mCount:I

    return v0
.end method

.method public getCountView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mCountView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDepth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mDepth:I

    return v0
.end method

.method public getDrawerIcon()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mDrawerIcon:Landroid/view/View;

    return-object v0
.end method

.method public getFolderItemContainer()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mFolderItemContainer:Landroid/view/View;

    return-object v0
.end method

.method public getFolderItemLayout()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mFolderItemLayout:Landroid/view/View;

    return-object v0
.end method

.method public getFolderSyncSwitch()Landroidx/appcompat/widget/SwitchCompat;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->inflateFolderSyncSwitch()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mSyncSwitch:Landroidx/appcompat/widget/SwitchCompat;

    return-object v0
.end method

.method public getIconLayout()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mIconLayout:Landroid/view/View;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTouchPos()[F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mTouchPos:[F

    return-object v0
.end method

.method public getTouchedView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mTouchedView:Landroid/view/View;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mViewType:I

    return v0
.end method

.method public hasChild()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mHasChild:Z

    return v0
.end method

.method public isCheckboxVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFolderSyncSwitch()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mSyncSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setArrow(Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mArrowIcon:Landroid/widget/ImageView;

    return-void
.end method

.method public setArrowExpanded(ZLjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mIconLayout:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->ps_button_tts:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mIconLayout:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz p1, :cond_1

    sget v6, Lcom/samsung/android/support/senl/nt/app/R$string;->expand:I

    goto :goto_0

    :cond_1
    sget v6, Lcom/samsung/android/support/senl/nt/app/R$string;->collapse:I

    :goto_0
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mIconLayout:Landroid/view/View;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_folder_lef_rtl:I

    goto :goto_1

    :cond_2
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_folder_home_close:I

    goto :goto_1

    :cond_3
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_folder_home:I

    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_4
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mArrowIcon:Landroid/widget/ImageView;

    if-nez p2, :cond_5

    return-void

    :cond_5
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ea3d70a    # 0.32f

    const v1, 0x3f70a3d7    # 0.94f

    const v2, 0x3f19999a    # 0.6f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p2, v0, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const-wide/16 v0, 0xc8

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mArrowIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result p2

    if-eqz p2, :cond_6

    const/high16 p2, 0x42b40000    # 90.0f

    goto :goto_2

    :cond_6
    const/high16 p2, -0x3d4c0000    # -90.0f

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mArrowIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public setArrowIconLayout(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mArrowIconLayout:Landroid/view/View;

    return-void
.end method

.method public setBackground(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setBackground(IIZ)V

    return-void
.end method

.method public setBackground(IIZ)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mFolderItemContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$drawable;->folder_list_item_bg_round:I

    :goto_0
    invoke-static {p2, p3, v0}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_0
    const/4 p3, 0x1

    if-nez p1, :cond_1

    if-le p2, p3, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mFolderItemContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$drawable;->folder_list_item_bg_top:I

    goto :goto_0

    :cond_1
    sub-int/2addr p2, p3

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mFolderItemContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$drawable;->folder_list_item_bg_bottom:I

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mFolderItemContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$drawable;->folder_list_item_bg:I

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setColor(I)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mColor:I

    return-object p0
.end method

.method public setCount(I)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mCount:I

    return-object p0
.end method

.method public setCountView(Landroid/widget/TextView;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mCountView:Landroid/widget/TextView;

    return-object p0
.end method

.method public setDepth(I)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mDepth:I

    return-object p0
.end method

.method public setDrawerIcon(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mDrawerIcon:Landroid/view/View;

    return-void
.end method

.method public setFolderItemContainer(Landroid/view/View;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mFolderItemContainer:Landroid/view/View;

    return-object p0
.end method

.method public setFolderItemLayout(Landroid/view/View;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mFolderItemLayout:Landroid/view/View;

    return-object p0
.end method

.method public setHasChild(Z)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mHasChild:Z

    return-object p0
.end method

.method public setHighlightSelectedFolder(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mTitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const-string v1, "Roboto_Medium"

    goto :goto_0

    :cond_0
    const-string v1, "Roboto_Regular"

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/FontUtils;->setFont(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mSelectedHolderLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    return-void
.end method

.method public setIconLayout(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mIconLayout:Landroid/view/View;

    return-void
.end method

.method public setReorderSelected(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mFolderItemContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$dimen;->folder_list_item_reorder_elevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationZ(F)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mFolderItemContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$drawable;->reorder_selected_frame:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mFolderItemContainer:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationZ(F)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mFolderItemContainer:Landroid/view/View;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSelectedFolder(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mFolderItemContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public setSelectedHolderLayout(Landroid/view/View;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mSelectedHolderLayout:Landroid/view/View;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setTitleView(Landroid/widget/TextView;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mTitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method public setTouchInfo(FFLandroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mTouchPos:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mTouchedView:Landroid/view/View;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mUuid:Ljava/lang/String;

    return-object p0
.end method

.method public setViewType(I)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mViewType:I

    return-object p0
.end method

.method public toggleCheckBox(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->inflateCheckBox()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public toggleFolderSyncSwitch(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mSyncSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->inflateFolderSyncSwitch()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->mSyncSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method
