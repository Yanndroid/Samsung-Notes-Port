.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/AbsRtMenuPopupWindow;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "RtMenuTextSetting"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/AbsRtMenuPopupWindow;-><init>(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;->reverseViewSelectionState(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;->setSALogAlignment(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;Landroid/view/View;Landroid/view/View;I[I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;->updateAlignBtnState(Landroid/view/View;Landroid/view/View;I[I)V

    return-void
.end method

.method private initAlignButtons(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;)V
    .locals 5

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_rt_btn_align_left:I

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getAlign()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;->getValue()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    new-instance v4, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle$8;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle$8;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;Landroid/view/View;)V

    invoke-direct {p0, p1, v0, v1, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;->initButton(Landroid/view/View;IZLandroid/view/View$OnClickListener;)V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_rt_btn_align_center:I

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getAlign()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;->getValue()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    new-instance v4, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle$9;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle$9;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;Landroid/view/View;)V

    invoke-direct {p0, p1, v0, v1, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;->initButton(Landroid/view/View;IZLandroid/view/View$OnClickListener;)V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_rt_btn_align_right:I

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getAlign()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;->getValue()I

    move-result p2

    if-ne p2, v3, :cond_2

    move v2, v3

    :cond_2
    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle$10;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle$10;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;Landroid/view/View;)V

    invoke-direct {p0, p1, v0, v2, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;->initButton(Landroid/view/View;IZLandroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initBulletButton(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;)V
    .locals 2

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_rt_btn_dot:I

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getTask()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Task;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Task;->getValue()I

    move-result p2

    const/16 v1, 0x8

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle$12;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle$12;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;Landroid/view/View;)V

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;->initButton(Landroid/view/View;IZLandroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initButton(Landroid/view/View;IZLandroid/view/View$OnClickListener;)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setSelected(Z)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ToolbarUtil;->setRippleToolbar(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ToolbarUtil;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initFontStyleButtons(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;)V
    .locals 3

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_rt_btn_bold:I

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getBold()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Bold;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/ShapeStyleSpan;->getValue()Z

    move-result v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle$4;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;->initButton(Landroid/view/View;IZLandroid/view/View$OnClickListener;)V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_rt_btn_italic:I

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getItalic()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Italic;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/ShapeStyleSpan;->getValue()Z

    move-result v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle$5;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;->initButton(Landroid/view/View;IZLandroid/view/View$OnClickListener;)V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_rt_btn_underline:I

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getUnderline()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Underline;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/ShapeStyleSpan;->getValue()Z

    move-result v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle$6;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;->initButton(Landroid/view/View;IZLandroid/view/View$OnClickListener;)V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_rt_btn_strikethrough:I

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getStrikethrough()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Strikethrough;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/ShapeStyleSpan;->getValue()Z

    move-result p2

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle$7;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;)V

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;->initButton(Landroid/view/View;IZLandroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initIndentButton(Landroid/view/View;IZLandroid/view/View$OnClickListener;)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p3, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p2, 0x3e99999a    # 0.3f

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ToolbarUtil;->setRippleToolbar(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ToolbarUtil;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result p2

    if-eqz p2, :cond_1

    const/high16 p2, 0x43340000    # 180.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setRotationY(F)V

    :cond_1
    return-void
.end method

.method private initIndentButtons(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;)V
    .locals 5

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_rt_btn_indent:I

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getIndent()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;->getValue()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getIndent()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;->getValue()I

    move-result v1

    const/16 v4, 0x10

    if-ge v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    new-instance v4, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;)V

    invoke-direct {p0, p1, v0, v1, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;->initIndentButton(Landroid/view/View;IZLandroid/view/View$OnClickListener;)V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_rt_btn_outdent:I

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getIndent()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;->getValue()I

    move-result p2

    if-lez p2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;)V

    invoke-direct {p0, p1, v0, v2, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;->initIndentButton(Landroid/view/View;IZLandroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initNumberingButton(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;)V
    .locals 2

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_rt_btn_numbering:I

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getTask()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Task;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Task;->getValue()I

    move-result p2

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle$11;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle$11;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;Landroid/view/View;)V

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;->initButton(Landroid/view/View;IZLandroid/view/View$OnClickListener;)V

    return-void
.end method

.method private reverseViewSelectionState(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    return v0
.end method

.method private setSALogAlignment(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuItem;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;->isCoeditNote()Z

    move-result v0

    const-string v1, "4315"

    if-eqz v0, :cond_0

    const-string v0, "683"

    :goto_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ResourceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/sa/ComposerSAConstants;->SCREEN_NONE:Ljava/lang/String;

    const-string v1, "8120"

    goto :goto_0

    :cond_1
    const-string v0, "401"

    goto :goto_0

    :goto_1
    return-void
.end method

.method private updateAlignBtnState(Landroid/view/View;Landroid/view/View;I[I)V
    .locals 2
    .param p4    # [I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    invoke-virtual {p2}, Landroid/view/View;->isSelected()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p2, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuItem;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;->setAlign(I)V

    array-length p2, p4

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    if-ge v0, p2, :cond_0

    aget v1, p4, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getLogTag()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic hidePopup()Z
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/AbsRtMenuPopupWindow;->hidePopup()Z

    move-result v0

    return v0
.end method

.method public inflateView(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$layout;->comp_rt_popup_text_style:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public initButtons(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;)V
    .locals 3

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->text_style_scroll_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setShadowAlpha(Landroid/view/View;F)V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->close_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ToolbarUtil;->setRippleToolbar(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ToolbarUtil;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;->initBulletButton(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;->initNumberingButton(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;->initAlignButtons(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;->initFontStyleButtons(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuTextStyle;->initIndentButtons(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;)V

    return-void
.end method

.method public bridge synthetic initPopupWindow(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/AbsRtMenuPopupWindow;->initPopupWindow(Landroid/content/Context;)V

    return-void
.end method

.method public onClicked()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/AbsRtMenuPopup;->onClicked()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuItem;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;->isCoeditNote()Z

    move-result v0

    const-string v1, "3403"

    if-eqz v0, :cond_0

    const-string v0, "683"

    goto :goto_0

    :cond_0
    const-string v0, "401"

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic showPopup()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/AbsRtMenuPopupWindow;->showPopup()V

    return-void
.end method

.method public updateState(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;)V
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/AbsRtMenuPopupWindow;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/AbsRtMenuPopupWindow;->mDialogContainer:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_rt_btn_indent:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/AbsRtMenuPopupWindow;->mDialogContainer:Landroid/view/View;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_rt_btn_outdent:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getIndent()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;->getValue()I

    move-result v2

    const v3, 0x3e99999a    # 0.3f

    const/4 v4, 0x0

    if-gez v2, :cond_1

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getIndent()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;->getValue()I

    move-result v2

    const/16 v5, 0x10

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    if-lt v2, v5, :cond_3

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    invoke-virtual {v1, v7}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getIndent()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;->getValue()I

    move-result v2

    invoke-virtual {v0, v7}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    if-nez v2, :cond_2

    goto :goto_0

    :goto_1
    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_rt_btn_numbering:I

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getTask()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Task;->isNumbering()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/AbsRtMenuPopupWindow;->updateBtnState(IZ)V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_rt_btn_dot:I

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getTask()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Task;->isBullet()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/AbsRtMenuPopupWindow;->updateBtnState(IZ)V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_rt_btn_align_left:I

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getAlign()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;->isLeft()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/AbsRtMenuPopupWindow;->updateBtnState(IZ)V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_rt_btn_align_center:I

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getAlign()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;->isCenter()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/AbsRtMenuPopupWindow;->updateBtnState(IZ)V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_rt_btn_align_right:I

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getAlign()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Alignment;->isRight()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/AbsRtMenuPopupWindow;->updateBtnState(IZ)V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_rt_btn_bold:I

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getBold()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Bold;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/ShapeStyleSpan;->getValue()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/AbsRtMenuPopupWindow;->updateBtnState(IZ)V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_rt_btn_italic:I

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getItalic()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Italic;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/ShapeStyleSpan;->getValue()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/AbsRtMenuPopupWindow;->updateBtnState(IZ)V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_rt_btn_underline:I

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getUnderline()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Underline;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/ShapeStyleSpan;->getValue()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/AbsRtMenuPopupWindow;->updateBtnState(IZ)V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_rt_btn_strikethrough:I

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getStrikethrough()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Strikethrough;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/ShapeStyleSpan;->getValue()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/AbsRtMenuPopupWindow;->updateBtnState(IZ)V

    return-void
.end method
