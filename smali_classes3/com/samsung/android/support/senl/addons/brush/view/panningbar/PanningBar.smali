.class public Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/brush/binding/method/BMPanningBar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar$Companion;,
        Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar$GestureListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u0000 )2\u00020\u00012\u00020\u0002:\u0002)*B\u000f\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005B\u0019\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008B!\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0003\u001a\u00020\u0004H\u0002J\u0010\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\"H\u0014J\u0010\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u0017J\u0012\u0010\'\u001a\u00020\u001f2\u0008\u0010(\u001a\u0004\u0018\u00010\u0015H\u0016R\u000e\u0010\u000c\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;",
        "Landroid/widget/LinearLayout;",
        "Lcom/samsung/android/support/senl/addons/brush/binding/method/BMPanningBar;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "mCanvasMaxSize",
        "mGestureDetector",
        "Landroid/view/GestureDetector;",
        "getMGestureDetector",
        "()Landroid/view/GestureDetector;",
        "setMGestureDetector",
        "(Landroid/view/GestureDetector;)V",
        "mHorizontalPaddingLeft",
        "mListener",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/IPanningBarListener;",
        "mOrientation",
        "mPaint",
        "Landroid/graphics/Paint;",
        "mSpacing",
        "mStartX",
        "mStartY",
        "mStrokeWidth",
        "mVerticalPaddingTop",
        "init",
        "",
        "onDraw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "onTouchEvent",
        "",
        "event",
        "Landroid/view/MotionEvent;",
        "setListener",
        "listener",
        "Companion",
        "GestureListener",
        "ntAddons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static COLOR_GRAY:I

.field private static COLOR_WHITE:I

.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mCanvasMaxSize:I

.field private mGestureDetector:Landroid/view/GestureDetector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mHorizontalPaddingLeft:I

.field private mListener:Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/IPanningBarListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mOrientation:I

.field private mPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mSpacing:I

.field private mStartX:I

.field private mStartY:I

.field private mStrokeWidth:I

.field private mVerticalPaddingTop:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->Companion:Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getMListener$p(Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/IPanningBarListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mListener:Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/IPanningBarListener;

    return-object p0
.end method

.method public static final synthetic access$getMOrientation$p(Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mOrientation:I

    return p0
.end method

.method private final init(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar$GestureListener;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar$GestureListener;-><init>(Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mOrientation:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/addons/R$dimen;->base_panningbar_guideview_stroke_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mStrokeWidth:I

    sget v1, Lcom/samsung/android/support/senl/addons/R$dimen;->base_panningbar_guideview_stroke_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mSpacing:I

    sget v1, Lcom/samsung/android/support/senl/addons/R$dimen;->base_panningbar_guideview_stroke_padding_vertical:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mStrokeWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x3e800000    # 0.25f

    add-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mVerticalPaddingTop:I

    sget v1, Lcom/samsung/android/support/senl/addons/R$dimen;->base_panningbar_guideview_stroke_padding_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mHorizontalPaddingLeft:I

    sget v1, Lcom/samsung/android/support/senl/addons/R$dimen;->base_panningbar_guideview_start_x_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mStartX:I

    sget v1, Lcom/samsung/android/support/senl/addons/R$dimen;->base_panningbar_guideview_start_y_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mStartY:I

    sget v0, Lcom/samsung/android/support/senl/addons/R$color;->base_panningbar_white:I

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/common/util/ResourceUtils;->getColor(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->COLOR_WHITE:I

    sget v0, Lcom/samsung/android/support/senl/addons/R$color;->base_panningbar_gray:I

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/common/util/ResourceUtils;->getColor(Landroid/content/Context;I)I

    move-result p1

    sput p1, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->COLOR_GRAY:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/addons/R$integer;->base_canvas_size_max:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mCanvasMaxSize:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mStrokeWidth:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method public final getMGestureDetector()Landroid/view/GestureDetector;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mStrokeWidth:I

    int-to-float v2, v1

    const/high16 v3, 0x3e800000    # 0.25f

    add-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mStrokeWidth:I

    int-to-float v4, v2

    add-float/2addr v4, v3

    float-to-int v3, v4

    add-int/2addr v2, v3

    sub-int v7, v1, v2

    iget v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mCanvasMaxSize:I

    if-gt v7, v1, :cond_2

    if-le v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mStartX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mVerticalPaddingTop:I

    move v8, v1

    :goto_0
    if-ge v8, v7, :cond_2

    iget v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mStrokeWidth:I

    add-int v9, v8, v1

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget v2, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->COLOR_GRAY:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mStartX:I

    int-to-float v2, v1

    int-to-float v5, v8

    int-to-float v10, v0

    iget-object v6, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mPaint:Landroid/graphics/Paint;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, p1

    move v3, v5

    move v4, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget v2, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->COLOR_WHITE:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mStartX:I

    int-to-float v2, v1

    int-to-float v5, v9

    iget-object v6, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mPaint:Landroid/graphics/Paint;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, p1

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mSpacing:I

    add-int/2addr v8, v1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mStartY:I

    sub-int/2addr v7, v1

    iget v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mHorizontalPaddingLeft:I

    move v8, v1

    :goto_1
    if-ge v8, v0, :cond_2

    iget v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mStrokeWidth:I

    add-int v9, v8, v1

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget v2, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->COLOR_WHITE:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v4, v8

    iget v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mStartY:I

    int-to-float v3, v1

    int-to-float v10, v7

    iget-object v6, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mPaint:Landroid/graphics/Paint;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, p1

    move v2, v4

    move v5, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget v2, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->COLOR_GRAY:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v4, v9

    iget v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mStartY:I

    int-to-float v3, v1

    iget-object v6, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mPaint:Landroid/graphics/Paint;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, p1

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mSpacing:I

    add-int/2addr v8, v1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v0
.end method

.method public setListener(Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/IPanningBarListener;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/IPanningBarListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mListener:Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/IPanningBarListener;

    return-void
.end method

.method public final setMGestureDetector(Landroid/view/GestureDetector;)V
    .locals 0
    .param p1    # Landroid/view/GestureDetector;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/panningbar/PanningBar;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method
