.class public Lcom/samsung/android/support/senl/nt/app/common/widget/HoverPopupTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "HoverPopupTextView"


# instance fields
.field public mBackgroundColor:I

.field private mForceHover:Z

.field public mHasBackgroundColor:Z

.field public mIsDarkBackground:Z

.field public mIsSdoc:Z

.field public mIsSupportInvertedBGColor:Z

.field public mIsTitle:Z

.field private mOriginalText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/HoverPopupTextView;->mForceHover:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/HoverPopupTextView;->mForceHover:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/HoverPopupTextView;->mForceHover:Z

    return-void
.end method

.method private dismissHoverPopup()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;->dismiss(Landroid/view/View;)V

    return-void
.end method

.method private isEllipsized()Z
    .locals 4

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    if-lez v0, :cond_1

    move v1, v3

    :cond_1
    return v1
.end method

.method private setHoverPopup()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$layout;->noteslist_hover_popup_text:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/HoverPopupTextView;->mOriginalText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/HoverPopupTextView;->mBackgroundColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/HoverPopupTextView;->mIsSupportInvertedBGColor:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/HoverPopupTextView;->mIsSdoc:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/HoverPopupTextView;->mHasBackgroundColor:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/HoverPopupTextView;->mIsDarkBackground:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/HoverPopupTextView;->mIsTitle:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$color;->noteslist_item_title_color_white:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$color;->noteslist_item_text_content_color_black_bg_note:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$color;->noteslist_item_text_content_color_has_bg_note:I

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$color;->noteslist_item_title_color:I

    :goto_1
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;->setCustomView(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHoverEvent# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HoverPopupTextView"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;->getHoverPopup(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/HoverPopupTextView;->mForceHover:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/common/widget/HoverPopupTextView;->isEllipsized()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/common/widget/HoverPopupTextView;->dismissHoverPopup()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/common/widget/HoverPopupTextView;->setHoverPopup()V

    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOriginalText(Ljava/lang/CharSequence;IZZZ)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/HoverPopupTextView;->mIsTitle:Z

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/HoverPopupTextView;->mOriginalText:Ljava/lang/CharSequence;

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/HoverPopupTextView;->mIsSdoc:Z

    iput-boolean p4, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/HoverPopupTextView;->mIsSupportInvertedBGColor:Z

    iput-boolean p5, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/HoverPopupTextView;->mForceHover:Z

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;->setPopupType(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/HoverPopupTextView;->mOriginalText:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/ContentUtils;->hasBackgroundColorNotes(IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/HoverPopupTextView;->mHasBackgroundColor:Z

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/samsung/android/support/senl/nt/app/R$color;->composer_main_background_dark:I

    invoke-virtual {p3, p4, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p3

    if-ne p2, p3, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/HoverPopupTextView;->mIsDarkBackground:Z

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$color;->noteslist_card_view_bg_color_black:I

    goto :goto_1

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/HoverPopupTextView;->mIsDarkBackground:Z

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/HoverPopupTextView;->mBackgroundColor:I

    goto :goto_3

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/HoverPopupTextView;->mHasBackgroundColor:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/HoverPopupTextView;->mIsDarkBackground:Z

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/HoverPopupTextView;->mIsSupportInvertedBGColor:Z

    if-nez p1, :cond_3

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$color;->background_color_white:I

    goto :goto_2

    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$color;->basic_list_item_bg_color:I

    :goto_1
    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getAntiGreenisFilteredColor(I)I

    move-result p2

    :goto_2
    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/HoverPopupTextView;->mBackgroundColor:I

    :goto_3
    return-void
.end method

.method public setTitleOriginalTitle(Ljava/lang/CharSequence;IZZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/app/common/widget/HoverPopupTextView;->setOriginalText(Ljava/lang/CharSequence;IZZZ)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/HoverPopupTextView;->mIsTitle:Z

    return-void
.end method
