.class public Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;
.super Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout$LoggingListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout$SpenColorSettingViewListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout$SpenColorPickerViewListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout$SpenPenSpuitViewListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout$ColorPickerChangedListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout$SpenPaletteChangedListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout$ChangeStyleInfoChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenSettingChangeStyleLayout"

.field public static final VIEW_MODE_BASIC:I = 0x2

.field public static final VIEW_MODE_EXTEND:I = 0x1


# instance fields
.field private mBaseContentTopMargin:I

.field private mChangeStyleImpl:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;

.field private mGSIMLoggingListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout$LoggingListener;

.field private mIsSupportEyedropper:Z

.field private mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;

.field private mVisibilityListener:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$ViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;Z)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Z
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;",
            ">;",
            "Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;-><init>(Landroid/content/Context;)V

    iput-boolean p6, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->mIsSupportEyedropper:Z

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->construct(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->setViewMode(I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;)Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->mChangeStyleImpl:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;)Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout$LoggingListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->mGSIMLoggingListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout$LoggingListener;

    return-object p0
.end method

.method private construct(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;",
            ">;",
            "Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;",
            ")V"
        }
    .end annotation

    const-string v0, "SpenSettingChangeStyleLayout"

    const-string v1, "construct() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->mChangeStyleImpl:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout$1;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->setModeChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl$ModeChangedListener;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->initView(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->mChangeStyleImpl:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->getColorView()Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->mIsSupportEyedropper:Z

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->initColorControl(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;ZLjava/util/List;Ljava/util/List;Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;)V

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout$2;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setOnColorChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnColorChangeListener;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_change_style_basic_content_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->mBaseContentTopMargin:I

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setContentView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->mChangeStyleImpl:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;

    iget-boolean v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->mIsSupportEyedropper:Z

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->initView(Landroid/view/ViewGroup;Z)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->mChangeStyleImpl:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->getSizeView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->mChangeStyleImpl:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->getColorView()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->mChangeStyleImpl:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->getNoFillView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->setContentView(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_close_any:I

    new-array p1, p1, [Ljava/lang/Object;

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_change_pen_style_settings:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, p1, v3

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setCloseButtonDescription(Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout$3;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setCloseButtonInfo(Landroid/view/View$OnClickListener;)Z

    return-void
.end method


# virtual methods
.method public addActionButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->addActionButton(Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->getActionButtonCount()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setCloseButtonVisibility(I)Z

    :cond_2
    return-void
.end method

.method public bridge synthetic addRecentColor([F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->addRecentColor([F)V

    return-void
.end method

.method public close()V
    .locals 2

    const-string v0, "SpenSettingChangeStyleLayout"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->mChangeStyleImpl:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->mChangeStyleImpl:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;

    return-void
.end method

.method public bridge synthetic closeColorPickerPopup()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->closeColorPickerPopup()V

    return-void
.end method

.method public bridge synthetic closeColorSettingPopup()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->closeColorSettingPopup()V

    return-void
.end method

.method public getActionButtonCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->getActionButtonCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic getColorPickerColor([F)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->getColorPickerColor([F)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getColorPickerViewMode()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->getColorPickerViewMode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getColorSettingSelectList(Ljava/util/List;)Z
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->getColorSettingSelectList(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getEyedropperColor()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->getEyedropperColor()I

    move-result v0

    return v0
.end method

.method public getInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->mChangeStyleImpl:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->getInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic hideCloseButton()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->hideCloseButton()V

    return-void
.end method

.method public bridge synthetic hideEyedropper()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->hideEyedropper()V

    return-void
.end method

.method public bridge synthetic isColorPickerPopupVisible()Z
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->isColorPickerPopupVisible()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isColorSettingPopupVisible()Z
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->isColorSettingPopupVisible()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isEyedropperVisible()Z
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->isEyedropperVisible()Z

    move-result v0

    return v0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVisibilityChanged() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingChangeStyleLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, p0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->mVisibilityListener:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$ViewListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->mVisibilityListener:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$ViewListener;

    invoke-interface {v0, p2}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$ViewListener;->onVisibilityChanged(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic requestCloseButtonAccessibilityFocus()Z
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->requestCloseButtonAccessibilityFocus()Z

    move-result v0

    return v0
.end method

.method public setCanvasBackground([F)V
    .locals 3
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const-string/jumbo v1, "setCanvasBackground() [%f, %f, %f]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingChangeStyleLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setCanvasBackgroundColor([F)V

    return-void
.end method

.method public setChangeStyleInfoChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout$ChangeStyleInfoChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->mChangeStyleImpl:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->setChangeStyleInfoChangedListener(Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager$ChangeStyleInfoChangedListener;)V

    return-void
.end method

.method public setColorPickerChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout$ColorPickerChangedListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setColorPickerViewModeChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$ColorPickerModeChangedListener;)V

    return-void
.end method

.method public bridge synthetic setColorPickerCloseButtonType(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setColorPickerCloseButtonType(I)V

    return-void
.end method

.method public bridge synthetic setColorPickerColor([F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setColorPickerColor([F)V

    return-void
.end method

.method public bridge synthetic setColorPickerViewMode(I)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setColorPickerViewMode(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setColorPickerViewModeChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$ColorPickerModeChangedListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setColorPickerViewModeChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$ColorPickerModeChangedListener;)V

    return-void
.end method

.method public bridge synthetic setColorPickerVisibilityChangeListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$SettingViewListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setColorPickerVisibilityChangeListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$SettingViewListener;)V

    return-void
.end method

.method public bridge synthetic setColorSettingSelectItemEventListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setColorSettingSelectItemEventListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;)V

    return-void
.end method

.method public bridge synthetic setColorSettingSelectList(Ljava/util/List;)Z
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setColorSettingSelectList(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setColorSettingVisibilityChangeListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$SettingViewListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setColorSettingVisibilityChangeListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$SettingViewListener;)V

    return-void
.end method

.method public setColorTheme(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setColorTheme() - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingChangeStyleLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setColorTheme(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->mChangeStyleImpl:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->setColorTheme(I)V

    return-void
.end method

.method public bridge synthetic setCurrentPalette(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setCurrentPalette(I)V

    return-void
.end method

.method public bridge synthetic setEyedropperActionListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$EyedropperActionListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setEyedropperActionListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$EyedropperActionListener;)V

    return-void
.end method

.method public bridge synthetic setEyedropperColor(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setEyedropperColor(I)V

    return-void
.end method

.method public bridge synthetic setEyedropperPosition(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setEyedropperPosition(II)V

    return-void
.end method

.method public bridge synthetic setEyedropperVisibilityChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$SettingViewListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setEyedropperVisibilityChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$SettingViewListener;)V

    return-void
.end method

.method public setInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;)V
    .locals 2
    .param p1    # Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "SpenSettingChangeStyleLayout"

    const-string/jumbo v1, "setInfo()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->mChangeStyleImpl:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->setInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->mChangeStyleImpl:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->getInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;

    iget p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->type:I

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->setMode(I)V

    :cond_1
    return-void
.end method

.method public setLayoutAnimation(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setAnimation(Z)V

    return-void
.end method

.method public setLoggingListener(Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout$LoggingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->mGSIMLoggingListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout$LoggingListener;

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setColorLogListener(Lcom/samsung/android/sdk/pen/setting/SpenColorSAListener;)V

    return-void
.end method

.method public setPalette(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setPalette(Ljava/util/List;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->mChangeStyleImpl:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->refreshColor()V

    return-void
.end method

.method public bridge synthetic setPaletteActionButtonListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnActionButtonListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setPaletteActionButtonListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnActionButtonListener;)V

    return-void
.end method

.method public bridge synthetic setPaletteActionListener(Lcom/samsung/android/sdk/pen/setting/SpenPaletteActionListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setPaletteActionListener(Lcom/samsung/android/sdk/pen/setting/SpenPaletteActionListener;)V

    return-void
.end method

.method public bridge synthetic setPaletteChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$PaletteChangedListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setPaletteChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$PaletteChangedListener;)V

    return-void
.end method

.method public bridge synthetic setRecentColor(Ljava/util/List;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setRecentColor(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic setRecentColorChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenRecentColorChangedListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setRecentColorChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenRecentColorChangedListener;)V

    return-void
.end method

.method public setRoundedBackground(FIII)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "setRoundedBackground() r=%f, bgColor=#%08X, stroke=%d, strokeColor=#%08X"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingChangeStyleLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setRoundedBackground(FIII)V

    return-void
.end method

.method public bridge synthetic setSelfClose(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setSelfClose(Z)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTitle() ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingChangeStyleLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setTitleText(Ljava/lang/CharSequence;)Landroid/widget/TextView;

    return-void
.end method

.method public setViewMode(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->changeViewMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->mBaseContentTopMargin:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setContentTopMargin(I)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setTitleVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setContentTopMargin(I)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setTitleVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setVisibility(I)V

    return-void
.end method

.method public setVisibilityChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$ViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->mVisibilityListener:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$ViewListener;

    return-void
.end method

.method public showColorPickerPopup()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->mChangeStyleImpl:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->getInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    move-result-object v0

    iget v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->type:I

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->strokeHSVColor:[F

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->fillHSVColor:[F

    :goto_0
    invoke-super {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->showColorPickerPopup([F)V

    return-void
.end method

.method public bridge synthetic showColorSettingPopup()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->showColorSettingPopup()V

    return-void
.end method

.method public showEyedropper()V
    .locals 2

    const-string v0, "SpenSettingChangeStyleLayout"

    const-string/jumbo v1, "showEyedropper()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->mChangeStyleImpl:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->getInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    move-result-object v0

    iget v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->type:I

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->strokeHSVColor:[F

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->fillHSVColor:[F

    :goto_0
    invoke-super {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->showEyedropper([F)V

    return-void
.end method
