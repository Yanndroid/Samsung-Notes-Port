.class public Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon$CustomPointerIconType;
    }
.end annotation


# static fields
.field public static final HOVER_POINTER_ICON_TYPE_CONTROL_MOVE:I = 0x450

.field public static final HOVER_POINTER_ICON_TYPE_CONTROL_RESIZE_0:I = 0x44c

.field public static final HOVER_POINTER_ICON_TYPE_CONTROL_RESIZE_1:I = 0x44d

.field public static final HOVER_POINTER_ICON_TYPE_CONTROL_RESIZE_2:I = 0x44e

.field public static final HOVER_POINTER_ICON_TYPE_CONTROL_RESIZE_3:I = 0x44f

.field public static final HOVER_POINTER_ICON_TYPE_CONTROL_ROTATE:I = 0x451

.field public static final HOVER_POINTER_ICON_TYPE_CONTROL_SELECTION:I = 0x452

.field public static final HOVER_POINTER_ICON_TYPE_CUSTOM_MIN:I = 0x3e8

.field public static final HOVER_POINTER_ICON_TYPE_DEFAULT:I = 0x1

.field public static final HOVER_POINTER_ICON_TYPE_ENGINE_CHANGE_STYLE:I = 0x4b3

.field public static final HOVER_POINTER_ICON_TYPE_ENGINE_COLOR_PICKER_:I = 0x4b2

.field public static final HOVER_POINTER_ICON_TYPE_ENGINE_CUTTER:I = 0x4b4

.field public static final HOVER_POINTER_ICON_TYPE_ENGINE_FILL_COLOR:I = 0x4b5

.field public static final HOVER_POINTER_ICON_TYPE_ENGINE_REMOVER:I = 0x4b0

.field public static final HOVER_POINTER_ICON_TYPE_ENGINE_SHAPE_RECOGNITION:I = 0x4b1

.field public static final HOVER_POINTER_ICON_TYPE_MORE:I = 0x3

.field public static final HOVER_POINTER_ICON_TYPE_NULL:I = 0x0

.field public static final HOVER_POINTER_ICON_TYPE_SCROLL_DOWN:I = 0x5

.field public static final HOVER_POINTER_ICON_TYPE_SCROLL_LEFT:I = 0x6

.field public static final HOVER_POINTER_ICON_TYPE_SCROLL_RIGHT:I = 0x7

.field public static final HOVER_POINTER_ICON_TYPE_SCROLL_UP:I = 0x4

.field public static final HOVER_POINTER_ICON_TYPE_TEXT:I = 0x2

.field public static final HOVER_POINTER_PEN_ICON_STYLE_CURVER:I = 0x4bb

.field public static final HOVER_POINTER_PEN_ICON_STYLE_LINE:I = 0x4ba

.field private static final TAG:Ljava/lang/String; = "SpenHoverPointerIcon"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field private mCurrentIconType:I

.field private mCurrentPoint:Landroid/graphics/Point;

.field private mCurrentToolType:I

.field private mCustomPointerIconType:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon$CustomPointerIconType;

.field private mHoverIconMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPenIconStyle:I

.field private mPointerIconWrapper:Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;

.field private final mToolTip:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mPointerIconWrapper:Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mHoverIconMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon$CustomPointerIconType;->CUSTOM_NONE:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon$CustomPointerIconType;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mCustomPointerIconType:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon$CustomPointerIconType;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mCurrentPoint:Landroid/graphics/Point;

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mCurrentToolType:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mCurrentIconType:I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mView:Landroid/view/View;

    new-instance p2, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mToolTip:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;

    const/4 p2, 0x1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/spen/libwrapper/FloatingFeatureWrapper;->create(Landroid/content/Context;)Lcom/samsung/android/spen/libwrapper/FloatingFeatureWrapper;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION"

    invoke-virtual {v1, v2}, Lcom/samsung/android/spen/libwrapper/FloatingFeatureWrapper;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    move v1, p2

    goto :goto_0

    :catch_0
    :cond_0
    move v1, v0

    :goto_0
    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "com.sec.feature.hovering_ui"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    move v1, p2

    :cond_2
    if-eqz v1, :cond_3

    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->create(Landroid/content/Context;)Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mPointerIconWrapper:Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;
    :try_end_1
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_3
    const-string p1, "SpenHoverPointerIcon"

    const-string p2, "hovering ui disabled. May be a feature problem."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/16 p1, 0x4ba

    iput p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mPenIconStyle:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->setHoverIconMap()V

    return-void
.end method

.method private convertToPlatformHoverIconType(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mHoverIconMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method private onRemoveHoverIcon()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->removeHoveringIcon()V

    return-void
.end method

.method private onSetHoverIcon(IIIF)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->isToolTipEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x3e8

    if-ge p2, v0, :cond_1

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->setHoveringSpenIcon(II)V

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->getHoveringIconDefaultPoint()Landroid/graphics/Point;

    move-result-object v0

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    const/4 p2, 0x0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mToolTip:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->getDrawableFillColorImage()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_3

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mToolTip:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;

    invoke-virtual {p1, p4, p3}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->getDrawableCutterImage(FI)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-instance p2, Landroid/graphics/Point;

    const/16 p3, 0x12c

    invoke-direct {p2, p3, p3}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mToolTip:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;

    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->getDrawableChangeStyleImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_3

    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mToolTip:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->getDrawableSpoidImage()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mToolTip:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->getHoveringIconSpoidPoint()Landroid/graphics/Point;

    move-result-object p2

    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->setHoveringSpenIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/Point;)V

    goto :goto_4

    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mToolTip:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->getDrawableShapeImage()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_3

    :pswitch_5
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mToolTip:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->getDrawableRemoverImage()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_3

    :pswitch_6
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mToolTip:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;

    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->getDrawableSelectionImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_3

    :pswitch_7
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mToolTip:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;

    const-string p2, "pen_basic_ic_rotating_mtrl_00"

    goto :goto_2

    :pswitch_8
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mToolTip:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;

    const-string p2, "pen_basic_ic_moving_mtrl"

    goto :goto_2

    :pswitch_9
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mToolTip:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;

    const-string p2, "pen_basic_ic_resizing_mtrl_03"

    goto :goto_2

    :pswitch_a
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mToolTip:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;

    const-string p2, "pen_basic_ic_resizing_mtrl_02"

    goto :goto_2

    :pswitch_b
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mToolTip:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;

    const-string p2, "pen_basic_ic_resizing_mtrl_01"

    goto :goto_2

    :pswitch_c
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mToolTip:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;

    const-string p2, "pen_basic_ic_resizing_mtrl_00"

    :goto_2
    invoke-virtual {p1, p2, p4, v0}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->getDrawableControlImage(Ljava/lang/String;FLandroid/graphics/Point;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_3
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->setHoveringSpenIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/Point;)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x44c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4b0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onSetHoverIcon(Ljava/lang/String;IFZF)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->isToolTipEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->setHoveringSpenIcon(Ljava/lang/String;IFZF)V

    return-void
.end method

.method private resetCustomInfo()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mCurrentPoint:Landroid/graphics/Point;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mCurrentToolType:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mCurrentIconType:I

    return-void
.end method

.method private setHoverIconMap()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mHoverIconMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->TYPE_NULL:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mHoverIconMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->TYPE_STYLUS_DEFAULT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mHoverIconMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->TYPE_TEXT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mHoverIconMap:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->TYPE_STYLUS_MORE:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mHoverIconMap:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->TYPE_STYLUS_SCROLL_UP:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mHoverIconMap:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->TYPE_STYLUS_SCROLL_DOWN:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mHoverIconMap:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->TYPE_STYLUS_SCROLL_LEFT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mHoverIconMap:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->TYPE_STYLUS_SCROLL_RIGHT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mPointerIconWrapper:Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mHoverIconMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mToolTip:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->close()V

    return-void
.end method

.method public getHoveringIconDefaultPoint()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mToolTip:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->getHoveringIconDefaultPoint()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getHoveringPenIconPoint(Ljava/lang/String;)Landroid/graphics/Point;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mToolTip:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;

    if-nez v0, :cond_0

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    return-object p1

    :cond_0
    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mPenIconStyle:I

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->getHoveringPenIconPoint(Ljava/lang/String;I)Landroid/graphics/Point;

    move-result-object p1

    return-object p1
.end method

.method public getPenIconStyle()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mPenIconStyle:I

    return v0
.end method

.method public isToolTipEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mToolTip:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public removeHoveringIcon()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mPointerIconWrapper:Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->resetCustomInfo()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mPointerIconWrapper:Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->removeHoveringSpenCustomIcon()V

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setHoveringSpenIcon(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mPointerIconWrapper:Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->isToolTipEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mCustomPointerIconType:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon$CustomPointerIconType;

    sget-object v1, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon$CustomPointerIconType;->CUSTOM_ICONTYPE:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon$CustomPointerIconType;

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->resetCustomInfo()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mCustomPointerIconType:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon$CustomPointerIconType;

    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mCurrentIconType:I

    if-ne v0, p1, :cond_2

    return-void

    :cond_2
    iput p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mCurrentIconType:I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mPointerIconWrapper:Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->setHoveringSpenIcon(Landroid/content/Context;Landroid/view/View;I)V
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public setHoveringSpenIcon(II)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mPointerIconWrapper:Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->isToolTipEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mCustomPointerIconType:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon$CustomPointerIconType;

    sget-object v1, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon$CustomPointerIconType;->CUSTOM_ICONTYPE_TOOLTYPE:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon$CustomPointerIconType;

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->resetCustomInfo()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mCustomPointerIconType:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon$CustomPointerIconType;

    :cond_1
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne p2, v0, :cond_3

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    if-ne p1, v3, :cond_5

    sget v1, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->TYPE_STYLUS_DEFAULT:I

    goto :goto_0

    :cond_3
    if-ne p2, v3, :cond_4

    if-eq p1, v2, :cond_4

    move p1, v3

    :cond_4
    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->convertToPlatformHoverIconType(I)I

    move-result v1

    :cond_5
    :goto_0
    iget p2, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mCurrentToolType:I

    if-ne p2, p1, :cond_6

    iget p2, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mCurrentIconType:I

    if-ne p2, v1, :cond_6

    return-void

    :cond_6
    iput p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mCurrentToolType:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mCurrentIconType:I

    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mPointerIconWrapper:Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mView:Landroid/view/View;

    invoke-virtual {p2, v0, v2, p1, v1}, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->setHoveringSpenIcon(Landroid/content/Context;Landroid/view/View;II)V
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_1
    return-void
.end method

.method public setHoveringSpenIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/Point;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mPointerIconWrapper:Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->isToolTipEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mCustomPointerIconType:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon$CustomPointerIconType;

    sget-object v1, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon$CustomPointerIconType;->CUSTOM_DRAWABLE:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon$CustomPointerIconType;

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->resetCustomInfo()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mCustomPointerIconType:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon$CustomPointerIconType;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mCurrentPoint:Landroid/graphics/Point;

    invoke-virtual {v0, p2}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mCurrentPoint:Landroid/graphics/Point;

    iget v1, p2, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mPointerIconWrapper:Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->setHoveringSpenIcon(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/Point;)V
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public setHoveringSpenIcon(Ljava/lang/String;IFZF)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mPointerIconWrapper:Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->isToolTipEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mToolTip:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;

    iget v7, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mPenIconStyle:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->getDrawablePenImage(Ljava/lang/String;IFZFI)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->getHoveringPenIconPoint(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->setHoveringSpenIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/Point;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPenIconStyle(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mPenIconStyle:I

    return-void
.end method

.method public setToolTipEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenHoverPointerIcon;->mToolTip:Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->setEnabled(Z)V

    return-void
.end method
