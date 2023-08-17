.class Lcom/samsung/android/sdk/pen/setting/SpenColorControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/colorpalette/OnActionButtonListener;
.implements Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangeListener;
.implements Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorButtonListener;
.implements Lcom/samsung/android/sdk/pen/setting/colorpalette/OnPaletteSwipeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnPaletteActionListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnViewInfoChangedListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenColorControl$ColorPickerModeChangedListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnColorChangeListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnActionListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnSubViewStateChangeListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;
    }
.end annotation


# static fields
.field private static final COLOR_SIZE:I = 0x3

.field public static final PICKER_WITH_ACTION_BUTTON:I = 0x0

.field public static final PICKER_WITH_CLOSE_BUTTON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SpenColorControl"


# instance fields
.field private mActionListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnActionListener;

.field private mCanvasBackgroundColor:[F

.field private mCanvasLayout:Landroid/view/ViewGroup;

.field private mCloseSpoidByUser:Z

.field private mColor:[F

.field private mColorChangeListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnColorChangeListener;

.field private mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

.field private final mColorPickerChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$ColorPickerChangedListener;

.field private mColorPickerCloseButtonType:I

.field private final mColorPickerEyedropperButtonListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$PickerEyedropperButtonListener;

.field private mColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

.field private mColorPickerViewMode:I

.field private mColorSettingInfo:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;

.field private mColorSettingPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup;

.field private final mColorSettingPopupEventListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup$IEventListener;

.field private mColorSettingSelectItemEventListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;

.field private mColorSpoid:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;

.field private final mColorSpoidActionListener:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$ActionListener;

.field private mColorTheme:I

.field private mContext:Landroid/content/Context;

.field private mCurrent:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

.field private mIsPickerSupportEyedropper:Z

.field private mIsPopupCloseByDone:Z

.field private mIsShowColorSpoid:Z

.field private mOrientation:I

.field private mPaletteActionListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnPaletteActionListener;

.field private mPaletteIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPickerModeChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$ColorPickerModeChangedListener;

.field private final mPopupDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private final mSettingPopupActionListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup$OnActionListener;

.field private final mSettingPopupSelectItemEventListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;

.field private mShowSpoidAfterInit:Z

.field private mSpoidInitComplete:Z

.field private mViewInfoChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnViewInfoChangedListener;

.field private mViewStateChangeListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnSubViewStateChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColor:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mCanvasBackgroundColor:[F

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$2;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mPopupDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mSpoidInitComplete:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mShowSpoidAfterInit:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mCloseSpoidByUser:Z

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$4;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSpoidActionListener:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$ActionListener;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$5;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorPickerChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$ColorPickerChangedListener;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$6;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorPickerEyedropperButtonListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$PickerEyedropperButtonListener;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$7;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSettingPopupEventListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup$IEventListener;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$8;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mSettingPopupActionListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup$OnActionListener;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$9;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mSettingPopupSelectItemEventListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mCanvasLayout:Landroid/view/ViewGroup;

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;->NONE:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mCurrent:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorPickerCloseButtonType:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mPaletteIDs:Ljava/util/List;

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mOrientation:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorPickerViewMode:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorTheme:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mIsPickerSupportEyedropper:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f7d70a4    # 0.99f
    .end array-data
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnSubViewStateChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mViewStateChangeListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnSubViewStateChangeListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mCurrent:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    return-object p0
.end method

.method public static synthetic access$1002(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mCloseSpoidByUser:Z

    return p1
.end method

.method public static synthetic access$102(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;)Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mCurrent:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    return-object p1
.end method

.method public static synthetic access$1100(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;[FIZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->applyColor([FIZZ)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorPickerCloseButtonType:I

    return p0
.end method

.method public static synthetic access$1402(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorPickerViewMode:I

    return p1
.end method

.method public static synthetic access$1500(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Lcom/samsung/android/sdk/pen/setting/SpenColorControl$ColorPickerModeChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mPickerModeChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$ColorPickerModeChangedListener;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mPaletteIDs:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->setPaletteList(Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic access$1800(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSettingSelectItemEventListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSettingInfo:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSettingPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSettingPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mIsPopupCloseByDone:Z

    return p0
.end method

.method public static synthetic access$402(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mIsPopupCloseByDone:Z

    return p1
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnActionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mActionListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnActionListener;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mCanvasLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->initDefaultColorSpoid(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mShowSpoidAfterInit:Z

    return p0
.end method

.method public static synthetic access$802(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mShowSpoidAfterInit:Z

    return p1
.end method

.method public static synthetic access$900(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)[F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColor:[F

    return-object p0
.end method

.method private applyColor([FIZZ)V
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->addRecentColor([F)V

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    invoke-virtual {p3, p2, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->setColor(I[F)V

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorChangeListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnColorChangeListener;

    if-eqz p3, :cond_1

    invoke-interface {p3, p2, p1, p4}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnColorChangeListener;->onColorChanged(I[FZ)V

    :cond_1
    return-void
.end method

.method private closeColorPicker()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mViewStateChangeListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnSubViewStateChangeListener;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;->PICKER:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mIsPopupCloseByDone:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnSubViewStateChangeListener;->onVisibilityChanged(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;ZZ)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    return-void
.end method

.method private closeColorSetting()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSettingPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSettingPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mViewStateChangeListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnSubViewStateChangeListener;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;->SETTING:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mIsPopupCloseByDone:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnSubViewStateChangeListener;->onVisibilityChanged(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;ZZ)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSettingPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup;

    return-void
.end method

.method private closeDialog(Landroid/app/Dialog;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "SpenColorControl"

    const-string v0, "dialog dismiss error."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private copyColor([F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColor:[F

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->copyColor([F[F)V

    return-void
.end method

.method private copyColor([F[F)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p1, v0, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private hideColorSpoid(Z)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSpoid:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->getColorSpoidSettingVisible()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSpoid:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->hide(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mIsShowColorSpoid:Z

    const/4 v0, 0x3

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->getColor([F)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColor:[F

    aget v2, v1, p1

    aget v3, v0, p1

    cmpl-float v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-nez v2, :cond_0

    aget v2, v1, v3

    aget v5, v0, v3

    cmpl-float v2, v2, v5

    if-nez v2, :cond_0

    aget v2, v1, v4

    aget v0, v0, v4

    cmpl-float v0, v2, v0

    if-nez v0, :cond_0

    const-string v0, "SpenColorControl"

    const-string v1, "same color. (Not update)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->getUiInfo(I)I

    move-result v0

    invoke-direct {p0, v1, v0, v3, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->applyColor([FIZZ)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mViewStateChangeListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnSubViewStateChangeListener;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;->EYEDROPPER:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mCloseSpoidByUser:Z

    invoke-interface {v0, v1, p1, v2}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnSubViewStateChangeListener;->onVisibilityChanged(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;ZZ)V

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mCloseSpoidByUser:Z

    :cond_1
    return-void
.end method

.method private initColorSpoid(II)V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mCanvasLayout:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSpoid:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorTheme:I

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->setColorTheme(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSpoid:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSpoidActionListener:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$ActionListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->setSpoidListener(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$ActionListener;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mSpoidInitComplete:Z

    return-void
.end method

.method private initColorSpoid(Z)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mContext:Landroid/content/Context;

    const-string v1, "SpenColorControl"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "mContext is null"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mCanvasLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    const-string p1, "Token mCanvasLayout is null"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/4 v1, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSpoid:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;

    if-eqz p1, :cond_3

    iget-boolean v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mIsShowColorSpoid:Z

    if-eqz v3, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->getPositionX()I

    move-result v2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSpoid:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->getPositionY()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSpoid:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSpoid:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_0
    invoke-direct {p0, v2, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->initColorSpoid(II)V

    return v1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSpoid:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;

    if-nez p1, :cond_5

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mCanvasLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->initDefaultColorSpoid(Landroid/view/ViewGroup;)V

    return v1

    :cond_4
    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mSpoidInitComplete:Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mCanvasLayout:Landroid/view/ViewGroup;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$3;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return v2

    :cond_5
    return v1
.end method

.method private initDefaultColorSpoid(Landroid/view/ViewGroup;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/spen/R$dimen;->color_spoid_default_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->color_spoid_default_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->initColorSpoid(II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mCloseSpoidByUser:Z

    return-void
.end method

.method private initPaletteList(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "SpenColorControl"

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSettingInfo:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mPaletteIDs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSettingInfo:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;->getMaxSelectCount()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mPaletteIDs:Ljava/util/List;

    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mPaletteIDs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "It is possible to add palette Max="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " SelectList size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance p1, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mPaletteIDs:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->getValidTaleIDs(Ljava/util/List;)Z

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->close()V

    :cond_3
    return v0

    :cond_4
    :goto_0
    const-string p1, "invalid state."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private refreshPaletteList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->initPaletteList(Ljava/util/List;)Z

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mPaletteIDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mPaletteIDs:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->setPaletteList(Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method private setPaletteList(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->setPaletteList(Ljava/util/List;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mViewInfoChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnViewInfoChangedListener;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mViewInfoChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnViewInfoChangedListener;

    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnViewInfoChangedListener;->onPaletteChanged(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private showEyedropper([FZZZ)Z
    .locals 4

    const-string v0, "SpenColorControl"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p3, :cond_0

    sget-object p3, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;->EYEDROPPER:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    invoke-virtual {p0, p3, v1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->setMode(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;Z)Z

    move-result p3

    if-nez p3, :cond_0

    const-string p1, "Not Chagned mode."

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mViewStateChangeListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnSubViewStateChangeListener;

    if-eqz p3, :cond_1

    sget-object v3, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;->EYEDROPPER:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    invoke-interface {p3, v3, v2}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnSubViewStateChangeListener;->onVisibilityChangeBefore(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;Z)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->copyColor([F)V

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->initColorSpoid(Z)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSpoid:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->HSVToColor([F)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->setColorSpoidColor(I)V

    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mSpoidInitComplete:Z

    if-nez p1, :cond_3

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mShowSpoidAfterInit:Z

    const-string/jumbo p1, "showColorSpoid() can be shown after init"

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSpoid:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p4}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->show(Z)V

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mIsShowColorSpoid:Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mViewStateChangeListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnSubViewStateChangeListener;

    if-eqz p1, :cond_4

    sget-object p2, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;->EYEDROPPER:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    invoke-interface {p1, p2, v2, v1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnSubViewStateChangeListener;->onVisibilityChanged(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;ZZ)V

    :cond_4
    return v2

    :cond_5
    return v1
.end method


# virtual methods
.method public addRecentColor([F)V
    .locals 2

    const-string v0, "SpenColorControl"

    const-string v1, "addRecentColor()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->addRecentColor([F)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mViewInfoChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnViewInfoChangedListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->getRecentColor()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnViewInfoChangedListener;->onRecentColorChanged(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    const-string v0, "SpenColorControl"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mPaletteIDs:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mActionListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnActionListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mViewStateChangeListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnSubViewStateChangeListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mPickerModeChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$ColorPickerModeChangedListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSettingSelectItemEventListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSpoid:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSpoid:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSettingPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup;

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->closeDialog(Landroid/app/Dialog;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSettingPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->closeDialog(Landroid/app/Dialog;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;->NONE:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mCurrent:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mPaletteIDs:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mCanvasLayout:Landroid/view/ViewGroup;

    return-void
.end method

.method public getColorPickerColor([F)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mCurrent:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;->PICKER:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->getCurrentColor([F)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not picker mode. mode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mCurrent:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenColorControl"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public getColorPickerViewMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorPickerViewMode:I

    return v0
.end method

.method public getColorSettingSelectList(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSettingPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup;->getSelectPaletteList(Ljava/util/List;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getEyedropperColor()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSpoid:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->getColorSpoidCurrentColor()I

    move-result v0

    return v0

    :cond_0
    const-string v0, "SpenColorControl"

    const-string v1, "getEyedropperColor() it\'s not possible case."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, -0x1000000

    return v0
.end method

.method public hide()V
    .locals 2

    const-string v0, "SpenColorControl"

    const-string v1, "hide()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;->NONE:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->setMode(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;Z)Z

    return-void
.end method

.method public hide(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mCurrent:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    if-ne v0, p1, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;->EYEDROPPER:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->hideColorSpoid(Z)V

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;->PICKER:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    if-ne p1, p2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->closeColorPicker()V

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;->SETTING:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    if-ne p1, p2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->closeColorSetting()V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public isSamePaletteList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mPaletteIDs:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mPaletteIDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public isVisible(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mCurrent:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onButtonClick(I)V
    .locals 5

    const/4 v0, 0x3

    new-array v1, v0, [F

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->getColor([F)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->getOpacity()I

    move-result v2

    const-string v3, "SpenColorControl"

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onButtonClick() which="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " currentColor is Transparent."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mCanvasBackgroundColor:[F

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->copyColor([F[F)V

    :cond_0
    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, " Click BUTTON_TYPE_SETTING"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->showColorSetting()Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mActionListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnActionListener;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnActionListener;->onColorSettingSelected()V

    goto :goto_0

    :cond_2
    const-string p1, " Click BUTTON_TYPE_EYEDROPPER"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->showEyedropper([FZZ)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mActionListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnActionListener;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnActionListener;->onEyedropperSelected()V

    goto :goto_0

    :cond_3
    const-string p1, " Click BUTTON_TYPE_PICKER"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->showColorPicker([F)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mActionListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnActionListener;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnActionListener;->onColorPickerSelected()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onColorChanged(I[F)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onColorChanged() info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " color["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget v3, p2, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    aget v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenColorControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorChangeListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnColorChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, v2}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnColorChangeListener;->onColorChanged(I[FZ)V

    :cond_0
    sget-object p1, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;->EYEDROPPER:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->isVisible(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSpoid:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->HSVToColor([F)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->setColorSpoidColor(I)V

    :cond_1
    return-void
.end method

.method public onColorSelected(IIZ)V
    .locals 1

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mActionListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnActionListener;

    if-eqz p3, :cond_0

    const/4 p3, 0x3

    new-array p3, p3, [F

    fill-array-data p3, :array_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    invoke-virtual {v0, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->getColor([F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mActionListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnActionListener;

    invoke-static {p3}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->HSVToColor([F)I

    move-result p3

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnActionListener;->onColorSelected(III)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public onConfigurationChanged(I)V
    .locals 1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mOrientation:I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mOrientation:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->setOrientationMode(I)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSpoid:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->setRotation()V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSettingPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSettingPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup;

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mOrientation:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup;->setOrientation(I)V

    :cond_2
    return-void
.end method

.method public onPaletteSwipe(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mPaletteActionListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnPaletteActionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnPaletteActionListener;->onPalettePageChanged(II)V

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mActionListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnActionListener;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnActionListener;->onPaletteSwipe(I)V

    :cond_1
    return-void
.end method

.method public resetColor()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->resetColor()V

    return-void
.end method

.method public setCanvasBackgroundColor([F)V
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

    const-string/jumbo v1, "setCanvasBackgroundColor() [%f, %f, %f]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenColorControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mCanvasBackgroundColor:[F

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->copyColor([F[F)V

    return-void
.end method

.method public setColor(I[F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->setColor(I[F)V

    return-void
.end method

.method public setColorInformation(Landroid/view/ViewGroup;Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;",
            "Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mCurrent:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;->NONE:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->hide(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;Z)Z

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;->getSwatchList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;->getMaxSelectCount()I

    move-result p3

    invoke-direct {v0, v1, p3}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;-><init>(Ljava/util/List;I)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSettingInfo:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mCanvasLayout:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    invoke-direct {p0, p4}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->refreshPaletteList(Ljava/util/List;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->setOnActionButtonListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnActionButtonListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->setOnColorChangeListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->setOnPaletteSwipeListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnPaletteSwipeListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->setOnColorButtonListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorButtonListener;)V

    iput-boolean p5, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mIsPickerSupportEyedropper:Z

    return-void
.end method

.method public setColorPickerCloseButtonType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorPickerCloseButtonType:I

    return-void
.end method

.method public setColorPickerColor([F)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mCurrent:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;->PICKER:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->setCurrentColor([F)V

    :cond_0
    return-void
.end method

.method public setColorPickerModeChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$ColorPickerModeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mPickerModeChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$ColorPickerModeChangedListener;

    return-void
.end method

.method public setColorPickerViewMode(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorPickerViewMode:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorPickerViewMode:I

    sget-object p1, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;->PICKER:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->isVisible(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorPickerViewMode:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->setViewMode(I)V

    :cond_1
    return-void
.end method

.method public setColorSettingSelectItemEventListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSettingSelectItemEventListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;

    return-void
.end method

.method public setColorSettingSelectList(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSettingPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup;->setSelectPaletteList(Ljava/util/List;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setColorTheme(I)V
    .locals 1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorTheme:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSettingPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup;->setColorTheme(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->setColorTheme(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSpoid:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->setColorTheme(I)V

    :cond_2
    return-void
.end method

.method public setCurrentPalette(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->setPalette(I)V

    :cond_0
    return-void
.end method

.method public setEyedropperColor(I)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSpoid:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->copyColor([F)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSpoid:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->HSVToColor([F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->setColorSpoidColor(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorChangeListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnColorChangeListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->getUiInfo(I)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorChangeListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnColorChangeListener;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColor:[F

    invoke-interface {v0, p1, v2, v1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnColorChangeListener;->onColorChanged(I[FZ)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public setEyedropperPosition(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSpoid:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->movePosition(II)V

    :cond_0
    return-void
.end method

.method public setMode(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mCurrent:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->hide(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;Z)Z

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mCurrent:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setOnActionListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mActionListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnActionListener;

    return-void
.end method

.method public setOnColorChangeListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnColorChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorChangeListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnColorChangeListener;

    return-void
.end method

.method public setOnPaletteChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnPaletteActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mPaletteActionListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnPaletteActionListener;

    return-void
.end method

.method public setOnSubViewStateChangeListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnSubViewStateChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mViewStateChangeListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnSubViewStateChangeListener;

    return-void
.end method

.method public setPaletteList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->initPaletteList(Ljava/util/List;)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mPaletteIDs:Ljava/util/List;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->setPaletteList(Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public setRecentColor(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->setRecentColor(Ljava/util/List;)Z

    :cond_0
    return-void
.end method

.method public setViewInfoChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnViewInfoChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mViewInfoChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnViewInfoChangedListener;

    return-void
.end method

.method public showColorPicker([F)Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mContext:Landroid/content/Context;

    const-string v1, "SpenColorControl"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "mContext is null."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;->PICKER:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->setMode(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;Z)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    const-string p1, "Not Changed mode."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mViewStateChangeListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnSubViewStateChangeListener;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0, v4}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnSubViewStateChangeListener;->onVisibilityChangeBefore(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;Z)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->copyColor([F)V

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mIsPopupCloseByDone:Z

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorPickerViewMode:I

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColor:[F

    iget-boolean v6, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mIsPickerSupportEyedropper:Z

    invoke-direct {p1, v1, v3, v5, v6}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;-><init>(Landroid/content/Context;I[FZ)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorTheme:I

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->setColorTheme(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorPickerChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$ColorPickerChangedListener;

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->setColorPickerChangeListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$ColorPickerChangedListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mActionListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnActionListener;

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->setColorPickerListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$ColorPickerListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mPopupDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorPickerCloseButtonType:I

    if-ne p1, v4, :cond_3

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$1;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->setCloseButton(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$OnCloseClickListener;)V

    :cond_3
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mOrientation:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->setOrientationMode(I)V

    :cond_4
    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mIsPickerSupportEyedropper:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorPickerEyedropperButtonListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$PickerEyedropperButtonListener;

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->setColorPickerEyedropperButtonListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$PickerEyedropperButtonListener;)V

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->show()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mViewStateChangeListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnSubViewStateChangeListener;

    if-eqz p1, :cond_6

    invoke-interface {p1, v0, v4, v2}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnSubViewStateChangeListener;->onVisibilityChanged(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;ZZ)V

    :cond_6
    return v2
.end method

.method public showColorSetting()Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mContext:Landroid/content/Context;

    const-string v1, "SpenColorControl"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "[Setting] mContext is null."

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;->SETTING:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->setMode(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;Z)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    const-string v0, "[Setting] Not Change mode. "

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSettingInfo:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;

    if-nez v3, :cond_2

    const-string v0, "[Setting] No Palette information."

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;->getMaxSelectCount()I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSettingInfo:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;->getSwatchList()Ljava/util/List;

    move-result-object v5

    if-lt v3, v4, :cond_7

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mViewStateChangeListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnSubViewStateChangeListener;

    if-eqz v1, :cond_4

    invoke-interface {v1, v0, v4}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnSubViewStateChangeListener;->onVisibilityChangeBefore(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;Z)V

    :cond_4
    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mIsPopupCloseByDone:Z

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6, v5, v3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSettingPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mPaletteIDs:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup;->setSelectPaletteList(Ljava/util/List;)Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSettingPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSettingPopupEventListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup$IEventListener;

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup;->setEventListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup$IEventListener;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSettingPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mPopupDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSettingPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mSettingPopupActionListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup$OnActionListener;

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup;->setOnActionListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup$OnActionListener;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSettingPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mSettingPopupSelectItemEventListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup;->setOnSelectItemEventListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;)V

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mOrientation:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSettingPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup;

    invoke-virtual {v3, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup;->setOrientation(I)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSettingPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup;

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorTheme:I

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup;->setColorTheme(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mColorSettingPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->mViewStateChangeListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnSubViewStateChangeListener;

    if-eqz v1, :cond_6

    invoke-interface {v1, v0, v4, v2}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnSubViewStateChangeListener;->onVisibilityChanged(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;ZZ)V

    :cond_6
    return v4

    :cond_7
    :goto_1
    const-string v0, "[Setting] Wrong Palette information."

    goto :goto_0
.end method

.method public showEyedropper([FZZ)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->showEyedropper([FZZZ)Z

    move-result p1

    return p1
.end method
