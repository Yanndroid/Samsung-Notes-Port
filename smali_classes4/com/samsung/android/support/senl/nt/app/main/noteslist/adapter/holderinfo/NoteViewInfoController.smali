.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCoeditLoadContainer:Landroid/view/View;

.field private mCoeditProgressContainer:Landroid/view/View;

.field private mCoeditSpaceExtraContainer:Landroid/view/View;

.field private mDueDateView:Landroid/widget/TextView;

.field private mOwnerContainer:Landroid/view/View;

.field private mSharedNewBadgeContainer:Landroid/view/View;

.field private mUploadFailedContainer:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private inflateCoeditLoadView(Landroid/view/View;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->mCoeditLoadContainer:Landroid/view/View;

    if-nez v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->coedit_load_icon_view:I

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_coedit_load_icon_view:I

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/util/ViewModeUtils;->getInflatedView(Landroid/view/View;II)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->mCoeditLoadContainer:Landroid/view/View;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->mCoeditLoadContainer:Landroid/view/View;

    return-object p1
.end method

.method private inflateCoeditProgressView(Landroid/view/View;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->mCoeditProgressContainer:Landroid/view/View;

    if-nez v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->coedit_load_progress:I

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_coedit_load_progress:I

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/util/ViewModeUtils;->getInflatedView(Landroid/view/View;II)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->mCoeditProgressContainer:Landroid/view/View;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->mCoeditProgressContainer:Landroid/view/View;

    return-object p1
.end method

.method private inflateDueDateView(Landroid/view/View;)Landroid/widget/TextView;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->mDueDateView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->recycle_bin_due_date:I

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_recycle_bin_due_date:I

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/util/ViewModeUtils;->getInflatedView(Landroid/view/View;II)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->mDueDateView:Landroid/widget/TextView;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->mDueDateView:Landroid/widget/TextView;

    return-object p1
.end method

.method private inflateOwnerContainer(Landroid/view/View;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->mOwnerContainer:Landroid/view/View;

    if-nez v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->gcs_owner:I

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_gcs_owner:I

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/util/ViewModeUtils;->getInflatedView(Landroid/view/View;II)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->mOwnerContainer:Landroid/view/View;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->mOwnerContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->notes_icon_owner:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->mOwnerContainer:Landroid/view/View;

    return-object p1
.end method

.method private inflateSharedNewBadgeContainer(Landroid/view/View;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->mSharedNewBadgeContainer:Landroid/view/View;

    if-nez v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->gcs_new_badge:I

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_gcs_new_badge:I

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/util/ViewModeUtils;->getInflatedView(Landroid/view/View;II)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->mSharedNewBadgeContainer:Landroid/view/View;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->mSharedNewBadgeContainer:Landroid/view/View;

    return-object p1
.end method

.method private inflateSpaceExtra(Landroid/view/View;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->mCoeditSpaceExtraContainer:Landroid/view/View;

    if-nez v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->coedit_space_extra:I

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_coedit_space_extra:I

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/util/ViewModeUtils;->getInflatedView(Landroid/view/View;II)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->mCoeditSpaceExtraContainer:Landroid/view/View;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->mCoeditSpaceExtraContainer:Landroid/view/View;

    return-object p1
.end method

.method private inflateUploadFailedContainer(Landroid/view/View;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->mUploadFailedContainer:Landroid/view/View;

    if-nez v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->gcs_upload_failed:I

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_gcs_upload_failed:I

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/util/ViewModeUtils;->getInflatedView(Landroid/view/View;II)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->mUploadFailedContainer:Landroid/view/View;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->mUploadFailedContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->notes_icon_sync_fail:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->mUploadFailedContainer:Landroid/view/View;

    return-object p1
.end method

.method private setCoeditLoadVisible(Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->inflateCoeditLoadView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->setVisible(Landroid/view/View;Z)Z

    return-void
.end method

.method private setVisible(Landroid/view/View;Z)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public init(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->mOwnerContainer:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->mUploadFailedContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->mSharedNewBadgeContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->mCoeditSpaceExtraContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->mCoeditLoadContainer:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->mCoeditProgressContainer:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->mDueDateView:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public setCoeditExtraVisible(Landroid/view/View;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->setCoeditLoadVisible(Landroid/view/View;Z)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->inflateSharedNewBadgeContainer(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->setVisible(Landroid/view/View;Z)Z

    return-void
.end method

.method public setCoeditLoadProgressVisible(Landroid/view/View;ZZ)V
    .locals 2

    if-eqz p2, :cond_0

    const v0, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    if-nez p3, :cond_1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->setCoeditLoadVisible(Landroid/view/View;Z)V

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->inflateCoeditProgressView(Landroid/view/View;)Landroid/view/View;

    move-result-object p3

    invoke-direct {p0, p3, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->setVisible(Landroid/view/View;Z)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->mCoeditProgressContainer:Landroid/view/View;

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$id;->progress_downloading:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {p2}, Landroidx/appcompat/widget/SeslProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$color;->coedit_note_loading_progress:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p3

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p3, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->thumbnail_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->notes_grid_item_bottom_dim:I

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    const/4 p3, 0x0

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_3
    return-void
.end method

.method public setCoeditSpaceExtraVisible(Landroid/view/View;Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->inflateSpaceExtra(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->setVisible(Landroid/view/View;Z)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->mCoeditSpaceExtraContainer:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->coedit_member_count_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->setVisible(Landroid/view/View;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->mCoeditSpaceExtraContainer:Landroid/view/View;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->space_member_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->mCoeditSpaceExtraContainer:Landroid/view/View;

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->coedit_leader_badge:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->setVisible(Landroid/view/View;Z)Z

    return-void
.end method

.method public setDueDateViewVisible(Landroid/view/View;J)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->inflateDueDateView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->setVisible(Landroid/view/View;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/nt/model/utils/DocumentTimeUtils;->getRecycleBinDueDate(J)I

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->mDueDateView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$string;->notes_today:I

    :goto_0
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    if-ne p2, v1, :cond_2

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->mDueDateView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$string;->notes_tomorrow:I

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->mDueDateView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$plurals;->plurals_recycle_bin_due_date:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, p2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public setGcsExtraVisible(Landroid/view/View;ZZZ)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->inflateOwnerContainer(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->setVisible(Landroid/view/View;Z)Z

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->inflateUploadFailedContainer(Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->setVisible(Landroid/view/View;Z)Z

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->inflateSharedNewBadgeContainer(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, p4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NoteViewInfoController;->setVisible(Landroid/view/View;Z)Z

    return-void
.end method
