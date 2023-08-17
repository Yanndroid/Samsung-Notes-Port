.class Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;
.super Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/SpenPenSettingUI;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$ColorPickerModeChangedListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$PaletteChangedListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$EyedropperActionListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$SettingViewListener;
    }
.end annotation


# static fields
.field public static final PICKER_CLOSE_BY_ACTION_BUTTON:I = 0x0

.field public static final PICKER_CLOSE_BY_CLOSE_BUTTON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SpenSettingPopupLayout"


# instance fields
.field private mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

.field private mColorLogCollector:Lcom/samsung/android/sdk/pen/setting/SpenColorLogCollector;

.field private mColorPickerViewListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$SettingViewListener;

.field private mColorSettingViewListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$SettingViewListener;

.field private final mColorViewInfoChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnViewInfoChangedListener;

.field private mEyedropperActionListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$EyedropperActionListener;

.field private mEyedropperViewListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$SettingViewListener;

.field private mPaletteActionListener:Lcom/samsung/android/sdk/pen/setting/SpenPaletteActionListener;

.field private mPaletteChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$PaletteChangedListener;

.field private final mPalettePageActionListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnPaletteActionListener;

.field private mRecentColorChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenRecentColorChangedListener;

.field private mSelfClose:Z

.field private final mSubViewStateChangeListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnSubViewStateChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$1;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mSubViewStateChangeListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnSubViewStateChangeListener;

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$2;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorViewInfoChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnViewInfoChangedListener;

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$3;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mPalettePageActionListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnPaletteActionListener;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mSelfClose:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;)Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$PaletteChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mPaletteChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$PaletteChangedListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;)Lcom/samsung/android/sdk/pen/setting/SpenRecentColorChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mRecentColorChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenRecentColorChangedListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;)Lcom/samsung/android/sdk/pen/setting/SpenPaletteActionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mPaletteActionListener:Lcom/samsung/android/sdk/pen/setting/SpenPaletteActionListener;

    return-object p0
.end method


# virtual methods
.method public addRecentColor([F)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addRecentColor() color["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingPopupLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->addRecentColor([F)V

    return-void
.end method

.method public checkVisibilityChangedAfter(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;ZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkVisibilityChangedAfter() which="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " isVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isCloseByDone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingPopupLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    sget-object v1, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$4;->$SwitchMap$com$samsung$android$sdk$pen$setting$SpenColorControl$SubView:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 p3, 0x2

    if-eq p1, p3, :cond_2

    const/4 p3, 0x3

    if-eq p1, p3, :cond_1

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorSettingViewListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$SettingViewListener;

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorPickerViewListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$SettingViewListener;

    if-eqz p1, :cond_5

    :goto_1
    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$SettingViewListener;->onVisibilityChanged(I)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mEyedropperActionListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$EyedropperActionListener;

    if-eqz p1, :cond_4

    if-ne p2, v0, :cond_4

    if-eqz p3, :cond_4

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$EyedropperActionListener;->onCloseClicked()V

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mEyedropperViewListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$SettingViewListener;

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method public checkVisibilityChangedBefore(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkVisibilityChangedBefore() which="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " nextVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingPopupLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mSelfClose:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$4;->$SwitchMap$com$samsung$android$sdk$pen$setting$SpenColorControl$SubView:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->getActionButtonCount()I

    move-result p1

    if-nez p1, :cond_3

    if-nez p2, :cond_3

    const/16 p1, 0x8

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setVisibility(IZ)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->hideAnimation(Landroid/view/animation/Animation$AnimationListener;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public close()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mEyedropperViewListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$SettingViewListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorPickerViewListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$SettingViewListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorSettingViewListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$SettingViewListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mEyedropperActionListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$EyedropperActionListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mPaletteActionListener:Lcom/samsung/android/sdk/pen/setting/SpenPaletteActionListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mPaletteChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$PaletteChangedListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mRecentColorChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenRecentColorChangedListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorLogCollector:Lcom/samsung/android/sdk/pen/setting/SpenColorLogCollector;

    return-void
.end method

.method public closeColorPickerPopup()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->isColorPickerPopupVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->hide()V

    :cond_0
    return-void
.end method

.method public closeColorSettingPopup()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->isColorSettingPopupVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->hide()V

    :cond_0
    return-void
.end method

.method public getActionButtonCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getColorPickerColor([F)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->getColorPickerColor([F)Z

    move-result p1

    return p1
.end method

.method public getColorPickerViewMode()I
    .locals 2

    const-string v0, "SpenSettingPopupLayout"

    const-string v1, "getColorPickerViewMode()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->getColorPickerViewMode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getColorSettingSelectList(Ljava/util/List;)Z
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->getColorSettingSelectList(Ljava/util/List;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getEyedropperColor()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->getEyedropperColor()I

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x1000000

    :goto_0
    return v0
.end method

.method public hideEyedropper()V
    .locals 2

    const-string v0, "SpenSettingPopupLayout"

    const-string v1, "hideEyedropper()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->isEyedropperVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->hide()V

    :cond_0
    return-void
.end method

.method public initColorControl(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;ZLjava/util/List;Ljava/util/List;Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Z",
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

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    move-object v2, p3

    check-cast v2, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    move-object v1, p2

    move-object v3, p7

    move-object v4, p5

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->setColorInformation(Landroid/view/ViewGroup;Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;Ljava/util/List;Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-virtual {p1, p6}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->setRecentColor(Ljava/util/List;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mSubViewStateChangeListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnSubViewStateChangeListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->setOnSubViewStateChangeListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnSubViewStateChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorViewInfoChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnViewInfoChangedListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->setViewInfoChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnViewInfoChangedListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mPalettePageActionListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnPaletteActionListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->setOnPaletteChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnPaletteActionListener;)V

    return-void
.end method

.method public isColorPickerPopupVisible()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;->PICKER:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->isVisible(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;)Z

    move-result v0

    return v0
.end method

.method public isColorSettingPopupVisible()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;->SETTING:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->isVisible(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEyedropperVisible()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;->EYEDROPPER:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->isVisible(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged() + newConfig.orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingPopupLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->onConfigurationChanged(I)V

    return-void
.end method

.method public setCanvasBackgroundColor([F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->setCanvasBackgroundColor([F)V

    return-void
.end method

.method public setColorLogListener(Lcom/samsung/android/sdk/pen/setting/SpenColorSAListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenColorLogCollector;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/setting/SpenColorLogCollector;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorLogCollector:Lcom/samsung/android/sdk/pen/setting/SpenColorLogCollector;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorLogCollector;->setColorLogListener(Lcom/samsung/android/sdk/pen/setting/SpenColorSAListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorLogCollector:Lcom/samsung/android/sdk/pen/setting/SpenColorLogCollector;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->setOnActionListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnActionListener;)V

    return-void
.end method

.method public setColorPickerCloseButtonType(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->setColorPickerCloseButtonType(I)V

    return-void
.end method

.method public setColorPickerColor([F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->setColorPickerColor([F)V

    return-void
.end method

.method public setColorPickerViewMode(I)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setColorPickerViewMode() viewMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingPopupLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->setColorPickerViewMode(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public setColorPickerViewModeChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$ColorPickerModeChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->setColorPickerModeChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$ColorPickerModeChangedListener;)V

    return-void
.end method

.method public setColorPickerVisibilityChangeListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$SettingViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorPickerViewListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$SettingViewListener;

    return-void
.end method

.method public setColorSettingSelectItemEventListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->setColorSettingSelectItemEventListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;)V

    :cond_0
    return-void
.end method

.method public setColorSettingSelectList(Ljava/util/List;)Z
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->setColorSettingSelectList(Ljava/util/List;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setColorSettingVisibilityChangeListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$SettingViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorSettingViewListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$SettingViewListener;

    return-void
.end method

.method public setColorTheme(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->setColorTheme(I)V

    return-void
.end method

.method public setCurrentPalette(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCurrentPalette() paletteID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingPopupLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->setCurrentPalette(I)V

    return-void
.end method

.method public setEyedropperActionListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$EyedropperActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mEyedropperActionListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$EyedropperActionListener;

    return-void
.end method

.method public setEyedropperColor(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEyedropperColor() color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%X (%d)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingPopupLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->setEyedropperColor(I)Z

    return-void
.end method

.method public setEyedropperPosition(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->setEyedropperPosition(II)V

    return-void
.end method

.method public setEyedropperVisibilityChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$SettingViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mEyedropperViewListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$SettingViewListener;

    return-void
.end method

.method public setOnColorChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnColorChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->setOnColorChangeListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnColorChangeListener;)V

    return-void
.end method

.method public setPalette(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SpenSettingPopupLayout"

    const-string/jumbo v1, "setPalette()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->isSamePaletteList(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Same PaletteList. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->setPaletteList(Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setPaletteActionButtonListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnActionButtonListener;)V
    .locals 0

    return-void
.end method

.method public setPaletteActionListener(Lcom/samsung/android/sdk/pen/setting/SpenPaletteActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mPaletteActionListener:Lcom/samsung/android/sdk/pen/setting/SpenPaletteActionListener;

    return-void
.end method

.method public setPaletteChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$PaletteChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mPaletteChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$PaletteChangedListener;

    return-void
.end method

.method public setRecentColor(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRecentColor() recentList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "NULL"

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingPopupLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->setRecentColor(Ljava/util/List;)V

    return-void
.end method

.method public setRecentColorChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenRecentColorChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mRecentColorChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenRecentColorChangedListener;

    return-void
.end method

.method public setSelfClose(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mSelfClose:Z

    return-void
.end method

.method public showColorPickerPopup([F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->showColorPicker([F)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public showColorSettingPopup()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->showColorSetting()Z

    return-void
.end method

.method public showEyedropper([F)V
    .locals 2

    const-string v0, "SpenSettingPopupLayout"

    const-string/jumbo v1, "showEyedropper()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->showEyedropper([FZZ)Z

    :cond_1
    :goto_0
    return-void
.end method
