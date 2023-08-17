.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mApplyToAllContainer:Landroid/view/View;

.field private final mApplyToAllData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ApplyToAllData;

.field private mApplyToAllDivider:Landroid/view/View;

.field private mOptionView:Landroid/view/View;

.field private mPageToChangeBothView:Landroid/widget/ImageView;

.field private mPageToChangeContainer:Landroid/view/View;

.field private final mPageToChangeData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/PageToChangeData;

.field private mPageToChangeLeftView:Landroid/widget/ImageView;

.field private mPageToChangeRightView:Landroid/widget/ImageView;

.field private mPageToChangeTextView:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ImageTemplateView"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CTLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ApplyToAllData;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ApplyToAllData;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->mApplyToAllData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ApplyToAllData;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/PageToChangeData;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/PageToChangeData;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->mPageToChangeData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/PageToChangeData;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ApplyToAllData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->mApplyToAllData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ApplyToAllData;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/PageToChangeData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->mPageToChangeData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/PageToChangeData;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;Landroidx/appcompat/widget/SwitchCompat;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->updateApplyToAllContainerContentDescription(Landroidx/appcompat/widget/SwitchCompat;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->updateViewTypeState()V

    return-void
.end method

.method public static bridge synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initApplyToAll()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mContainer:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->change_template_applytoall:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mViewStateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->getIsSingleMode()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mViewStateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->getHasPDFPage()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mViewStateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->isPickerMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mViewStateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->isSettingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->mApplyToAllData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ApplyToAllData;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ApplyToAllData;->getApplyToAll()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->updateApplyToAllContainerContentDescription(Landroidx/appcompat/widget/SwitchCompat;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->mApplyToAllContainer:Landroid/view/View;

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView$1;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;Landroidx/appcompat/widget/SwitchCompat;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->mApplyToAllContainer:Landroid/view/View;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->mApplyToAllContainer:Landroid/view/View;

    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView$2;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;Landroidx/appcompat/widget/SwitchCompat;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private initDivider()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->mPageToChangeContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->mApplyToAllDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->mApplyToAllContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->mOptionView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->mApplyToAllDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->mOptionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private initPageToChange()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->mPageToChangeLeftView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->mPageToChangeRightView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->mPageToChangeBothView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->updateViewTypeState()V

    return-void
.end method

.method private updateApplyToAllContainerContentDescription(Landroidx/appcompat/widget/SwitchCompat;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->change_template_apply_to_all_pages:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->string_comma:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mContext:Landroid/content/Context;

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$string;->on:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mContext:Landroid/content/Context;

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$string;->off:I

    :goto_0
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->base_string_switch:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->mApplyToAllContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateViewTypeState()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->mApplyToAllData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ApplyToAllData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ApplyToAllData;->getApplyToAll()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mViewStateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->getIsSingleMode()Z

    move-result v1

    if-nez v1, :cond_7

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mViewStateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->getIsTwoPage()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mViewStateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->getHasPDFPage()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mViewStateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->getHasPDFPageNext()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mViewStateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->isPickerMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->mPageToChangeContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->mPageToChangeData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/PageToChangeData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/PageToChangeData;->getPageToChange()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    sget v5, Lcom/samsung/android/support/senl/nt/composer/R$string;->change_template_page_to_change_both:I

    goto :goto_1

    :cond_2
    sget v5, Lcom/samsung/android/support/senl/nt/composer/R$string;->change_template_page_to_change_right:I

    goto :goto_1

    :cond_3
    :goto_0
    sget v5, Lcom/samsung/android/support/senl/nt/composer/R$string;->change_template_page_to_change_left:I

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->mPageToChangeTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->mPageToChangeLeftView:Landroid/widget/ImageView;

    if-ne v0, v4, :cond_4

    move v6, v4

    goto :goto_2

    :cond_4
    move v6, v1

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->mPageToChangeRightView:Landroid/widget/ImageView;

    if-ne v0, v3, :cond_5

    move v3, v4

    goto :goto_3

    :cond_5
    move v3, v1

    :goto_3
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->mPageToChangeBothView:Landroid/widget/ImageView;

    if-ne v0, v2, :cond_6

    move v1, v4

    :cond_6
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void

    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->mPageToChangeContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getIsApplyToAllChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->mApplyToAllContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->mApplyToAllData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ApplyToAllData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ApplyToAllData;->getApplyToAll()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIsPageToChangeOptionVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->mPageToChangeContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPageToChangeType()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->mPageToChangeData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/PageToChangeData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/PageToChangeData;->getPageToChange()I

    move-result v0

    return v0
.end method

.method public initLayout(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->initLayout(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mContainer:Landroid/view/View;

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->change_template_applytoall_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->mApplyToAllContainer:Landroid/view/View;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mContainer:Landroid/view/View;

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->change_template_applytoall_divider:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->mApplyToAllDivider:Landroid/view/View;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mContainer:Landroid/view/View;

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->change_template_page_setting_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->mOptionView:Landroid/view/View;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mContainer:Landroid/view/View;

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->change_template_page_to_change_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->mPageToChangeContainer:Landroid/view/View;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mContainer:Landroid/view/View;

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->page_to_change_sub_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->mPageToChangeTextView:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mContainer:Landroid/view/View;

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->page_to_change_left:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->mPageToChangeLeftView:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mContainer:Landroid/view/View;

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->page_to_change_right:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->mPageToChangeRightView:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mContainer:Landroid/view/View;

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->page_to_change_both:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->mPageToChangeBothView:Landroid/widget/ImageView;

    return-void
.end method

.method public initOptionView(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->initApplyToAll()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->initPageToChange()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->initDivider()V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->mApplyToAllData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ApplyToAllData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ApplyToAllData;->saveStateData()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->mPageToChangeData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/PageToChangeData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/PageToChangeData;->saveStateData()V

    :cond_1
    return-void
.end method

.method public setBottomPadding(IZ)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->change_template_essential_item_margin_top:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mDefaultRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    :goto_1
    invoke-virtual {p1, v0, v0, v0, p2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_2

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/TemplateTabView;->mAddedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method
