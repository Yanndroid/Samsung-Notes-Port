.class public Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;
.super Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout$ViewListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout$SelectionInfoChangedListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout$LoggingListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenSettingSelection"


# instance fields
.field private mBodyLayout:Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;

.field private mGSIMLoggingListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout$LoggingListener;

.field private mSelectionInfoChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout$SelectionInfoChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RelativeLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;->mGSIMLoggingListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout$LoggingListener;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;->construct(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout$LoggingListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;->mGSIMLoggingListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout$LoggingListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;->notifyDataChanged()V

    return-void
.end method

.method private construct(Landroid/content/Context;)V
    .locals 2

    const-string v0, "SpenSettingSelection"

    const-string v1, "construct"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;->initView(Landroid/content/Context;)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;->setVisibility(I)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 5

    sget v0, Lcom/samsung/android/spen/R$string;->pen_string_selection_mode:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setTitleText(I)Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_close_any:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lcom/samsung/android/spen/R$string;->pen_string_close_selection_mode_settings:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setCloseButtonDescription(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout$1;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setCloseButtonInfo(Landroid/view/View$OnClickListener;)Z

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;->mBodyLayout:Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_selection_layout_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_selection_layout_margin_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;->mBodyLayout:Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setContentView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;->mBodyLayout:Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout$2;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->setActionListener(Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout$OnActionListener;)V

    return-void
.end method

.method private notifyDataChanged()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDataChanged() changedListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;->mSelectionInfoChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout$SelectionInfoChangedListener;

    if-eqz v1, :cond_0

    const-string v1, "NOT NULL"

    goto :goto_0

    :cond_0
    const-string v1, "NULL"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingSelection"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;->mSelectionInfoChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout$SelectionInfoChangedListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;->mBodyLayout:Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->getInfo()Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout$SelectionInfoChangedListener;->onSelectionInfoChanged(Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const-string v0, "SpenSettingSelection"

    const-string v1, "close"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;->mBodyLayout:Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;->mBodyLayout:Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;->mGSIMLoggingListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout$LoggingListener;

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->close()V

    return-void
.end method

.method public getInfo()Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;->mBodyLayout:Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->getInfo()Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hideCloseButton()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->hideCloseButton()V

    return-void
.end method

.method public bridge synthetic requestCloseButtonAccessibilityFocus()Z
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->requestCloseButtonAccessibilityFocus()Z

    move-result v0

    return v0
.end method

.method public setInfo(Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;->mBodyLayout:Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->setInfo(Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;)V

    return-void
.end method

.method public setLayoutAnimation(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setAnimation(Z)V

    return-void
.end method

.method public setLoggingListener(Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout$LoggingListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;->mGSIMLoggingListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout$LoggingListener;

    :cond_0
    return-void
.end method

.method public setSelectionInfoChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout$SelectionInfoChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;->mSelectionInfoChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout$SelectionInfoChangedListener;

    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic setVisibilityChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$ViewListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setVisibilityChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$ViewListener;)V

    return-void
.end method
