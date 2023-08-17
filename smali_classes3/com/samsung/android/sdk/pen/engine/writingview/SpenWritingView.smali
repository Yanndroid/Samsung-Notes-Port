.class public Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$ActivityComponent;
    }
.end annotation


# static fields
.field public static final BITMAP_GRAVITY_BOTTOM:I = 0x9

.field public static final BITMAP_GRAVITY_CENTER:I = 0x6

.field public static final BITMAP_GRAVITY_FIT:I = 0x0

.field public static final BITMAP_GRAVITY_LEFT:I = 0x5

.field public static final BITMAP_GRAVITY_LEFT_BOTTOM:I = 0x8

.field public static final BITMAP_GRAVITY_LEFT_TOP:I = 0x2

.field public static final BITMAP_GRAVITY_RIGHT:I = 0x7

.field public static final BITMAP_GRAVITY_RIGHT_BOTTOM:I = 0xa

.field public static final BITMAP_GRAVITY_RIGHT_TOP:I = 0x4

.field public static final BITMAP_GRAVITY_STRETCH:I = 0x1

.field public static final BITMAP_GRAVITY_TOP:I = 0x3

.field public static final BITMAP_TILEMODE_CLAMP:I = 0x1

.field public static final BITMAP_TILEMODE_DISABLE:I = 0x0

.field public static final BITMAP_TILEMODE_MIRROR:I = 0x3

.field public static final BITMAP_TILEMODE_REPEAT:I = 0x2

.field public static final CAPTURE_ALL:I = 0x11000011

.field public static final CAPTURE_BACKGROUND:I = 0x1000000

.field public static final CAPTURE_CONTENT_BACKGROUND:I = 0x10000000

.field public static final CAPTURE_FOREGROUND_ALL:I = 0x11

.field private static final CAPTURE_OBJECT:I = 0x10

.field private static final CAPTURE_STROKE:I = 0x1

.field public static final DRAWING_TYPE_NOCACHE_VECTOR:I = 0x2

.field public static final DRAWING_TYPE_RASTER:I = 0x0

.field public static final DRAWING_TYPE_VECTOR:I = 0x1

.field public static final DRAW_LOOP_TYPE_HWUI:I = 0x0

.field public static final DRAW_LOOP_TYPE_TEXTURE_VIEW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SpenWritingView"

.field private static final mDrawLoopType:I = 0x1


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mActivityComponent:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$ActivityComponent;

.field private mContext:Landroid/content/Context;

.field private mDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

.field private mIsHWUIDrawLoop:Z

.field private mListenerManager:Lcom/samsung/android/sdk/pen/engine/ListenerManager;

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mTextureView:Landroid/view/TextureView;

.field private mTwinView:Landroid/view/View;

.field private mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mOrientationListener:Landroid/view/OrientationEventListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mListenerManager:Lcom/samsung/android/sdk/pen/engine/ListenerManager;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mTextureView:Landroid/view/TextureView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mTwinView:Landroid/view/View;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mIsHWUIDrawLoop:Z

    new-instance v2, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$ActivityComponent;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$ActivityComponent;-><init>(Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$1;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mActivityComponent:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$ActivityComponent;

    invoke-direct {p0, p1, v1, v1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->construct(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mOrientationListener:Landroid/view/OrientationEventListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mListenerManager:Lcom/samsung/android/sdk/pen/engine/ListenerManager;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mTextureView:Landroid/view/TextureView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mTwinView:Landroid/view/View;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mIsHWUIDrawLoop:Z

    new-instance v1, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$ActivityComponent;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$ActivityComponent;-><init>(Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$1;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mActivityComponent:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$ActivityComponent;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->construct(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mOrientationListener:Landroid/view/OrientationEventListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mListenerManager:Lcom/samsung/android/sdk/pen/engine/ListenerManager;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mTextureView:Landroid/view/TextureView;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mTwinView:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mIsHWUIDrawLoop:Z

    new-instance v1, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$ActivityComponent;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$ActivityComponent;-><init>(Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$1;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mActivityComponent:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$ActivityComponent;

    invoke-direct {p0, p1, v0, v0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->construct(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mOrientationListener:Landroid/view/OrientationEventListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mListenerManager:Lcom/samsung/android/sdk/pen/engine/ListenerManager;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mTextureView:Landroid/view/TextureView;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mTwinView:Landroid/view/View;

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mIsHWUIDrawLoop:Z

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$ActivityComponent;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$ActivityComponent;-><init>(Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mActivityComponent:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$ActivityComponent;

    invoke-direct {p0, p1, p3, p3}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->construct(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mOrientationListener:Landroid/view/OrientationEventListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mListenerManager:Lcom/samsung/android/sdk/pen/engine/ListenerManager;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mTextureView:Landroid/view/TextureView;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mTwinView:Landroid/view/View;

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mIsHWUIDrawLoop:Z

    new-instance p3, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$ActivityComponent;

    invoke-direct {p3, p0, p2}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$ActivityComponent;-><init>(Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$1;)V

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mActivityComponent:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$ActivityComponent;

    invoke-direct {p0, p1, p4, p5}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->construct(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mOrientationListener:Landroid/view/OrientationEventListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mListenerManager:Lcom/samsung/android/sdk/pen/engine/ListenerManager;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mTextureView:Landroid/view/TextureView;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mTwinView:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mIsHWUIDrawLoop:Z

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$ActivityComponent;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$ActivityComponent;-><init>(Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mActivityComponent:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$ActivityComponent;

    invoke-direct {p0, p1, p3, p4}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->construct(Landroid/content/Context;IZ)V

    return-void
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;)Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mIsHWUIDrawLoop:Z

    return p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;)Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private construct(Landroid/content/Context;IZ)V
    .locals 7

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/sdk/pen/recoguifeature/SPenRecognitionWorker;->initializeSelf(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "SpenWritingView"

    const-string v1, "Recoguifeature initialized failure | not supported!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mIsHWUIDrawLoop:Z

    new-instance v1, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;

    invoke-direct {v1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance v1, Landroid/view/TextureView;

    invoke-direct {v1, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mTextureView:Landroid/view/TextureView;

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mTwinView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setOpaque(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mTextureView:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    check-cast v1, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    check-cast v0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/engine/ListenerManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/engine/ListenerManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mListenerManager:Lcom/samsung/android/sdk/pen/engine/ListenerManager;

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;IZ)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mListenerManager:Lcom/samsung/android/sdk/pen/engine/ListenerManager;

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setListenerManager(Lcom/samsung/android/sdk/pen/engine/ListenerManager;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->getActivity()Landroid/app/Activity;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mActivity:Landroid/app/Activity;

    if-eqz p2, :cond_1

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mActivityComponent:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$ActivityComponent;

    invoke-virtual {p2, p3}, Landroid/app/Activity;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mActivityComponent:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$ActivityComponent;

    invoke-virtual {p2, p3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->registerResourceView(Landroid/view/View;)V

    new-instance p2, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$1;

    invoke-direct {p2, p0, p1, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$1;-><init>(Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;Landroid/content/Context;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mOrientationListener:Landroid/view/OrientationEventListener;

    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mContext:Landroid/content/Context;

    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    const-string v2, "SpenWritingView"

    if-eqz v1, :cond_1

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    const-string v1, "getActivity - Activity found"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "getActivity - Activity NOT found"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public captureContent(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->captureContent(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public captureView(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->captureView(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 3

    const-string v0, "SpenWritingView"

    const-string v1, "SpenWritingView.close()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mIsHWUIDrawLoop:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mTextureView:Landroid/view/TextureView;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mActivityComponent:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$ActivityComponent;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mActivityComponent:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$ActivityComponent;

    invoke-virtual {v0, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->unregisterResourceView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mListenerManager:Lcom/samsung/android/sdk/pen/engine/ListenerManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;->close()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_2

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    :cond_2
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mActivityComponent:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$ActivityComponent;

    return-void
.end method

.method public getControlObjectManager()Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->getControlObjectManager()Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;

    move-result-object v0

    return-object v0
.end method

.method public getDelta()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->getDelta()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getMaxZoomScale()F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->getMaxZoomScale()F

    move-result v0

    return v0
.end method

.method public getMinZoomScale()F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->getMinZoomScale()F

    move-result v0

    return v0
.end method

.method public getPan()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->getPan()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getPenSettingInfo()Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->getPenSettingInfo()Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    move-result-object v0

    return-object v0
.end method

.method public getRemoverSettingInfo()Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->getRemoverSettingInfo()Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    move-result-object v0

    return-object v0
.end method

.method public getToolTypeAction(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->getToolTypeAction(I)I

    move-result p1

    return p1
.end method

.method public getZoomScale()F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->getZoomScale()F

    move-result v0

    return v0
.end method

.method public isScrollable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->isScrollable()Z

    move-result v0

    return v0
.end method

.method public isToolTipEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->isToolTipEnabled()Z

    move-result v0

    return v0
.end method

.method public isZoomable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->isZoomable()Z

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->onAttachedToWindow(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->onDetachedFromWindow(Landroid/view/ViewGroup;)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->isNativeViewValid()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;->onViewDetachedFromWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;->onDraw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 6

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->onLayout(ZIIII)V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "SpenWritingView"

    const-string v1, "onResumed, Restore GL resources"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->onResume()V

    return-void
.end method

.method public onScreenStateChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onScreenStateChanged(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->enable()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTrimMemory(I)V
    .locals 1

    const/16 v0, 0x50

    if-ne p1, v0, :cond_0

    const-string p1, "SpenWritingView"

    const-string v0, "onTrimMemory, Force to clear gl resourced"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->forceClearResources()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->onTrimMemory()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;->onPause()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_1
    :goto_0
    return-void
.end method

.method public pauseReplay()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->pauseReplay()Z

    move-result v0

    return v0
.end method

.method public pauseReplay(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setReplayPosition(I)Z

    move-result p1

    return p1
.end method

.method public resumeReplay()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->resumeReplay()Z

    move-result v0

    return v0
.end method

.method public setBackgroundBitmap(Landroid/graphics/Bitmap;III)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setBackgroundBitmap(Landroid/graphics/Bitmap;III)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setBackgroundColor(I)V

    return-void
.end method

.method public setColorPickerListener(Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mListenerManager:Lcom/samsung/android/sdk/pen/engine/ListenerManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->setColorPickerListener(Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;)V

    return-void
.end method

.method public setColorTheme(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setColorTheme(I)V

    return-void
.end method

.method public setContentBackgroundBitmap(Landroid/graphics/Bitmap;III)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setContentBackgroundBitmap(Landroid/graphics/Bitmap;III)V

    return-void
.end method

.method public setContentBackgroundBitmap(Landroid/graphics/Bitmap;IIIZ)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setContentBackgroundBitmap(Landroid/graphics/Bitmap;IIIZ)V

    return-void
.end method

.method public setContentBackgroundColor(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setContentBackgroundColor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenWritingView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setContentBackgroundColor(I)V

    return-void
.end method

.method public setContentRect(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setContentRect(FFFF)V

    return-void
.end method

.method public setContentScale(F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setContentScale(F)V

    return-void
.end method

.method public setContentTransparentBackgroundImage(Landroid/graphics/Bitmap;II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setContentTransparentBackgroundImage(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method public setContextMenuListener(Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setContextMenuListener(Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;)V

    return-void
.end method

.method public setDarkMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setDarkMode(Z)V

    return-void
.end method

.method public setDelta(Landroid/graphics/PointF;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setDelta(Landroid/graphics/PointF;)V

    return-void
.end method

.method public setDocument(Lcom/samsung/android/sdk/pen/engine/writingview/document/SpenWritingDocument;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setDocument(Lcom/samsung/android/sdk/pen/engine/writingview/document/SpenWritingDocument;)Z

    move-result p1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mIsHWUIDrawLoop:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mDrawLoop:Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopInterface;

    check-cast v0, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mTwinView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/drawLoop/SpenDrawLoopTexture;->setTwinView(Landroid/view/View;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView$2;-><init>(Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return p1
.end method

.method public setEdgeEffectEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setEdgeEffectEnabled(Z)V

    return-void
.end method

.method public setFrontBufferRenderingEnabled(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setFrontBufferRenderingEnabled(Z)Z

    move-result p1

    return p1
.end method

.method public setHapticSoundEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setHapticSoundEnabled(Z)V

    return-void
.end method

.method public setHoldLongPressEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setHoldLongPressEnabled(Z)V

    return-void
.end method

.method public setHoverScrollEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setHoverScrollEnabled(Z)V

    return-void
.end method

.method public setHoverScrollOption(JFI)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setHoverScrollOption(JFI)V

    return-void
.end method

.method public setIntersectSelection(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setIntersectSelection(Z)V

    return-void
.end method

.method public setLongPressEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setLongPressEnabled(Z)V

    return-void
.end method

.method public setMargin(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setMargin(FFFF)V

    return-void
.end method

.method public setMaxZoomScale(F)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setMaxZoomScale(F)Z

    move-result p1

    return p1
.end method

.method public setMinZoomScale(F)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setMinZoomScale(F)Z

    move-result p1

    return p1
.end method

.method public setPan(Landroid/graphics/PointF;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setPan(Landroid/graphics/PointF;)V

    return-void
.end method

.method public setPenChangeListener(Lcom/samsung/android/sdk/pen/engine/SpenPenChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mListenerManager:Lcom/samsung/android/sdk/pen/engine/ListenerManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->setPenChangeListener(Lcom/samsung/android/sdk/pen/engine/SpenPenChangeListener;)V

    return-void
.end method

.method public setPenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setPenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    return-void
.end method

.method public setPreTouchListener(Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mListenerManager:Lcom/samsung/android/sdk/pen/engine/ListenerManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->setPreTouchListener(Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;)V

    return-void
.end method

.method public setPredictionEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setPredictionEnabled(Z)V

    return-void
.end method

.method public setRecentColorListener(Lcom/samsung/android/sdk/pen/engine/SpenRecentColorListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mListenerManager:Lcom/samsung/android/sdk/pen/engine/ListenerManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->setRecentColorListener(Lcom/samsung/android/sdk/pen/engine/SpenRecentColorListener;)V

    return-void
.end method

.method public setRemoverChangeListener(Lcom/samsung/android/sdk/pen/engine/SpenRemoverChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mListenerManager:Lcom/samsung/android/sdk/pen/engine/ListenerManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->setRemoverChangeListener(Lcom/samsung/android/sdk/pen/engine/SpenRemoverChangeListener;)V

    return-void
.end method

.method public setRemoverSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setRemoverSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V

    return-void
.end method

.method public setReplayListener(Lcom/samsung/android/sdk/pen/engine/SpenReplayListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mListenerManager:Lcom/samsung/android/sdk/pen/engine/ListenerManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->setReplayListener(Lcom/samsung/android/sdk/pen/engine/SpenReplayListener;)V

    return-void
.end method

.method public setReplaySpeed(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setReplaySpeed(I)Z

    move-result p1

    return p1
.end method

.method public setScaleGestureListener(Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;)V
    .locals 0

    return-void
.end method

.method public setScrollable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setScrollable(Z)V

    return-void
.end method

.method public setSelectionChangeListener(Lcom/samsung/android/sdk/pen/engine/SpenSelectionChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mListenerManager:Lcom/samsung/android/sdk/pen/engine/ListenerManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->setSelectionChangeListener(Lcom/samsung/android/sdk/pen/engine/SpenSelectionChangeListener;)V

    return-void
.end method

.method public setSelectionType(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setSelectionType(I)V

    return-void
.end method

.method public setSoftInputListener(Lcom/samsung/android/sdk/pen/text/SpenSoftInputListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setSoftInputListener(Lcom/samsung/android/sdk/pen/text/SpenSoftInputListener;)V

    return-void
.end method

.method public setStretchContentSize(ZII)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setStretchContentSize(ZII)V

    return-void
.end method

.method public setStrokeToShapeEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setStrokeToShapeEnabled(Z)V

    return-void
.end method

.method public setToastActionListener(Lcom/samsung/android/sdk/pen/engine/SpenToastActionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mListenerManager:Lcom/samsung/android/sdk/pen/engine/ListenerManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->setToastActionListenerner(Lcom/samsung/android/sdk/pen/engine/SpenToastActionListener;)V

    return-void
.end method

.method public setToolTipEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setToolTipEnabled(Z)V

    return-void
.end method

.method public setToolTypeAction(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setToolTypeAction(II)V

    return-void
.end method

.method public setTouchListener(Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mListenerManager:Lcom/samsung/android/sdk/pen/engine/ListenerManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->setTouchListener(Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;)V

    return-void
.end method

.method public setZoomListener(Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenZoomListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setZoomListener(Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenZoomListener;)V

    return-void
.end method

.method public setZoomScale(FFF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setZoomScale(FFF)V

    return-void
.end method

.method public setZoomable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setZoomable(Z)V

    return-void
.end method

.method public startReplay()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->startReplay()Z

    move-result v0

    return v0
.end method

.method public stopReplay()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingView;->mWritingViewImpl:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->stopReplay()Z

    move-result v0

    return v0
.end method
