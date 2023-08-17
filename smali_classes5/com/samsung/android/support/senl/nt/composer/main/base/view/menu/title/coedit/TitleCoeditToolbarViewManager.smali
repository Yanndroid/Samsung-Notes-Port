.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager$Contract;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCoeditGroupCountView:Landroid/view/View;

.field private final mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager$Contract;

.field private mTitleCoeditGuideTip:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditGuideTip;

.field private final mToolbarView:Landroid/view/View;

.field private previousMemberCount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TitleCoeditToolbarViewManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager$Contract;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->previousMemberCount:I

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->mToolbarView:Landroid/view/View;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager$Contract;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager$Contract;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->inflateCoeditGroupCountView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->mCoeditGroupCountView:Landroid/view/View;

    instance-of v0, p1, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar;

    const v0, 0x800003

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar;->addCustomView(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager$Contract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager$Contract;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->setGroupCountMeetButtonBgWidth()V

    return-void
.end method

.method public static bridge synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private inflateCoeditGroupCountView(Landroid/app/Activity;)Landroid/view/View;
    .locals 2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$layout;->comp_title_coedit_group_count_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private setGroupCountMeetButtonBgWidth()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->mToolbarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_title_coedit_meet_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->mToolbarView:Landroid/view/View;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$id;->coedit_group_count_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->mToolbarView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_title_coedit_meet_stroke_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->mToolbarView:Landroid/view/View;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$id;->coedit_group_count_meet:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_1
    return-void
.end method

.method private updateCoeditMeetBadge()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->mToolbarView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->coedit_group_count_meet:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->TAG:Ljava/lang/String;

    const-string v1, "updateCoeditMeetBadge# groupCountMeet is empty"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager$Contract;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager$Contract;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->isMeetNote()Z

    move-result v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCoeditMeetBadge# isMeetNote:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->mCoeditGroupCountView:Landroid/view/View;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_title_coedit_group_count_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;Landroid/view/View;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private updateGroupCountWriter()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->mCoeditGroupCountView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->coedit_group_count_writer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->TAG:Ljava/lang/String;

    const-string v1, "updateGroupCountWriter# groupCountWriter is empty"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager$Contract;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager$Contract;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->getTitleCoeditMemberListPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleCoeditMemberListPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleCoeditMemberListPresenter;->hasWriterMember()Z

    move-result v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateGroupCountWriter# groupCountWriter:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->mCoeditGroupCountView:Landroid/view/View;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_title_coedit_group_count_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager$2;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public getCoeditGroupCountWidth()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->mCoeditGroupCountView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->mCoeditGroupCountView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public getTitleCoeditGuideTip()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditGuideTip;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->mTitleCoeditGuideTip:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditGuideTip;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditGuideTip;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditGuideTip;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->mTitleCoeditGuideTip:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditGuideTip;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->mTitleCoeditGuideTip:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditGuideTip;

    return-object v0
.end method

.method public setTheme([IZ)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager$Contract;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->isCoeditNote()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager$Contract;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->isMeetNote()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->mToolbarView:Landroid/view/View;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$id;->coedit_group_count_meet_button_bg:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    aget v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->mToolbarView:Landroid/view/View;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$id;->coedit_group_count_button:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager$Contract;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager$Contract;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    if-eqz p2, :cond_2

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->comp_title_coedit_group_count_bg_dark:I

    goto :goto_0

    :cond_2
    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->comp_title_coedit_group_count_bg:I

    :goto_0
    invoke-virtual {v2, p2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->mToolbarView:Landroid/view/View;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->coedit_group_count_writer:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager$Contract;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->comp_title_coedit_writer:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_title_coedit_writer_stroke_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    aget p1, p1, v1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method

.method public updateCoeditGroupCount()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->mCoeditGroupCountView:Landroid/view/View;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->TAG:Ljava/lang/String;

    const-string v1, "updateCoeditGroupCount# mCoeditGroupCountView is empty"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager$Contract;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->isCoeditNote()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->mCoeditGroupCountView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->mCoeditGroupCountView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->coedit_group_count_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager$Contract;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager$Contract;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->getTitleCoeditMemberListPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleCoeditMemberListPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleCoeditMemberListPresenter;->getCoeditMemberCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->previousMemberCount:I

    const/4 v2, 0x2

    if-ge v0, v2, :cond_4

    if-lt v1, v2, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager$Contract;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->isStandAlone()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "a"

    goto :goto_1

    :cond_3
    const-string v0, "b"

    :goto_1
    const-string v2, "683"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iput v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->previousMemberCount:I

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->updateCoeditMeetBadge()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditToolbarViewManager;->updateGroupCountWriter()V

    return-void
.end method
