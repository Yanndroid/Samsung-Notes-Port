.class public Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenObjectRuntimeInterface;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation


# static fields
.field private static final EXTRADATASTRING_VIDEOPATH_KEY:Ljava/lang/String; = "VideoPath"

.field private static final GETEXTRADATASTRING_FUNCTION:Ljava/lang/String; = "getExtraDataString"

.field private static final GETEXTRADATASTRING_FUNCTION_ARG_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static HASH_KEY_IMAGE_MARGIN:I = 0x0

.field private static HASH_KEY_IMAGE_SIZE:I = 0x0

.field private static HASH_KEY_PIXEL_1080_1920:I = 0x0

.field private static HASH_KEY_PIXEL_2560_1600:I = 0x0

.field private static HASH_KEY_PIXEL_720_1280:I = 0x0

.field private static HASH_KEY_PIXEL_DEFAULT:I = 0x0

.field private static final KK_VERSION_CODE:I = 0x13

.field private static final SETEXTRADATASTRING_FUNCTION:Ljava/lang/String; = "setExtraDataString"

.field private static final SETEXTRADATASTRING_FUNCTION_ARG_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final SETIMAGE_FUNCTION:Ljava/lang/String; = "setImage"

.field private static final SETIMAGE_FUNCTION_ARG_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final SETRECT_FUNCTION:Ljava/lang/String; = "setRect"

.field private static final SETRECT_FUNCTION_ARG_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final SETRESIZEOPTION_FUNCTION:Ljava/lang/String; = "setResizeOption"

.field private static final SETRESIZEOPTION_FUNCTION_ARG_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final SETROTATABLE_FUNCTION:Ljava/lang/String; = "setRotatable"

.field private static final SETROTATABLE_FUNCTION_ARG_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final SETVISIBILITY_FUNCTION:Ljava/lang/String; = "setVisibility"

.field private static final SETVISIBILITY_FUNCTION_ARG_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final SETWFDTCPDISABLE_FUNCTION:Ljava/lang/String; = "setWFDTcpDisable"

.field private static final SETWFDTCPDISABLE_FUNCTION_ARG_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Video"

.field private static final VIDEOPLAY_IMAGE_NAME:Ljava/lang/String; = "snote_insert_video_icon_cue"

.field private static final VIDEOPLAY_IMAGE_UX_TABLE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final mSdkVersion:I


# instance fields
.field private fm:Landroid/app/FragmentManager;

.field private mActivity:Landroid/app/Activity;

.field public mAudioLisner:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field public mAudioManager:Landroid/media/AudioManager;

.field private mFragment:Lcom/samsung/android/sdk/pen/objectruntime/preload/VideoIntentFragment;

.field private mFragmentListener:Lcom/samsung/android/sdk/pen/objectruntime/preload/VideoIntentFragment$OnVideoIntentFragmentListener;

.field private mListener:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenObjectRuntimeInterface$UpdateListener;

.field private mObject:Ljava/lang/Object;

.field private mPan:Landroid/graphics/PointF;

.field private mRatio:F

.field private mRect:Landroid/graphics/RectF;

.field private mStartFramePosition:Landroid/graphics/PointF;

.field private mVideoFilePath:Ljava/lang/String;

.field private mVideoView:Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView;

.field private mVideoViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mVideoViewListener:Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView$WrapperVideoViewListener;

.field private mViewGroup:Landroid/view/ViewGroup;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const-class v0, Ljava/lang/String;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v1, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mSdkVersion:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sput-object v2, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->SETIMAGE_FUNCTION_ARG_SIGNATURE:[Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/RectF;

    aput-object v5, v3, v4

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v1

    sput-object v3, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->SETRECT_FUNCTION_ARG_SIGNATURE:[Ljava/lang/Class;

    new-array v3, v1, [Ljava/lang/Class;

    aput-object v0, v3, v4

    sput-object v3, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->GETEXTRADATASTRING_FUNCTION_ARG_SIGNATURE:[Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Class;

    aput-object v0, v2, v4

    aput-object v0, v2, v1

    sput-object v2, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->SETEXTRADATASTRING_FUNCTION_ARG_SIGNATURE:[Ljava/lang/Class;

    new-array v0, v1, [Ljava/lang/Class;

    aput-object v5, v0, v4

    sput-object v0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->SETROTATABLE_FUNCTION_ARG_SIGNATURE:[Ljava/lang/Class;

    new-array v0, v1, [Ljava/lang/Class;

    aput-object v5, v0, v4

    sput-object v0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->SETVISIBILITY_FUNCTION_ARG_SIGNATURE:[Ljava/lang/Class;

    new-array v0, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v4

    sput-object v0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->SETRESIZEOPTION_FUNCTION_ARG_SIGNATURE:[Ljava/lang/Class;

    new-array v0, v1, [Ljava/lang/Class;

    aput-object v5, v0, v4

    sput-object v0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->SETWFDTCPDISABLE_FUNCTION_ARG_SIGNATURE:[Ljava/lang/Class;

    sput v4, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->HASH_KEY_IMAGE_SIZE:I

    add-int/2addr v1, v4

    sput v1, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->HASH_KEY_IMAGE_MARGIN:I

    const/16 v0, 0xbb8

    sput v0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->HASH_KEY_PIXEL_1080_1920:I

    const/16 v1, 0x1040

    sput v1, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->HASH_KEY_PIXEL_2560_1600:I

    const/16 v1, 0x7d0

    sput v1, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->HASH_KEY_PIXEL_720_1280:I

    sput v0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->HASH_KEY_PIXEL_DEFAULT:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->VIDEOPLAY_IMAGE_UX_TABLE:Ljava/util/HashMap;

    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x16

    invoke-direct {v1, v4, v4, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    const/4 v5, 0x7

    invoke-direct {v3, v4, v5, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sget v7, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->HASH_KEY_IMAGE_SIZE:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->HASH_KEY_IMAGE_MARGIN:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->HASH_KEY_PIXEL_1080_1920:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/graphics/Rect;

    const/16 v3, 0x21

    invoke-direct {v1, v4, v4, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    const/16 v6, 0xa

    invoke-direct {v3, v4, v6, v6, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sget v7, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->HASH_KEY_IMAGE_SIZE:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->HASH_KEY_IMAGE_MARGIN:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->HASH_KEY_PIXEL_2560_1600:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v4, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v4, v5, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sget v4, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->HASH_KEY_IMAGE_SIZE:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->HASH_KEY_IMAGE_MARGIN:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->HASH_KEY_PIXEL_720_1280:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;)Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mVideoView:Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->cancel(I)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->createPlayVideoBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1100()[Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->SETIMAGE_FUNCTION_ARG_SIGNATURE:[Ljava/lang/Class;

    return-object v0
.end method

.method public static synthetic access$1200()[Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->SETEXTRADATASTRING_FUNCTION_ARG_SIGNATURE:[Ljava/lang/Class;

    return-object v0
.end method

.method public static synthetic access$1300()[Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->SETROTATABLE_FUNCTION_ARG_SIGNATURE:[Ljava/lang/Class;

    return-object v0
.end method

.method public static synthetic access$1400()[Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->SETRESIZEOPTION_FUNCTION_ARG_SIGNATURE:[Ljava/lang/Class;

    return-object v0
.end method

.method public static synthetic access$1500(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;)Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenObjectRuntimeInterface$UpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mListener:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenObjectRuntimeInterface$UpdateListener;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->complete()V

    return-void
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mVideoFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mVideoFilePath:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mRect:Landroid/graphics/RectF;

    return-object p1
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;IILandroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->getRatioRect(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->convertAbsolute(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$700(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mObject:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$800()[Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->SETRECT_FUNCTION_ARG_SIGNATURE:[Ljava/lang/Class;

    return-object v0
.end method

.method public static synthetic access$900(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mInvoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private cancel(I)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->cleanResource()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mListener:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenObjectRuntimeInterface$UpdateListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mObject:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenObjectRuntimeInterface$UpdateListener;->onCanceled(ILjava/lang/Object;)V

    return-void
.end method

.method private cleanResource()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mObject:Ljava/lang/Object;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->SETVISIBILITY_FUNCTION_ARG_SIGNATURE:[Ljava/lang/Class;

    const-string/jumbo v3, "setVisibility"

    invoke-direct {p0, v1, v3, v2, v0}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mInvoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mListener:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenObjectRuntimeInterface$UpdateListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mObject:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenObjectRuntimeInterface$UpdateListener;->onObjectUpdated(Landroid/graphics/RectF;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mAudioLisner:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mVideoView:Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mVideoView:Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mFragment:Lcom/samsung/android/sdk/pen/objectruntime/preload/VideoIntentFragment;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/objectruntime/preload/VideoIntentFragment;->setVideoIntentFragmentListener(Lcom/samsung/android/sdk/pen/objectruntime/preload/VideoIntentFragment$OnVideoIntentFragmentListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->fm:Landroid/app/FragmentManager;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mFragment:Lcom/samsung/android/sdk/pen/objectruntime/preload/VideoIntentFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->fm:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mFragment:Lcom/samsung/android/sdk/pen/objectruntime/preload/VideoIntentFragment;

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Video"

    const-string v2, "commitAllowingStateLoss IllegalStateException is occured. but is not problem."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mFragment:Lcom/samsung/android/sdk/pen/objectruntime/preload/VideoIntentFragment;

    :cond_3
    return-void
.end method

.method private complete()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->cleanResource()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mListener:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenObjectRuntimeInterface$UpdateListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mObject:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenObjectRuntimeInterface$UpdateListener;->onCompleted(Ljava/lang/Object;)V

    return-void
.end method

.method private convertAbsolute(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 7

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mStartFramePosition:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v3

    iget v4, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mRatio:F

    div-float/2addr v1, v4

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mPan:Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v6

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v3

    div-float/2addr v1, v4

    add-float/2addr v1, v6

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    iget v3, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, v2

    div-float/2addr p1, v4

    add-float/2addr p1, v3

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    return-object v0
.end method

.method private createPlayVideoBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "Video"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "PackageManager is null."

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    if-nez v3, :cond_1

    const-string p1, "DisplayMetrics Get is failed"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "snote_insert_video_icon_cue"

    const-string v6, "drawable"

    invoke-virtual {v0, v5, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    const-string p1, "Resource is not founded"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenScreenCodecDecoder;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    const-string p1, "The bitmap of resource is null."

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    float-to-int p2, p2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, p2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_4

    const-string p1, "The workBitmap of result is null. out fo memory"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v2

    :cond_4
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v4, v6, v6, v5, v7}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v5, Landroid/graphics/Paint;

    const/4 v7, 0x7

    invoke-direct {v5, v7}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v1, p1, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v2, v6, v6, p1, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget p1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/2addr p1, v6

    sget-object v6, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->VIDEOPLAY_IMAGE_UX_TABLE:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    sget p1, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->HASH_KEY_PIXEL_DEFAULT:I

    :cond_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    sget v8, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->HASH_KEY_IMAGE_MARGIN:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    sget v6, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->HASH_KEY_IMAGE_SIZE:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    iget v9, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {p0, v8, v9}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->getIntValueAppliedDensity(FF)I

    move-result v8

    sub-int/2addr v6, v8

    iget v8, v7, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    iget v9, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {p0, v8, v9}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->getIntValueAppliedDensity(FF)I

    move-result v8

    sub-int/2addr v6, v8

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget v6, v7, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v7, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->getIntValueAppliedDensity(FF)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    iget v8, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {p0, v7, v8}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->getIntValueAppliedDensity(FF)I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {p0, p1, v3}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->getIntValueAppliedDensity(FF)I

    move-result p1

    add-int/2addr v6, p1

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v0, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    return-object v2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-object v2
.end method

.method private getIntValueAppliedDensity(FF)I
    .locals 0

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private getRatioRect(IILandroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 5

    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpg-float v1, v1, v2

    const v2, 0x3f2aaaab

    if-gez v1, :cond_1

    if-le p1, p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    goto :goto_1

    :cond_1
    if-le p1, p2, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    :goto_0
    mul-float/2addr p1, v2

    div-float p2, p1, v0

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    :goto_1
    mul-float p2, p1, v2

    mul-float p1, p2, v0

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, p1, v2

    sub-float v3, v0, v3

    iput v3, p3, Landroid/graphics/RectF;->left:F

    int-to-float v1, v1

    div-float v4, p2, v2

    sub-float v4, v1, v4

    iput v4, p3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p1

    iput v3, p3, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, p2

    iput v4, p3, Landroid/graphics/RectF;->bottom:F

    iget p3, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mRatio:F

    mul-float/2addr p1, p3

    mul-float/2addr p2, p3

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    div-float v3, p1, v2

    sub-float/2addr v0, v3

    iput v0, p3, Landroid/graphics/RectF;->left:F

    div-float v2, p2, v2

    sub-float/2addr v1, v2

    iput v1, p3, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p1

    iput v0, p3, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p2

    iput v1, p3, Landroid/graphics/RectF;->bottom:F

    return-object p3
.end method

.method private varargs mInvoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-virtual {p2, p1, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private startVideoPlay()Z
    .locals 6

    const-string v0, "Video"

    new-instance v1, Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mVideoView:Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView;

    new-instance v1, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$3;-><init>(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mVideoViewListener:Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView$WrapperVideoViewListener;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mVideoView:Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView;

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView;->setListener(Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView$WrapperVideoViewListener;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mVideoView:Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->requestFocusFromTouch()Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mVideoView:Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mVideoFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mVideoView:Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mVideoViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mVideoView:Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setZOrderMediaOverlay(Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mVideoView:Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mViewGroup:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mVideoView:Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget v1, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mSdkVersion:I

    const/16 v4, 0x13

    if-lt v1, v4, :cond_0

    :try_start_0
    new-array v1, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v3

    const-class v4, Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView;

    const-string/jumbo v5, "setStopMusic"

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v5, v4, v3

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mVideoView:Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStopMusic() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_1
    const-string/jumbo v1, "setStopMusic() NoSuchMethodError"

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mAudioLisner:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mVideoView:Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView;

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setZOrderOnTop(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mVideoView:Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mVideoView:Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView;

    new-instance v1, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$4;-><init>(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mVideoView:Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView;

    new-instance v1, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$5;-><init>(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mVideoView:Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView;

    new-instance v1, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$6;-><init>(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return v2
.end method


# virtual methods
.method public getNativeHandle()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPrivateKeyHint()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProperty(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onLoad(Landroid/content/Context;)V
    .locals 1

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->fm:Landroid/app/FragmentManager;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mActivity:Landroid/app/Activity;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mAudioManager:Landroid/media/AudioManager;

    new-instance p1, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$1;-><init>(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mAudioLisner:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onUnload()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public setListener(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenObjectRuntimeInterface$UpdateListener;)Z
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "Video"

    const-string v0, "argument listener is null."

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mListener:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenObjectRuntimeInterface$UpdateListener;

    const/4 p1, 0x1

    return p1
.end method

.method public setProperty(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public setRect(Landroid/graphics/RectF;)V
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mViewGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mRect:Landroid/graphics/RectF;

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mVideoViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mVideoView:Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mVideoViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mVideoView:Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " or viewGroup = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " This SOR started yet."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Video"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public start(Ljava/lang/Object;Landroid/graphics/RectF;Landroid/graphics/PointF;FLandroid/graphics/PointF;Landroid/view/ViewGroup;)V
    .locals 1

    if-eqz p1, :cond_2

    if-eqz p6, :cond_2

    if-eqz p2, :cond_2

    if-eqz p5, :cond_2

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mObject:Ljava/lang/Object;

    iput-object p6, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mViewGroup:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mPan:Landroid/graphics/PointF;

    iput p4, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mRatio:F

    iput-object p5, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mStartFramePosition:Landroid/graphics/PointF;

    const/4 p3, 0x1

    new-array p4, p3, [Ljava/lang/Object;

    const/4 p5, 0x0

    const-string p6, "VideoPath"

    aput-object p6, p4, p5

    sget-object p5, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->GETEXTRADATASTRING_FUNCTION_ARG_SIGNATURE:[Ljava/lang/Class;

    const-string p6, "getExtraDataString"

    invoke-direct {p0, p1, p6, p5, p4}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mInvoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mVideoFilePath:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->setRect(Landroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mVideoFilePath:Ljava/lang/String;

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/sdk/pen/objectruntime/preload/VideoIntentFragment;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/objectruntime/preload/VideoIntentFragment;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mFragment:Lcom/samsung/android/sdk/pen/objectruntime/preload/VideoIntentFragment;

    new-instance p1, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$2;-><init>(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mFragmentListener:Lcom/samsung/android/sdk/pen/objectruntime/preload/VideoIntentFragment$OnVideoIntentFragmentListener;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mFragment:Lcom/samsung/android/sdk/pen/objectruntime/preload/VideoIntentFragment;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/objectruntime/preload/VideoIntentFragment;->setVideoIntentFragmentListener(Lcom/samsung/android/sdk/pen/objectruntime/preload/VideoIntentFragment$OnVideoIntentFragmentListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->fm:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mFragment:Lcom/samsung/android/sdk/pen/objectruntime/preload/VideoIntentFragment;

    const-string p3, "PlayVideo"

    invoke-virtual {p1, p2, p3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->startVideoPlay()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Video"

    const-string p2, "StartVideoPlay is failed."

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p3}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->cancel(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Argument is null. ObjectBase = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " Rect = "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ViewGroup = "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " startFramePosition = "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public stop(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->cleanResource()V

    return-void
.end method

.method public unlock(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
