.class Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$OnRGBCodeActionListener;,
        Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$OnModeChangeListener;,
        Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$ColorListener;
    }
.end annotation


# static fields
.field private static RECENT_COLOR_BUTTON_MAX:I = 0x6

.field private static final TAG:Ljava/lang/String; = "SpenColorPickerView"

.field public static final VIEW_MODE_GRADIENT:I = 0x1

.field public static final VIEW_MODE_SWATCH:I = 0x2


# instance fields
.field private mBlueInputView:Landroid/widget/EditText;

.field private mColorListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$ColorListener;

.field private mColorPickerFocusListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerFocusListener;

.field private mColorViewTouchUpListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentColorString:Ljava/lang/String;

.field private mCurrentColorView:Landroid/view/View;

.field private mEyedropperClickListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerEyedropperListener;

.field private mFocusViewID:I

.field private mGreenInputView:Landroid/widget/EditText;

.field private mHexInputView:Landroid/widget/EditText;

.field private mIsSupportEyedropper:Z

.field private mIsSupportRGBCode:Z

.field private mMode:I

.field private mModeButton:Landroid/widget/ImageButton;

.field private final mModeButtonClickListener:Landroid/view/View$OnClickListener;

.field private mModeChangeListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$OnModeChangeListener;

.field private mNewColorString:Ljava/lang/String;

.field private mNewColorView:Landroid/view/View;

.field private mOldHsv:[F

.field private final mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mOutlineColor:I

.field private mOutlineSize:I

.field private mPickerColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;

.field private mPickerContainer:Landroid/widget/LinearLayout;

.field private mPickerTabGroup:Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;

.field private mPickerView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewInterface;

.field private mPickerViewInfo:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;

.field private mRGBCodeControl:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;

.field private mRecentColorClickListener:Landroid/view/View$OnClickListener;

.field private mRecentColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenHSVColor;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentParent:Landroid/view/ViewGroup;

.field private mRedInputView:Landroid/widget/EditText;

.field private mRgbCodeActionListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$OnRGBCodeActionListener;

.field private mValueSeekBar:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[FLcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;ZZ)V
    .locals 8

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mFocusViewID:I

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$2;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mModeButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$3;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mRecentColorClickListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$5;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    iput-boolean p5, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mIsSupportRGBCode:Z

    iput-boolean p6, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mIsSupportEyedropper:Z

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;

    invoke-direct {v2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;

    aget v5, p3, v0

    const/4 p5, 0x1

    aget v6, p3, p5

    const/4 p6, 0x2

    aget v7, p3, p6

    const-string v3, "SpenColorPickerView"

    const/16 v4, 0xff

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->setColor(Ljava/lang/String;IFFF)V

    const/4 v1, 0x3

    new-array v1, v1, [F

    aget v2, p3, v0

    aput v2, v1, v0

    aget v2, p3, p5

    aput v2, v1, p5

    aget v2, p3, p6

    aput v2, v1, p6

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mOldHsv:[F

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mMode:I

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;

    invoke-direct {v1, p4}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerViewInfo:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_current_any:I

    new-array v2, p5, [Ljava/lang/Object;

    sget v3, Lcom/samsung/android/spen/R$string;->pen_string_color:I

    invoke-virtual {p4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-virtual {p4, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mCurrentColorString:Ljava/lang/String;

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_new_any:I

    new-array v2, p5, [Ljava/lang/Object;

    invoke-virtual {p4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p4, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mNewColorString:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpenColorPickerLayout() Color["

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p3, v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p5, p3, p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p5, p3, p6

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p5, "] mIsSupportEyedropper="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p5, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mIsSupportEyedropper:Z

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "SpenColorPickerView"

    invoke-static {p5, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->construct(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->changeMode(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mCurrentColorView:Landroid/view/View;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mOldHsv:[F

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->setDisplayColor(Landroid/view/View;[F)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mCurrentColorView:Landroid/view/View;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mOldHsv:[F

    iget-object p4, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mCurrentColorString:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->setColorAccessibility(Landroid/view/View;[FLjava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mNewColorView:Landroid/view/View;

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->setDisplayColor(Landroid/view/View;[F)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mNewColorView:Landroid/view/View;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mNewColorString:Ljava/lang/String;

    invoke-direct {p0, p1, p3, p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->setColorAccessibility(Landroid/view/View;[FLjava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->addEventListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventListener;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->toggleMode()V

    return-void
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$OnModeChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mModeChangeListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$OnModeChangeListener;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$OnRGBCodeActionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mRgbCodeActionListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$OnRGBCodeActionListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mMode:I

    return p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->isReleaseResource()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mRecentColors:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->notifyColorSelected(I)V

    return-void
.end method

.method public static synthetic access$700(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mColorViewTouchUpListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerEyedropperListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mEyedropperClickListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerEyedropperListener;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mFocusViewID:I

    return p0
.end method

.method private changeMode(I)V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerViewInfo:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;

    iget v5, v4, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->gradientCursorSizeDimen:I

    iget v4, v4, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->gradientCursorOutlineDimen:I

    invoke-direct {p1, v3, v5, v4}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;-><init>(Landroid/content/Context;II)V

    sget v3, Lcom/samsung/android/spen/R$drawable;->note_pensettings_picker_01:I

    sget v4, Lcom/samsung/android/spen/R$string;->pen_string_swatch_mode:I

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerViewInfo:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;

    iget v5, v5, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->gradientHeightDimen:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p1, v2}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/samsung/android/spen/R$string;->pen_string_select_color:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/samsung/android/spen/R$string;->pen_string_color_double_tap_to_apply:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerViewInfo:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;

    iget v6, v6, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->gradientModeBtnSize:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerViewInfo:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;

    iget v7, v7, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->gradientModeBtnStartMargin:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    move v8, v1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerViewInfo:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;

    iget p1, p1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->swatchTopMarginDimen:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerViewInfo:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;

    iget p1, p1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->swatchStartMarginDimen:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerViewInfo:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;

    iget p1, p1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->swatchEndMarginDimen:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerViewInfo:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;

    iget p1, p1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->swatchBottomMarginDimen:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerViewInfo:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;

    iget v5, v3, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->itemLayoutId:I

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;-><init>(Landroid/content/Context;IIIII)V

    sget v3, Lcom/samsung/android/spen/R$drawable;->note_pensettings_picker_02:I

    sget v4, Lcom/samsung/android/spen/R$string;->pen_string_spectrum_mode:I

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerViewInfo:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;

    iget v5, v5, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->swatchModeBtnSize:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerViewInfo:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;

    iget v5, v5, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->swatchModeBtnStartMargin:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const/4 v5, -0x2

    const/16 v8, 0x8

    :goto_0
    iget-object v9, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;

    invoke-interface {p1, v9}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewInterface;->setPickerColor(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;)V

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mColorViewTouchUpListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;

    invoke-interface {p1, v9}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewInterface;->setTouchUpListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    invoke-direct {v9, v10, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p1, v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewInterface;

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerContainer:Landroid/widget/LinearLayout;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewInterface;

    invoke-interface {v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewInterface;->release()V

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewInterface;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mModeButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v6, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v6, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mModeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mModeButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mModeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mModeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->setHoverText(Landroid/view/View;Ljava/lang/CharSequence;Z)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mValueSeekBar:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mValueSeekBar:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mColorViewTouchUpListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;->setTouchUpListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;)V

    :cond_3
    return-void
.end method

.method private checkViewConstainsPoint(Landroid/view/View;II)Z
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    aget v2, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v2, v6

    aget v0, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    invoke-direct {v1, v3, v5, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method private construct(Landroid/content/Context;)V
    .locals 12

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerViewInfo:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;

    iget v1, v1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->layoutId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_select_outline:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mOutlineSize:I

    sget v1, Lcom/samsung/android/spen/R$color;->setting_color_picker_adaptive_outline:I

    invoke-static {p1, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mOutlineColor:I

    sget v1, Lcom/samsung/android/spen/R$id;->display_current_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mCurrentColorView:Landroid/view/View;

    sget v1, Lcom/samsung/android/spen/R$id;->display_new_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mNewColorView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerViewInfo:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;

    iget v3, v3, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->colorDisplayRadius:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mCurrentColorView:Landroid/view/View;

    const/4 v5, 0x0

    int-to-float v1, v1

    const/4 v7, 0x0

    iget v9, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mOutlineSize:I

    iget v10, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mOutlineColor:I

    move v6, v1

    move v8, v1

    invoke-static/range {v5 .. v10}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilDrawable;->getRoundedRectDrawable(FFFFII)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mNewColorView:Landroid/view/View;

    const/4 v9, 0x0

    iget v10, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mOutlineSize:I

    iget v11, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mOutlineColor:I

    invoke-static/range {v6 .. v11}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilDrawable;->getRoundedRectDrawable(FFFFII)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mCurrentColorView:Landroid/view/View;

    int-to-float v1, v1

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mOutlineSize:I

    iget v10, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mOutlineColor:I

    move v5, v1

    move v7, v1

    invoke-static/range {v5 .. v10}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilDrawable;->getRoundedRectDrawable(FFFFII)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mNewColorView:Landroid/view/View;

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget v9, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mOutlineSize:I

    iget v10, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mOutlineColor:I

    move v6, v1

    move v8, v1

    invoke-static/range {v5 .. v10}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilDrawable;->getRoundedRectDrawable(FFFFII)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerViewInfo:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;

    iget v1, v1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->modeType:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    sget v1, Lcom/samsung/android/spen/R$id;->display_mode_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mModeButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mModeButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    if-ne v1, v4, :cond_2

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mMode:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->initTabGroup(Landroid/view/View;I)V

    :cond_2
    :goto_1
    sget v1, Lcom/samsung/android/spen/R$id;->color_pick_area:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerContainer:Landroid/widget/LinearLayout;

    sget v1, Lcom/samsung/android/spen/R$id;->color_picker_seek_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mValueSeekBar:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mCurrentColorView:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mOldHsv:[F

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->setDisplayColor(Landroid/view/View;[F)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mCurrentColorView:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mOldHsv:[F

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mCurrentColorString:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v5}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->setColorAccessibility(Landroid/view/View;[FLjava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mValueSeekBar:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;->setPickerColor(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;)V

    :cond_3
    sget v1, Lcom/samsung/android/spen/R$id;->seek_bar_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_4

    const/high16 v3, 0x41600000    # 14.0f

    new-array v5, v4, [Landroid/widget/TextView;

    aput-object v1, v5, v2

    invoke-static {p1, v3, v5}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->applyUpToLargeLevel(Landroid/content/Context;F[Landroid/widget/TextView;)V

    :cond_4
    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mIsSupportRGBCode:Z

    if-eqz p1, :cond_5

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mRGBCodeControl:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;

    sget p1, Lcom/samsung/android/spen/R$id;->rgb_code:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mHexInputView:Landroid/widget/EditText;

    sget p1, Lcom/samsung/android/spen/R$id;->red_code:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mRedInputView:Landroid/widget/EditText;

    sget p1, Lcom/samsung/android/spen/R$id;->green_code:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mGreenInputView:Landroid/widget/EditText;

    sget p1, Lcom/samsung/android/spen/R$id;->blue_code:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mBlueInputView:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mHexInputView:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mRedInputView:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mGreenInputView:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mBlueInputView:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mHexInputView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mRedInputView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mGreenInputView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mBlueInputView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mRGBCodeControl:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mHexInputView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mRedInputView:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mGreenInputView:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mBlueInputView:Landroid/widget/EditText;

    invoke-virtual {p1, v1, v3, v5, v6}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->setRGBView(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mRGBCodeControl:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->setPickerColor(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mRGBCodeControl:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->setEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :cond_5
    sget p1, Lcom/samsung/android/spen/R$id;->color_picker_recent_color_text_view:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;->MEDIUM:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;

    new-array v5, v4, [Landroid/widget/TextView;

    aput-object p1, v5, v2

    invoke-static {v1, v3, v5}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->setTypeFace(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;[Landroid/widget/TextView;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/samsung/android/spen/R$string;->pen_string_recent_color:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/samsung/android/spen/R$string;->pen_string_header:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6
    sget p1, Lcom/samsung/android/spen/R$id;->color_picker_recent_color_button_layout:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mRecentParent:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->setRecentColors([FI)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mRecentParent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->initEyedropperButton(Landroid/view/View;)V

    return-void
.end method

.method private initEyedropperButton(Landroid/view/View;)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mIsSupportEyedropper:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerViewInfo:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;

    iget v0, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->eyedropperBgResourceId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/spen/R$drawable;->spen_round_ripple:I

    invoke-static {v0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilImage;->setForegroundDrawable(Landroid/content/Context;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_color_spuit:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->setHoverText(Landroid/view/View;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$4;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private initTabGroup(Landroid/view/View;I)V
    .locals 8

    sget v0, Lcom/samsung/android/spen/R$id;->tab_swatch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/samsung/android/spen/R$id;->tab_spectrum:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/spen/R$string;->pen_string_swatches:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/spen/R$string;->pen_string_tab:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/samsung/android/spen/R$string;->pen_string_spectrum:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;

    invoke-direct {v3}, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerTabGroup:Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;

    invoke-virtual {v3, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->addTab(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerTabGroup:Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->addTab(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerTabGroup:Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    move v0, v2

    :cond_1
    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->select(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerTabGroup:Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$1;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->setOnTabSelectedListener(Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup$OnTabSelectedListener;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "SpenColorPickerView"

    const-string p2, "Tab button is not existed."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isReleaseResource()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSupportModeChange()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerViewInfo:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->modeType:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private notifyColorSelected(I)V
    .locals 7

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;

    const-string v2, "SpenColorPickerView"

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->getColor([F)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " notifyColorSelected() type"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Color["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    aget v6, v0, v5

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    aget v6, v0, v4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "] mColorListener is "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mColorListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$ColorListener;

    if-eqz v6, :cond_1

    const-string v6, "NOT NULL"

    goto :goto_0

    :cond_1
    const-string v6, "NULL"

    :goto_0
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mColorListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$ColorListener;

    if-eqz v1, :cond_2

    aget v2, v0, v3

    aget v3, v0, v5

    aget v0, v0, v4

    invoke-interface {v1, v2, v3, v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$ColorListener;->onColorSelected(FFFI)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    const-string p1, "hsv is null."

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private setColorAccessibility(Landroid/view/View;[FLjava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setDisplayColor(Landroid/view/View;[F)V
    .locals 2

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->HSVToColor([F)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->isAdaptiveColor(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mOutlineColor:I

    :goto_0
    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mOutlineSize:I

    invoke-virtual {p1, v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method private toggleMode()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "toggleMode() mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenColorPickerView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x2

    :cond_0
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->changeMode(I)V

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mMode:I

    return-void
.end method

.method private updateNewColor()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->getColor([F)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mNewColorView:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->setDisplayColor(Landroid/view/View;[F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mNewColorView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mNewColorString:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->setColorAccessibility(Landroid/view/View;[FLjava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mRecentColors:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mRecentColors:Ljava/util/List;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mOldHsv:[F

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewInterface;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewInterface;->release()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewInterface;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mValueSeekBar:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;->release()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mValueSeekBar:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mRGBCodeControl:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->release()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mRGBCodeControl:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;

    :cond_3
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mColorListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$ColorListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mModeChangeListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$OnModeChangeListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mEyedropperClickListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerEyedropperListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mRgbCodeActionListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$OnRGBCodeActionListener;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerTabGroup:Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerTabGroup:Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->removeEventListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;

    :cond_5
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerViewInfo:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mRecentParent:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mHexInputView:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mRedInputView:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mGreenInputView:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mBlueInputView:Landroid/widget/EditText;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mFocusViewID:I

    :cond_6
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    aget v4, v2, v3

    add-int/2addr v0, v4

    const/4 v4, 0x1

    aget v2, v2, v4

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mHexInputView:Landroid/widget/EditText;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mRedInputView:Landroid/widget/EditText;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mGreenInputView:Landroid/widget/EditText;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mBlueInputView:Landroid/widget/EditText;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerContainer:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    iget v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mFocusViewID:I

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v2

    iget v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mFocusViewID:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    instance-of v5, v2, Landroid/widget/EditText;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mHexInputView:Landroid/widget/EditText;

    invoke-direct {p0, v5, v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->checkViewConstainsPoint(Landroid/view/View;II)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mRedInputView:Landroid/widget/EditText;

    invoke-direct {p0, v5, v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->checkViewConstainsPoint(Landroid/view/View;II)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mGreenInputView:Landroid/widget/EditText;

    invoke-direct {p0, v5, v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->checkViewConstainsPoint(Landroid/view/View;II)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mBlueInputView:Landroid/widget/EditText;

    invoke-direct {p0, v5, v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->checkViewConstainsPoint(Landroid/view/View;II)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    :cond_1
    :goto_0
    if-nez v4, :cond_3

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->checkViewConstainsPoint(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getCurrentColor([F)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->getColor([F)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getFocusID()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mFocusViewID:I

    return v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mHexInputView:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mRedInputView:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mGreenInputView:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mBlueInputView:Landroid/widget/EditText;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mHexInputView:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getId()I

    move-result p2

    if-eq p1, p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mRedInputView:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getId()I

    move-result p2

    if-eq p1, p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mGreenInputView:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getId()I

    move-result p2

    if-eq p1, p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mBlueInputView:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getId()I

    move-result p2

    if-ne p1, p2, :cond_3

    :cond_1
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mFocusViewID:I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mColorPickerFocusListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerFocusListener;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerFocusListener;->onFocused()V

    goto :goto_0

    :cond_2
    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mFocusViewID:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne p2, p1, :cond_3

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mFocusViewID:I

    :cond_3
    :goto_0
    return-void
.end method

.method public setColor([F[F)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mOldHsv:[F

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mCurrentColorView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mOldHsv:[F

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->setDisplayColor(Landroid/view/View;[F)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mCurrentColorView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mOldHsv:[F

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mCurrentColorString:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->setColorAccessibility(Landroid/view/View;[FLjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->setCurrentColor([F)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "SpenColorPickerView"

    const-string p2, "Invalid param."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setColorListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$ColorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mColorListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$ColorListener;

    return-void
.end method

.method public setColorViewTouchUpListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mColorViewTouchUpListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewInterface;->setTouchUpListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mValueSeekBar:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mColorViewTouchUpListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;->setTouchUpListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;)V

    :cond_0
    return-void
.end method

.method public setCurrentColor([F)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;

    if-eqz v0, :cond_0

    const/16 v2, 0xff

    const/4 v1, 0x0

    aget v3, p1, v1

    const/4 v1, 0x1

    aget v4, p1, v1

    const/4 v1, 0x2

    aget v5, p1, v1

    const-string v1, "SpenColorPickerView"

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->setColor(Ljava/lang/String;IFFF)V

    :cond_0
    return-void
.end method

.method public setEyedropperClickListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerEyedropperListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mIsSupportEyedropper:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mEyedropperClickListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerEyedropperListener;

    :cond_0
    return-void
.end method

.method public setFocusListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerFocusListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mIsSupportRGBCode:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mColorPickerFocusListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerFocusListener;

    :cond_0
    return-void
.end method

.method public setMode(I)Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mMode:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->isSupportModeChange()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "SpenColorPickerView"

    const-string v0, "Not support mode change."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->toggleMode()V

    :cond_2
    return p1
.end method

.method public setModeChangeListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$OnModeChangeListener;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mPickerViewInfo:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;

    iget v0, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;->modeType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mModeChangeListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$OnModeChangeListener;

    :cond_1
    return-void
.end method

.method public setRecentColors([FI)V
    .locals 8

    if-lez p2, :cond_0

    array-length v0, p1

    mul-int/lit8 v1, p2, 0x3

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid Color array. size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " numOfColor="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpenColorPickerView"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mRecentColors:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mRecentColors:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mRecentColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, p2, :cond_2

    new-instance v3, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenHSVColor;

    mul-int/lit8 v4, v1, 0x3

    aget v5, p1, v4

    add-int/lit8 v6, v4, 0x1

    aget v6, p1, v6

    add-int/2addr v4, v2

    aget v2, p1, v4

    invoke-direct {v3, v5, v6, v2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenHSVColor;-><init>(FFF)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mRecentColors:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mContext:Landroid/content/Context;

    sget p2, Lcom/samsung/android/spen/R$color;->setting_color_picker_recent_shape_background_color:I

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result p1

    iget-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mIsSupportEyedropper:Z

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    sget p2, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->RECENT_COLOR_BUTTON_MAX:I

    sub-int/2addr p2, v1

    goto :goto_1

    :cond_3
    sget p2, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->RECENT_COLOR_BUTTON_MAX:I

    :goto_1
    move v3, v0

    :goto_2
    if-ge v3, p2, :cond_5

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mRecentParent:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mRecentColors:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mRecentColors:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenHSVColor;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenHSVColor;->getRGB()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mRecentColorClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/spen/R$string;->pen_palette_color_custom:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/spen/R$string;->pen_string_button:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_5
    return-void
.end method

.method public setRgbCodeActionListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$OnRGBCodeActionListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mIsSupportRGBCode:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->mRgbCodeActionListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$OnRGBCodeActionListener;

    :cond_0
    return-void
.end method

.method public update(Ljava/lang/String;IFFF)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update() who="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const-string p2, "%X"

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ["

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SpenColorPickerView"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->updateNewColor()V

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "SpenColorValueSeekBar"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    :cond_0
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->notifyColorSelected(I)V

    :cond_1
    return-void
.end method
