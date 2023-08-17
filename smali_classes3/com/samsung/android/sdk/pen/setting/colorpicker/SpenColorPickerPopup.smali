.class public Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$ColorPickerChangedListener;,
        Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$OnCloseClickListener;,
        Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$ColorPickerListener;,
        Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$PickerEyedropperButtonListener;
    }
.end annotation


# static fields
.field private static final COLOR_PICKER_LAYOUT_VERSION:Ljava/lang/String; = "setting_color_picker_layout"

.field private static final TAG:Ljava/lang/String; = "SpenColorPickerPopup"

.field private static final TYPE_CUSTOMIZE:I = 0x0

.field public static final VIEW_MODE_GRADIENT:I = 0x1

.field public static final VIEW_MODE_SWATCH:I = 0x2


# instance fields
.field private cancelTextView:Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

.field private doneTextView:Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

.field private final mCancelButtonClickListener:Landroid/view/View$OnClickListener;

.field private mCloseButton:Landroid/view/View;

.field private mCloseClickListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$OnCloseClickListener;

.field private mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

.field private mColorPickerChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$ColorPickerChangedListener;

.field private mColorPickerListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$ColorPickerListener;

.field private final mColorViewTouchUpListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentOrientation:I

.field private final mDoneButtonClickListener:Landroid/view/View$OnClickListener;

.field private final mEyedropperButtonClickListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerEyedropperListener;

.field private mEyedropperButtonListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$PickerEyedropperButtonListener;

.field private final mFocusListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerFocusListener;

.field private mIsKeyboardShowing:Z

.field private mIsSupportRGBCode:Z

.field private mParentLayout:Landroid/widget/RelativeLayout;

.field private final mPickerActionListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerActionListener;

.field private mPickerView:Landroid/view/View;

.field private final mPickerViewModeChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewModeChangedListener;

.field private final mRGBCodeActionListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$OnRGBCodeActionListener;

.field private mUtilLayout:Lcom/samsung/android/sdk/pen/util/SpenLayoutUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[FZ)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;-><init>(Landroid/content/Context;I[FZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[FZZ)V
    .locals 3

    sget v0, Lcom/samsung/android/spen/R$style;->ColorPickerPopupDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorPickerListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$ColorPickerListener;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mCurrentOrientation:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mIsKeyboardShowing:Z

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$1;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mEyedropperButtonClickListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerEyedropperListener;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$2;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mCancelButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$3;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mDoneButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$4;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mPickerViewModeChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewModeChangedListener;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$5;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mPickerActionListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerActionListener;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$6;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mRGBCodeActionListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$OnRGBCodeActionListener;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$9;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorViewTouchUpListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$10;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mFocusListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerFocusListener;

    const/16 v1, 0x1500

    const/4 v2, -0x1

    invoke-static {p0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->initDialogWindow(Landroid/app/Dialog;II)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mIsSupportRGBCode:Z

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->construct(Landroid/content/Context;I[FZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[F)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Lcom/samsung/android/spen/R$style;->ColorPickerPopupDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorPickerListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$ColorPickerListener;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mCurrentOrientation:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mIsKeyboardShowing:Z

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$1;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mEyedropperButtonClickListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerEyedropperListener;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$2;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mCancelButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$3;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mDoneButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$4;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mPickerViewModeChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewModeChangedListener;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$5;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mPickerActionListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerActionListener;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$6;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mRGBCodeActionListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$OnRGBCodeActionListener;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$9;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorViewTouchUpListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$10;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mFocusListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerFocusListener;

    const/16 v1, 0x1000

    const/4 v2, -0x1

    invoke-static {p0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->initDialogWindow(Landroid/app/Dialog;II)V

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mIsSupportRGBCode:Z

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->construct(Landroid/content/Context;I[FZZ)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$PickerEyedropperButtonListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mEyedropperButtonListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$PickerEyedropperButtonListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->doneAction()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->saveCurrentColorToRecent()V

    return-void
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$ColorPickerChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorPickerChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$ColorPickerChangedListener;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$ColorPickerListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorPickerListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$ColorPickerListener;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mPickerView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$OnCloseClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mCloseClickListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$OnCloseClickListener;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;)Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->notifyDataChanged()V

    return-void
.end method

.method public static synthetic access$900(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->notifyPickerUsage()V

    return-void
.end method

.method private construct(Landroid/content/Context;I[FZZ)V
    .locals 8

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    iget-boolean v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mIsSupportRGBCode:Z

    move-object v0, v7

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;-><init>(Landroid/content/Context;I[FZZZ)V

    iput-object v7, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    return-void
.end method

.method private doneAction()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->notifyDataChanged()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->notifyPickerUsage()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->saveCurrentColorToRecent()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->dismiss()V

    return-void
.end method

.method private getPickerLayoutWidth()I
    .locals 4

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mCurrentOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_color_area_min_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-ne v3, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    int-to-float v1, v2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRTL = TRUE dp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SpenColorPickerPopup"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$7;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method private init()V
    .locals 4

    const-string v0, "SpenColorPickerPopup"

    const-string v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->clearPickerView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mPickerView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mParentLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mParentLayout:Landroid/widget/RelativeLayout;

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->initView()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mCurrentOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_popup_margin_bottom:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mParentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mParentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->setListener()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mCloseClickListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$OnCloseClickListener;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->reconfigureTitleLayout()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorViewTouchUpListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->setColorViewTouchUpListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;->loadRecentColors()V

    return-void
.end method

.method private initView()V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    const-string v0, "SpenColorPickerPopup"

    const-string v1, "initView()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;-><init>()V

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mIsSupportRGBCode:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    sget v1, Lcom/samsung/android/spen/R$layout;->setting_color_picker_view_oneui30:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->layoutId:I

    iput v3, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->modeType:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/samsung/android/spen/R$layout;->setting_color_picker_view:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->layoutId:I

    iput v2, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->modeType:I

    :goto_0
    sget v1, Lcom/samsung/android/spen/R$layout;->setting_color_swatch_item:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->itemLayoutId:I

    sget v1, Lcom/samsung/android/spen/R$dimen;->color_picker_popup_content_point_size:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->gradientCursorSizeDimen:I

    sget v1, Lcom/samsung/android/spen/R$dimen;->color_picker_popup_content_point_outline:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->gradientCursorOutlineDimen:I

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_color_swatch_margin_start:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->gradientSelectorRadiusDimen:I

    sget v4, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_color_gradient_height:I

    iput v4, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->gradientHeightDimen:I

    sget v4, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_color_swatch_margin_top:I

    iput v4, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->swatchTopMarginDimen:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->swatchStartMarginDimen:I

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_color_swatch_margin_end:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->swatchEndMarginDimen:I

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_color_swatch_margin_bottom:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->swatchBottomMarginDimen:I

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_popup_gradient_mode_btn_size:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->gradientModeBtnSize:I

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_popup_gradient_mode_btn_margin_start:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->gradientModeBtnStartMargin:I

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_popup_swatch_mode_btn_size:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->swatchModeBtnSize:I

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_popup_swatch_mode_btn_margin_start:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->swatchModeBtnStartMargin:I

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_popup_color_display_radius:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->colorDisplayRadius:I

    sget v1, Lcom/samsung/android/spen/R$drawable;->color_picker_recent_eyedropper:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->eyedropperBgResourceId:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mUtilLayout:Lcom/samsung/android/sdk/pen/util/SpenLayoutUtil;

    const-string/jumbo v4, "setting_color_picker_layout"

    invoke-virtual {v1, v4}, Lcom/samsung/android/sdk/pen/util/SpenLayoutUtil;->getLayout(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mParentLayout:Landroid/widget/RelativeLayout;

    sget v4, Lcom/samsung/android/spen/R$id;->popup_content_view:I

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->initPickerView(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mPickerView:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->getPickerLayoutWidth()I

    move-result v0

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v0, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mPickerView:Landroid/view/View;

    invoke-virtual {v1, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mParentLayout:Landroid/widget/RelativeLayout;

    sget v1, Lcom/samsung/android/spen/R$id;->color_picker_button_cancel:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->cancelTextView:Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mParentLayout:Landroid/widget/RelativeLayout;

    sget v1, Lcom/samsung/android/spen/R$id;->color_picker_button_done:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->doneTextView:Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;->MEDIUM:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;

    const/4 v5, 0x2

    new-array v6, v5, [Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->cancelTextView:Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

    aput-object v7, v6, v2

    aput-object v0, v6, v3

    invoke-static {v1, v4, v6}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->setTypeFace(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;[Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mContext:Landroid/content/Context;

    const/high16 v1, 0x41900000    # 18.0f

    new-array v4, v5, [Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->cancelTextView:Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->doneTextView:Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

    aput-object v5, v4, v3

    invoke-static {v0, v1, v4}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->applyUpToLargeLevel(Landroid/content/Context;F[Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->cancelTextView:Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/spen/R$string;->pen_string_cancel:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/spen/R$string;->pen_string_button:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->doneTextView:Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/samsung/android/spen/R$string;->pen_string_done:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->cancelTextView:Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->setButtonShapeEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->doneTextView:Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->setButtonShapeEnabled(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mParentLayout:Landroid/widget/RelativeLayout;

    sget v1, Lcom/samsung/android/spen/R$id;->content_main:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(I)V

    :cond_1
    return-void
.end method

.method private notifyDataChanged()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorPickerChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$ColorPickerChangedListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v1, v0, [F

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->getCurrentColor([F)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget v4, v1, v3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aget v4, v1, v3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v4, 0x2

    aget v5, v1, v4

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->HSVToColor([F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    const-string v0, "HSV[%f,%f,%f] %08X"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SpenColorPickerPopup"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    aget v0, v1, v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HSV is wrong. current="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " change=1"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    aput v4, v1, v3

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorPickerChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$ColorPickerChangedListener;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->HSVToColor([F)I

    move-result v2

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$ColorPickerChangedListener;->onColorChanged(I[F)V

    return-void
.end method

.method private notifyPickerUsage()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorPickerListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$ColorPickerListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$ColorPickerListener;->onColorPickerUsage(I)V

    return-void
.end method

.method private reInitView()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->doneTextView:Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mIsSupportRGBCode:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->updateSIPState()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->getViewFocusID()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mParentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    instance-of v4, v2, Landroid/widget/EditText;

    if-eqz v4, :cond_2

    move-object v4, v2

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v5

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v6

    if-ne v5, v6, :cond_1

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    iget-boolean v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mIsKeyboardShowing:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mContext:Landroid/content/Context;

    const/4 v6, 0x2

    invoke-static {v5, v2, v6}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilSIP;->showSoftInput(Landroid/content/Context;Landroid/view/View;I)Z

    goto :goto_2

    :cond_2
    move v4, v3

    :cond_3
    :goto_2
    const/4 v2, 0x3

    new-array v2, v2, [F

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    invoke-virtual {v5, v2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->getCurrentColor([F)Z

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->init()V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    invoke-virtual {v5, v2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->setCurrentColor([F)V

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->doneTextView:Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mIsSupportRGBCode:Z

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mParentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    if-eq v4, v3, :cond_5

    move-object v2, v0

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setSelection(I)V

    :cond_5
    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mIsKeyboardShowing:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilSIP;->isSIPShowing(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilSIP;->showSoftInput(Landroid/content/Context;Landroid/view/View;I)Z

    goto :goto_3

    :cond_6
    const-string v1, "SpenColorPickerPopup"

    const-string v2, "reInitView() - lost focus view"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilSIP;->forceHideSoftInput(Landroid/content/Context;Landroid/view/View;)Z

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->updateSIPState()V

    :cond_7
    :goto_3
    return-void
.end method

.method private reconfigureTitleLayout()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mParentLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mCloseClickListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$OnCloseClickListener;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Lcom/samsung/android/spen/R$id;->color_picker_top_layout:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mParentLayout:Landroid/widget/RelativeLayout;

    sget v2, Lcom/samsung/android/spen/R$id;->color_picker_button_layout:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mParentLayout:Landroid/widget/RelativeLayout;

    sget v3, Lcom/samsung/android/spen/R$id;->picker_close_button:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mCloseButton:Landroid/view/View;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->doneTextView:Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->cancelTextView:Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mParentLayout:Landroid/widget/RelativeLayout;

    sget v1, Lcom/samsung/android/spen/R$id;->content_main:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_bottom_padding:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mCloseButton:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_close:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->setHoverText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mCloseButton:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$8;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private saveCurrentColorToRecent()V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->getCurrentColor([F)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;->saveRecentColor([F)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private setListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mPickerViewModeChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewModeChangedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->setViewModeChangedListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewModeChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mPickerActionListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerActionListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->setPickerActionListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerActionListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mEyedropperButtonClickListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerEyedropperListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->setPickerEyedropperActionListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerEyedropperListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mRGBCodeActionListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$OnRGBCodeActionListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->setRGBCodeActionListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$OnRGBCodeActionListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mFocusListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerFocusListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->setFocusListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerFocusListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->cancelTextView:Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mCancelButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->doneTextView:Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mDoneButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method private updateSIPState()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilSIP;->isSIPShowing(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mIsKeyboardShowing:Z

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->doneAction()V

    return-void
.end method

.method public close()V
    .locals 2

    const-string v0, "SpenColorPickerPopup"

    const-string v1, "Color picker close!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorPickerChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$ColorPickerChangedListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorPickerListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$ColorPickerListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mEyedropperButtonListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$PickerEyedropperButtonListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mCloseButton:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mPickerView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->cancelTextView:Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->doneTextView:Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mParentLayout:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mUtilLayout:Lcom/samsung/android/sdk/pen/util/SpenLayoutUtil;

    return-void
.end method

.method public dismiss()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mIsSupportRGBCode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mParentLayout:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilSIP;->forceHideSoftInput(Landroid/content/Context;Landroid/view/View;)Z

    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    const-string v0, "SpenColorPickerPopup"

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->close()V

    return-void
.end method

.method public getCurrentColor([F)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->getCurrentColor([F)Z

    move-result p1

    return p1

    :cond_0
    const-string p1, "SpenColorPickerPopup"

    const-string v0, "pickerControl is null."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public getViewMode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->getViewMode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->close()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mCurrentOrientation:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate() mCurrentOrientation="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mCurrentOrientation:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenColorPickerPopup"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/samsung/android/sdk/pen/util/SpenLayoutUtil;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/util/SpenLayoutUtil;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mUtilLayout:Lcom/samsung/android/sdk/pen/util/SpenLayoutUtil;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->init()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->dismiss()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mIsSupportRGBCode:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->updateSIPState()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilSIP;->forceHideSoftInput(Landroid/content/Context;Landroid/view/View;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mParentLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->getViewFocusID()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mParentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mIsKeyboardShowing:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilSIP;->showSoftInput(Landroid/content/Context;Landroid/view/View;I)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public setCloseButton(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$OnCloseClickListener;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mCloseClickListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$OnCloseClickListener;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->reconfigureTitleLayout()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorViewTouchUpListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->setColorViewTouchUpListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;)V

    :cond_0
    return-void
.end method

.method public setColorPickerChangeListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$ColorPickerChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorPickerChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$ColorPickerChangedListener;

    return-void
.end method

.method public setColorPickerEyedropperButtonListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$PickerEyedropperButtonListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mEyedropperButtonListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$PickerEyedropperButtonListener;

    return-void
.end method

.method public setColorPickerListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$ColorPickerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorPickerListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$ColorPickerListener;

    return-void
.end method

.method public setColorTheme(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setColorTheme() theme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenColorPickerPopup"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;->setColorTheme(I)Z

    :cond_0
    return-void
.end method

.method public setCurrentColor([F)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->setCurrentColor([F)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "SpenColorPickerPopup"

    const-string/jumbo v0, "setCurrentColor() invalid state."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOrientationMode(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setOrientationMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenColorPickerPopup"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mCurrentOrientation:I

    if-ne v0, p1, :cond_0

    const-string p1, "orientation is wrong. so not apply and return."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mCurrentOrientation:I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mParentLayout:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    const-string p1, "parnetLayout is not null."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->reInitView()V

    goto :goto_0

    :cond_1
    const-string p1, "parnetLayout is null."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setRecentColors([FI)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRecentColors() numOfColors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenColorPickerPopup"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;->setRecentColors([FI)V

    return-void
.end method

.method public setViewMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mColorPicker:Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->setViewMode(I)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mIsSupportRGBCode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mIsKeyboardShowing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilSIP;->forceHideSoftInput(Landroid/content/Context;Landroid/view/View;)Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->show()V

    return-void
.end method
