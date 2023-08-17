.class Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static BOTTOM:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DURATION_CROSS_FADE:I = 0x0

.field private static final DURATION_FADE_IN:I = 0xa7

.field private static final DURATION_FADE_OUT:I = 0x96

.field private static final DURATION_RESIZE:I = 0x64

.field public static final EFFECT_STATE_CLOSE:I = 0x0

.field public static final EFFECT_STATE_OPEN:I = 0x1

.field private static final FADE_TIMEOUT:J = 0x5dcL

.field private static final FASTSCROLL_VIBRATE_INDEX:I = 0x1a

.field private static LEFT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MIN_PAGES:I = 0x1

.field private static final OVERLAY_ABOVE_THUMB:I = 0x2

.field private static final OVERLAY_AT_THUMB:I = 0x1

.field private static final OVERLAY_FLOATING:I = 0x0

.field private static final PREVIEW_LEFT:I = 0x0

.field private static final PREVIEW_RIGHT:I = 0x1

.field private static RIGHT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SeslFastScroller"

.field private static final TAP_TIMEOUT:J

.field private static final THUMB_POSITION_INSIDE:I = 0x1

.field private static final THUMB_POSITION_MIDPOINT:I

.field private static TOP:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdditionalBottomPadding:I

.field private mAdditionalTopPadding:I

.field private mAdditionalTouchArea:F

.field private mAlwaysShow:Z

.field private mColorPrimary:I

.field private final mContainerRect:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mCurrentSection:I

.field private mDecorAnimation:Landroid/animation/AnimatorSet;

.field private final mDeferHide:Ljava/lang/Runnable;

.field private mEffectState:I

.field private mEnabled:Z

.field private mImmersiveBottomPadding:I

.field private mInitialTouchY:F

.field private mIsDexMode:Z

.field private mLastDraggingY:F

.field private mLayoutFromRight:Z

.field private mListAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private mLongList:Z

.field private mMatchDragPosition:Z

.field private mOldChildCount:I

.field private mOldItemCount:I

.field private mOldThumbPosition:F

.field private mOrientation:I

.field private final mOverlay:Landroid/view/ViewGroupOverlay;

.field private mOverlayPosition:I

.field private mPendingDrag:J

.field private mPreviewAnimation:Landroid/animation/AnimatorSet;

.field private final mPreviewImage:Landroid/view/View;

.field private mPreviewMarginEnd:I

.field private mPreviewMinHeight:I

.field private mPreviewMinWidth:I

.field private mPreviewPadding:I

.field private final mPreviewResId:[I

.field private final mPrimaryText:Landroid/widget/TextView;

.field private final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mScaledTouchSlop:I

.field private mScrollBarStyle:I

.field private mScrollCompleted:Z

.field private mScrollY:F

.field private mScrollbarPosition:I

.field private final mSecondaryText:Landroid/widget/TextView;

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSections:[Ljava/lang/Object;

.field private mShowingPreview:Z

.field private mShowingPrimary:Z

.field private mState:I

.field private final mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

.field private final mTempBounds:Landroid/graphics/Rect;

.field private final mTempMargins:Landroid/graphics/Rect;

.field private mTextAppearance:I

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextSize:F

.field private mThreshold:F

.field private mThumbBackgroundColor:I

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private final mThumbImage:Landroid/widget/ImageView;

.field private mThumbMarginEnd:I

.field private mThumbMinHeight:I

.field private mThumbMinWidth:I

.field private mThumbOffset:F

.field private mThumbPosition:I

.field private mThumbRange:F

.field private mTrackBottomPadding:I

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mTrackImage:Landroid/widget/ImageView;

.field private mTrackTopPadding:I

.field private mUpdatingLayout:Z

.field private mVibrateIndex:I

.field private mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->TAP_TIMEOUT:J

    new-instance v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$3;

    const-string v1, "left"

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->LEFT:Landroid/util/Property;

    new-instance v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$4;

    const-string v1, "top"

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->TOP:Landroid/util/Property;

    new-instance v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$5;

    const-string v1, "right"

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->RIGHT:Landroid/util/Property;

    new-instance v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$6;

    const-string v1, "bottom"

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->BOTTOM:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTempBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTempMargins:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewResId:[I

    const/4 v1, -0x1

    iput v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mCurrentSection:I

    iput v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollbarPosition:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    iput v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mColorPrimary:I

    iput v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbBackgroundColor:I

    const/4 v1, 0x0

    iput v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    const/4 v2, 0x0

    iput v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mEffectState:I

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    iput v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThreshold:F

    iput v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mLastDraggingY:F

    iput v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mAdditionalTouchArea:F

    new-instance v3, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$1;

    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$1;-><init>(Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;)V

    iput-object v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDeferHide:Ljava/lang/Runnable;

    new-instance v3, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$2;

    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$2;-><init>(Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;)V

    iput-object v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    iput-object p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    iput v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldItemCount:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    iput v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldChildCount:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScaledTouchSlop:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollBarStyle()I

    move-result v3

    iput v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollBarStyle:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollCompleted:Z

    iput v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    iget-object v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    iput-boolean v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mMatchDragPosition:Z

    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v6, Landroid/view/View;

    iget-object v7, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget-object v7, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v7

    iput-object v7, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v8, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const/4 v9, 0x0

    sget-object v10, Landroidx/recyclerview/R$styleable;->FastScroll:[I

    sget v11, Landroidx/recyclerview/R$style;->Widget_RecyclerView_FastScroll:I

    invoke-virtual {v8, v9, v10, v2, v11}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    sget v9, Landroidx/recyclerview/R$styleable;->FastScroll_position:I

    invoke-virtual {v8, v9, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOverlayPosition:I

    sget v9, Landroidx/recyclerview/R$styleable;->FastScroll_backgroundLeft:I

    invoke-virtual {v8, v9, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    aput v9, v0, v2

    sget v9, Landroidx/recyclerview/R$styleable;->FastScroll_backgroundRight:I

    invoke-virtual {v8, v9, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    aput v9, v0, v3

    sget v0, Landroidx/recyclerview/R$styleable;->FastScroll_thumbDrawable:I

    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    sget v0, Landroidx/recyclerview/R$styleable;->FastScroll_trackDrawable:I

    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    sget v0, Landroidx/recyclerview/R$styleable;->FastScroll_android_textAppearance:I

    invoke-virtual {v8, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTextAppearance:I

    sget v0, Landroidx/recyclerview/R$styleable;->FastScroll_android_textColor:I

    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    sget v0, Landroidx/recyclerview/R$styleable;->FastScroll_android_textSize:I

    invoke-virtual {v8, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTextSize:F

    sget v0, Landroidx/recyclerview/R$styleable;->FastScroll_android_minWidth:I

    invoke-virtual {v8, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewMinWidth:I

    sget v0, Landroidx/recyclerview/R$styleable;->FastScroll_android_minHeight:I

    invoke-virtual {v8, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewMinHeight:I

    sget v0, Landroidx/recyclerview/R$styleable;->FastScroll_thumbMinWidth:I

    invoke-virtual {v8, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbMinWidth:I

    sget v0, Landroidx/recyclerview/R$styleable;->FastScroll_thumbMinHeight:I

    invoke-virtual {v8, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbMinHeight:I

    sget v0, Landroidx/recyclerview/R$styleable;->FastScroll_android_padding:I

    invoke-virtual {v8, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewPadding:I

    sget v0, Landroidx/recyclerview/R$styleable;->FastScroll_thumbPosition:I

    invoke-virtual {v8, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbPosition:I

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->updateAppearance()V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    invoke-virtual {v0, v6}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    invoke-virtual {v0, v7}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Landroidx/recyclerview/R$dimen;->sesl_fast_scroll_preview_margin_end:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewMarginEnd:I

    sget v3, Landroidx/recyclerview/R$dimen;->sesl_fast_scroll_thumb_margin_end:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbMarginEnd:I

    sget v3, Landroidx/recyclerview/R$dimen;->sesl_fast_scroll_additional_touch_area:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mAdditionalTouchArea:F

    sget v3, Landroidx/recyclerview/R$dimen;->sesl_fast_scroller_track_top_padding:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackTopPadding:I

    sget v3, Landroidx/recyclerview/R$dimen;->sesl_fast_scroller_track_bottom_padding:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackBottomPadding:I

    iput v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mAdditionalBottomPadding:I

    iput v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mAdditionalTopPadding:I

    iput v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mImmersiveBottomPadding:I

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Landroidx/reflect/content/res/SeslConfigurationReflector;->isDexEnabled(Landroid/content/res/Configuration;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mIsDexMode:Z

    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewPadding:I

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewPadding:I

    invoke-virtual {v7, v0, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->getSectionsFromIndexer()V

    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldChildCount:I

    iget v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldItemCount:I

    invoke-direct {p0, v0, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->updateLongList(II)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVerticalScrollbarPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setScrollbarPosition(I)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->postAutoHide()V

    const/16 p1, 0x1a

    invoke-static {p1}, Landroidx/reflect/view/SeslHapticFeedbackConstantsReflector;->semGetVibrationIndex(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mVibrateIndex:I

    return-void
.end method

.method public static synthetic access$000(Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setState(I)V

    return-void
.end method

.method public static synthetic access$100(Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mShowingPrimary:Z

    return p0
.end method

.method public static synthetic access$102(Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mShowingPrimary:Z

    return p1
.end method

.method private static animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private static animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    sget-object v1, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->LEFT:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v3, v2, [I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v5

    sget-object v1, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->TOP:Landroid/util/Property;

    new-array v3, v2, [I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    aput v4, v3, v5

    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    sget-object v1, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->RIGHT:Landroid/util/Property;

    new-array v3, v2, [I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    aput v4, v3, v5

    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->BOTTOM:Landroid/util/Property;

    new-array v2, v2, [I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    aput p1, v2, v5

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private static animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    iget-boolean v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    int-to-float p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    return-void
.end method

.method private beginDrag()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mListAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->getSectionsFromIndexer()V

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->cancelFling()V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setState(I)V

    return-void
.end method

.method private cancelFling()V
    .locals 8

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private cancelPendingDrag()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    return-void
.end method

.method private createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 p1, 0x11

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setLayoutDirection(I)V

    return-object v1
.end method

.method private getColorWithAlpha(IF)I
    .locals 2

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {p2, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method private getPosFromItemCount(III)F
    .locals 10

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mListAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->getSectionsFromIndexer()V

    :cond_1
    const/4 v0, 0x0

    if-eqz p2, :cond_18

    if-nez p3, :cond_2

    goto/16 :goto_b

    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v4, :cond_4

    check-cast v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    :goto_0
    if-lez p1, :cond_4

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    move p1, v4

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    sub-int v3, p1, v3

    if-gez v3, :cond_5

    move v3, v4

    :cond_5
    iget-object v5, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    if-nez v5, :cond_6

    goto :goto_2

    :cond_6
    if-nez p1, :cond_7

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v5, v2, v5

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v2

    int-to-float v2, v6

    div-float/2addr v5, v2

    goto :goto_3

    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v2, v5

    goto :goto_3

    :cond_8
    :goto_2
    move v5, v0

    :goto_3
    const/4 v2, 0x1

    if-eqz v1, :cond_9

    iget-object v6, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    if-eqz v6, :cond_9

    array-length v6, v6

    if-lez v6, :cond_9

    move v6, v2

    goto :goto_4

    :cond_9
    move v6, v4

    :goto_4
    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v6, :cond_f

    iget-boolean v6, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mMatchDragPosition:Z

    if-nez v6, :cond_a

    goto :goto_8

    :cond_a
    if-gez p1, :cond_b

    return v0

    :cond_b
    invoke-interface {v1, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v6

    iget-object v8, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    array-length v8, v8

    add-int/lit8 v9, v8, -0x1

    if-ge v3, v9, :cond_d

    add-int/lit8 v9, v3, 0x1

    if-ge v9, v8, :cond_c

    invoke-interface {v1, v9}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v1

    goto :goto_5

    :cond_c
    add-int/lit8 v1, p3, -0x1

    :goto_5
    sub-int/2addr v1, v6

    goto :goto_6

    :cond_d
    sub-int v1, p3, v6

    :goto_6
    if-nez v1, :cond_e

    goto :goto_7

    :cond_e
    int-to-float v0, p1

    add-float/2addr v0, v5

    int-to-float v5, v6

    sub-float/2addr v0, v5

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_7
    int-to-float v1, v3

    add-float/2addr v1, v0

    int-to-float v0, v8

    goto :goto_a

    :cond_f
    :goto_8
    if-ne p2, p3, :cond_12

    if-eqz p1, :cond_10

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_12

    :cond_10
    iget-object p2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of p2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p2, :cond_11

    if-eqz p1, :cond_11

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->isFullSpan()Z

    move-result p1

    if-eqz p1, :cond_11

    return v7

    :cond_11
    return v0

    :cond_12
    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_13

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v1

    div-int/2addr v0, v1

    goto :goto_9

    :cond_13
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_14

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v0

    goto :goto_9

    :cond_14
    move v0, v2

    :goto_9
    int-to-float v1, p1

    int-to-float v0, v0

    mul-float/2addr v5, v0

    add-float/2addr v1, v5

    int-to-float v0, p3

    :goto_a
    div-float/2addr v1, v0

    add-int v0, p1, p2

    if-ne v0, p3, :cond_17

    iget-object p3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    sub-int/2addr p2, v2

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr p3, v2

    sub-int p3, v0, p3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-gt p3, v2, :cond_15

    if-lez p1, :cond_16

    :cond_15
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p3

    :cond_16
    sub-int p1, p3, v0

    if-lez p1, :cond_17

    if-lez p3, :cond_17

    sub-float/2addr v7, v1

    int-to-float p1, p1

    int-to-float p2, p3

    div-float/2addr p1, p2

    mul-float/2addr v7, p1

    add-float/2addr v1, v7

    :cond_17
    return v1

    :cond_18
    :goto_b
    return v0
.end method

.method private getPosFromMotionEvent(F)F
    .locals 3

    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbRange:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    return v1

    :cond_0
    iget v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbOffset:F

    sub-float/2addr p1, v2

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v1, v0}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    return p1
.end method

.method private getSectionsFromIndexer()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/SectionIndexer;

    iput-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mListAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/widget/SectionIndexer;

    iput-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private static varargs groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;F[",
            "Landroid/view/View;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    array-length v1, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_0
    if-ltz v1, :cond_1

    aget-object v4, p2, v1

    new-array v5, v2, [F

    const/4 v6, 0x0

    aput p1, v5, v6

    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    if-nez v3, :cond_0

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private isPointInside(FF)Z
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->isPointInsideX(F)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->isPointInsideY(F)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isPointInsideX(F)Z
    .locals 4

    iget-boolean v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mAdditionalTouchArea:F

    sub-float/2addr v0, v3

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mAdditionalTouchArea:F

    add-float/2addr v0, v3

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private isPointInsideY(F)Z
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    cmpl-float v0, p1, v1

    if-ltz v0, :cond_0

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private layoutThumb()V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTempBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v2, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method private layoutTrack()V
    .locals 7

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v6, -0x80000000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    iget v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbPosition:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackTopPadding:I

    add-int/2addr v3, v4

    iget v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mAdditionalTopPadding:I

    add-int/2addr v3, v4

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackBottomPadding:I

    sub-int/2addr v2, v4

    iget v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mAdditionalBottomPadding:I

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v3

    iget v5, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackTopPadding:I

    add-int/2addr v4, v5

    iget v5, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mAdditionalTopPadding:I

    add-int/2addr v4, v5

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackBottomPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mAdditionalBottomPadding:I

    sub-int/2addr v2, v3

    move v3, v4

    :goto_0
    if-ge v2, v3, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error occured during layoutTrack() because bottom["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] is less than top["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SeslFastScroller"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v5, v1

    add-int/2addr v4, v5

    invoke-virtual {v0, v5, v3, v4, v2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move p2, v0

    move v1, p2

    move v2, v1

    goto :goto_0

    :cond_0
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->right:I

    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int v1, v4, v1

    sub-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/high16 v1, -0x80000000

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 p2, p2, 0xa

    add-int/2addr p2, v2

    iget v1, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p1, p2

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    iget v1, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    add-int/2addr v0, v4

    invoke-virtual {p3, v4, p2, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTempMargins:Landroid/graphics/Rect;

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOverlayPosition:I

    if-nez v1, :cond_0

    invoke-direct {p0, p1, v0, p2}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1, v0, p2}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method private measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    iget-boolean p3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    iget p3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbMarginEnd:I

    goto :goto_0

    :cond_0
    iget p3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewMarginEnd:I

    :goto_0
    move v1, p3

    move p3, v0

    goto :goto_2

    :cond_1
    if-nez p2, :cond_2

    iget p3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbMarginEnd:I

    goto :goto_1

    :cond_2
    iget p3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewMarginEnd:I

    :goto_1
    move v1, v0

    :goto_2
    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    iget-boolean v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    if-eqz v4, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int/2addr v3, v4

    :goto_3
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr v3, p3

    sub-int/2addr v3, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v5, -0x80000000

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p1, v5, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-boolean v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    if-eqz v4, :cond_6

    if-nez p2, :cond_5

    iget p2, v2, Landroid/graphics/Rect;->right:I

    goto :goto_4

    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    :goto_4
    sub-int/2addr p2, v1

    sub-int p3, p2, v3

    goto :goto_6

    :cond_6
    if-nez p2, :cond_7

    iget p2, v2, Landroid/graphics/Rect;->left:I

    goto :goto_5

    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    :goto_5
    add-int/2addr p3, p2

    add-int p2, p3, v3

    :goto_6
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p4, p3, v0, p2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private onStateDependencyChanged(Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setState(I)V

    goto :goto_1

    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    if-ne v0, v1, :cond_1

    :goto_0
    invoke-direct {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->postAutoHide()V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_3

    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setState(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->stop()V

    :cond_3
    :goto_1
    return-void
.end method

.method private postAutoHide()V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDeferHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private refreshDrawablePressedState()V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    return-void
.end method

.method private scrollTo(F)V
    .locals 13

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollCompleted:Z

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    if-nez v2, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    array-length v3, v2

    :goto_0
    const/4 v4, 0x1

    if-eqz v2, :cond_9

    if-lez v3, :cond_9

    int-to-float v2, v3

    mul-float v5, p1, v2

    float-to-int v5, v5

    add-int/lit8 v6, v3, -0x1

    invoke-static {v5, v0, v6}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v5

    iget-object v7, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v7, v5}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v7

    add-int/lit8 v8, v5, 0x1

    if-ge v5, v6, :cond_1

    iget-object v6, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v6, v8}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v6

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    move v9, v5

    if-ne v6, v7, :cond_5

    move v10, v7

    :cond_2
    if-lez v9, :cond_4

    add-int/lit8 v9, v9, -0x1

    iget-object v10, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v10, v9}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v10

    if-eq v10, v7, :cond_3

    goto :goto_2

    :cond_3
    if-nez v9, :cond_2

    move v9, v5

    move v7, v10

    move v10, v0

    goto :goto_3

    :cond_4
    move v9, v5

    :goto_2
    move v7, v10

    :cond_5
    move v10, v9

    :goto_3
    add-int/lit8 v11, v8, 0x1

    :goto_4
    if-ge v11, v3, :cond_6

    iget-object v12, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v12, v11}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v12

    if-ne v12, v6, :cond_6

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_6
    int-to-float v3, v9

    div-float/2addr v3, v2

    int-to-float v8, v8

    div-float/2addr v8, v2

    if-nez v1, :cond_7

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_5

    :cond_7
    const/high16 v2, 0x3e000000    # 0.125f

    int-to-float v11, v1

    div-float/2addr v2, v11

    :goto_5
    if-ne v9, v5, :cond_8

    sub-float v5, p1, v3

    cmpg-float v2, v5, v2

    if-gez v2, :cond_8

    goto :goto_6

    :cond_8
    sub-int/2addr v6, v7

    int-to-float v2, v6

    sub-float v5, p1, v3

    mul-float/2addr v2, v5

    sub-float/2addr v8, v3

    div-float/2addr v2, v8

    float-to-int v2, v2

    add-int/2addr v7, v2

    :goto_6
    sub-int/2addr v1, v4

    invoke-static {v7, v0, v1}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v1

    goto :goto_7

    :cond_9
    int-to-float v2, v1

    mul-float/2addr v2, p1

    float-to-int v2, v2

    sub-int/2addr v1, v4

    invoke-static {v2, v0, v1}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v1

    const/4 v10, -0x1

    :goto_7
    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v3, :cond_a

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_8

    :cond_a
    check-cast v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v2, v1, v0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollToPositionWithOffset(IIZ)V

    :goto_8
    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->findFirstVisibleItemPosition()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->onScroll(III)V

    iput v10, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mCurrentSection:I

    invoke-direct {p0, v10}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->transitionPreviewLayout(I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollTo() called transitionPreviewLayout() sectionIndex ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SeslFastScroller"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mShowingPreview:Z

    if-nez p1, :cond_b

    if-eqz v0, :cond_b

    invoke-direct {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->transitionToDragging()V

    goto :goto_9

    :cond_b
    if-eqz p1, :cond_c

    if-nez v0, :cond_c

    invoke-direct {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->transitionToVisible()V

    :cond_c
    :goto_9
    return-void
.end method

.method private setState(I)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mAlwaysShow:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    move p1, v1

    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_6

    if-eq p1, v1, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mColorPrimary:I

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    :cond_3
    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mCurrentSection:I

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->transitionPreviewLayout(I)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbBackgroundColor:I

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    :cond_5
    invoke-direct {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->transitionToVisible()V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->transitionToHidden()V

    :goto_0
    iput p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->refreshDrawablePressedState()V

    return-void
.end method

.method private setThumbPos(F)V
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v2

    const/4 v4, 0x0

    if-lez v3, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    cmpg-float v2, p1, v4

    if-gez v2, :cond_1

    move p1, v4

    :cond_1
    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbRange:F

    mul-float/2addr p1, v2

    iget v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbOffset:F

    add-float/2addr p1, v2

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v3, p1, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    int-to-float v1, v1

    add-float/2addr v1, v3

    int-to-float v0, v0

    sub-float/2addr v0, v3

    invoke-static {p1, v1, v0}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    sub-float/2addr p1, v3

    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    return-void
.end method

.method private startPendingDrag()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->TAP_TIMEOUT:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    return-void
.end method

.method private transitionPreviewLayout(I)Z
    .locals 11

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTempBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    iget-boolean v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mShowingPrimary:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget-object v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    :goto_1
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v3, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-direct {p0, v3, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    const/4 v5, 0x0

    const-string v6, ""

    const/4 v7, 0x1

    if-ne v4, v7, :cond_2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    const/4 v8, 0x2

    if-ne v4, v8, :cond_3

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Landroid/widget/TextView;->getAlpha()F

    move-result v4

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v7

    return p1

    :cond_3
    :goto_2
    iget-object v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_4
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget v6, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mVibrateIndex:I

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    :cond_5
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v6

    invoke-static {v2, v5}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v5

    iget-object v8, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v5, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget v8, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, v0, Landroid/graphics/Rect;->left:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, v0, Landroid/graphics/Rect;->top:I

    iget v8, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v0, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v8, 0x64

    invoke-virtual {v0, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v10, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v10, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v0, v6

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    if-le v1, v0, :cond_6

    int-to-float v0, v0

    int-to-float v6, v1

    div-float/2addr v0, v6

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setScaleX(F)V

    invoke-static {v3, v4}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_3

    :cond_6
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setScaleX(F)V

    :goto_3
    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    if-le v0, v1, :cond_7

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    invoke-static {v2, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_7
    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    sget-object v1, Landroidx/appcompat/animation/SeslAnimationUtils;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v7

    return p1
.end method

.method private transitionToDragging()V
    .locals 7

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/view/View;

    iget-object v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget-object v6, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v6, v2, v3

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v1, 0xa7

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v2, v5, [Landroid/animation/Animator;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    sget-object v1, Landroidx/appcompat/animation/SeslAnimationUtils;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iput-boolean v5, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mShowingPreview:Z

    return-void
.end method

.method private transitionToHidden()V
    .locals 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mShowingPreview:Z

    const/4 v1, -0x1

    iput v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mCurrentSection:I

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    const/16 v1, 0x96

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x0

    const/4 v4, 0x5

    new-array v4, v4, [Landroid/view/View;

    iget-object v5, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v0

    iget-object v5, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    iget-object v7, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v7, v4, v5

    const/4 v5, 0x3

    iget-object v7, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v7, v4, v5

    const/4 v5, 0x4

    iget-object v7, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v7, v4, v5

    invoke-static {v2, v3, v4}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v6, [Landroid/animation/Animator;

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    sget-object v1, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private transitionToVisible()V
    .locals 8

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/view/View;

    iget-object v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v0, v1, v3}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v3, 0xa7

    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/view/View;

    iget-object v7, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v7, v4, v5

    iget-object v7, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v7, v4, v6

    iget-object v7, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v7, v4, v2

    invoke-static {v1, v3, v4}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    const-wide/16 v3, 0x96

    invoke-virtual {v1, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, v5

    aput-object v1, v2, v6

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    sget-object v1, Landroidx/appcompat/animation/SeslAnimationUtils;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-boolean v5, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mShowingPreview:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private updateAppearance()V
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroidx/recyclerview/R$attr;->colorPrimary:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const v1, 0x3f666666    # 0.9f

    invoke-direct {p0, v0, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->getColorWithAlpha(IF)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mColorPrimary:I

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/recyclerview/R$color;->sesl_fast_scrollbar_bg_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbBackgroundColor:I

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbBackgroundColor:I

    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    :cond_1
    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbMinWidth:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbMinHeight:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_2
    iget v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbMinWidth:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mWidth:I

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    iget v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewMinWidth:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    iget v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewMinHeight:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTextAppearance:I

    if-eqz v0, :cond_3

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget-object v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    iget v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTextAppearance:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_4

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_4
    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTextSize:F

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_5

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTextSize:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_5
    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewMinHeight:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewMinWidth:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinimumWidth(I)V

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMinimumHeight(I)V

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewMinWidth:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinimumWidth(I)V

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMinimumHeight(I)V

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOrientation:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->refreshDrawablePressedState()V

    return-void
.end method

.method private updateContainerRect()V
    .locals 6

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollBarStyle:I

    const/high16 v3, 0x1000000

    if-eq v2, v3, :cond_0

    if-nez v2, :cond_2

    :cond_0
    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v4, v0

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->getWidth()I

    move-result v0

    iget v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollbarPosition:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    :cond_2
    :goto_0
    return-void
.end method

.method private updateLongList(II)V
    .locals 1

    const/4 p2, 0x1

    if-lez p1, :cond_1

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->canScrollList(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->canScrollList(I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    move p1, p2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mLongList:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mLongList:Z

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->onStateDependencyChanged(Z)V

    :cond_2
    return-void
.end method

.method private updateOffsetAndRange()V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbPosition:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v2, v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    iput v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbOffset:F

    sub-float/2addr v0, v2

    iget v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mImmersiveBottomPadding:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbRange:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iput v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbRange:F

    :cond_1
    return-void
.end method


# virtual methods
.method public canScrollList(I)Z
    .locals 6

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->findFirstVisibleItemPosition()I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    const/4 v5, 0x1

    if-lez p1, :cond_3

    add-int/lit8 p1, v0, -0x1

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    add-int/2addr v2, v0

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lt v2, v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    if-le p1, v0, :cond_2

    :cond_1
    move v1, v5

    :cond_2
    return v1

    :cond_3
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-gtz v2, :cond_4

    iget v0, v4, Landroid/graphics/Rect;->top:I

    if-ge p1, v0, :cond_5

    :cond_4
    move v1, v5

    :cond_5
    return v1
.end method

.method public getEffectState()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mEffectState:I

    return v0
.end method

.method public getScrollY()F
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mWidth:I

    return v0
.end method

.method public isAlwaysShowEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mAlwaysShow:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->canScrollList(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->canScrollList(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mLongList:Z

    iget-boolean v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mEnabled:Z

    if-eqz v3, :cond_2

    if-nez v1, :cond_3

    iget-boolean v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mAlwaysShow:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    :cond_3
    :goto_2
    return v0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    :cond_1
    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->isPointInside(FF)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setState(I)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->postAutoHide()V

    :cond_2
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_3

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->isPointInside(FF)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_5

    invoke-direct {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->beginDrag()V

    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mInitialTouchY:F

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->scrollTo(F)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    invoke-direct {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->cancelPendingDrag()V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->isPointInside(FF)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mVibrateIndex:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    return v2

    :cond_5
    :goto_1
    return v1
.end method

.method public onItemCountChanged(II)V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldChildCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldChildCount:I

    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldItemCount:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldChildCount:I

    if-eq v0, p1, :cond_4

    :cond_1
    iput p2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldItemCount:I

    iput p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldChildCount:I

    sub-int v0, p2, p1

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->findFirstVisibleItemPosition()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->getPosFromItemCount(III)F

    move-result v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setThumbPos(F)V

    :cond_3
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->updateLongList(II)V

    :cond_4
    return-void
.end method

.method public onScroll(III)V
    .locals 5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setState(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->canScrollList(I)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_1

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->canScrollList(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    if-eq v1, v2, :cond_3

    iget v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_2

    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setThumbPos(F)V

    iput v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->getPosFromItemCount(III)F

    move-result p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setThumbPos(F)V

    :cond_3
    :goto_0
    iput-boolean v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollCompleted:Z

    iget p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    if-eq p1, v2, :cond_4

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setState(I)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->postAutoHide()V

    :cond_4
    return-void
.end method

.method public onSectionsChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mListAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->canScrollList(I)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, -0x1

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->canScrollList(I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mLongList:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->updateLayout()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->isEnabled()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_e

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-eq v4, v6, :cond_c

    if-eq v4, v10, :cond_3

    const/4 p1, 0x3

    if-eq v4, p1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-direct {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->cancelPendingDrag()V

    iget p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    if-ne p1, v10, :cond_2

    invoke-direct {p0, v5}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setState(I)V

    :cond_2
    iput v5, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mEffectState:I

    iput v9, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    goto/16 :goto_2

    :cond_3
    iget-wide v11, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    cmp-long v4, v11, v7

    if-ltz v4, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v7, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mInitialTouchY:F

    sub-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v7, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScaledTouchSlop:I

    int-to-float v7, v7

    cmpl-float v4, v4, v7

    if-lez v4, :cond_6

    invoke-direct {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->beginDrag()V

    iget v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    int-to-float v7, v1

    cmpl-float v8, v4, v7

    if-lez v8, :cond_6

    int-to-float v8, v0

    cmpg-float v8, v4, v8

    if-gez v8, :cond_6

    add-float/2addr v7, v3

    cmpg-float v8, v4, v7

    if-gez v8, :cond_4

    iput v7, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    goto :goto_0

    :cond_4
    cmpl-float v4, v4, v2

    if-lez v4, :cond_5

    iput v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    :cond_5
    :goto_0
    iput v6, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mEffectState:I

    :cond_6
    iget v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    if-ne v4, v10, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->getPosFromMotionEvent(F)F

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setThumbPos(F)V

    iget v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThreshold:F

    cmpl-float v4, v4, v9

    if-eqz v4, :cond_7

    iget v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mLastDraggingY:F

    iget v5, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThreshold:F

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_7

    return v6

    :cond_7
    iget v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    iput v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mLastDraggingY:F

    iget-boolean v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollCompleted:Z

    if-eqz v4, :cond_8

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->scrollTo(F)V

    :cond_8
    iget p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    int-to-float v1, v1

    cmpl-float v4, p1, v1

    if-lez v4, :cond_b

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_b

    add-float/2addr v1, v3

    cmpg-float v0, p1, v1

    if-gez v0, :cond_9

    iput v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    goto :goto_1

    :cond_9
    cmpl-float p1, p1, v2

    if-lez p1, :cond_a

    iput v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    :cond_a
    :goto_1
    iput v6, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mEffectState:I

    :cond_b
    return v6

    :cond_c
    iget-wide v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    cmp-long v0, v0, v7

    if-ltz v0, :cond_d

    invoke-direct {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->beginDrag()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->getPosFromMotionEvent(F)F

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setThumbPos(F)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->scrollTo(F)V

    iput v6, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mEffectState:I

    :cond_d
    iget p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    if-ne p1, v10, :cond_f

    iget-object p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    invoke-direct {p0, v6}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setState(I)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->postAutoHide()V

    iput v5, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mEffectState:I

    iput v9, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    return v6

    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->isPointInside(FF)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-direct {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->beginDrag()V

    iput v6, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mEffectState:I

    return v6

    :cond_f
    :goto_2
    return v5
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    return-void
.end method

.method public setAdditionalPadding(II)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mAdditionalTopPadding:I

    iput p2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mAdditionalBottomPadding:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->updateLayout()V

    return-void
.end method

.method public setAlwaysShow(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mAlwaysShow:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mAlwaysShow:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->onStateDependencyChanged(Z)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mEnabled:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->onStateDependencyChanged(Z)V

    :cond_0
    return-void
.end method

.method public setImmersiveBottomPadding(I)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mImmersiveBottomPadding:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->updateOffsetAndRange()V

    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollBarStyle:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollBarStyle:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->updateLayout()V

    :cond_0
    return-void
.end method

.method public setScrollbarPosition(I)V
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result p1

    if-ne p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :cond_1
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollbarPosition:I

    if-eq v1, p1, :cond_3

    iput p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollbarPosition:I

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    iget-object p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewResId:[I

    aget p1, p1, v0

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mColorPrimary:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->updateLayout()V

    :cond_3
    return-void
.end method

.method public setThreshold(F)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FastScroller setThreshold called = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeslFastScroller"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThreshold:F

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setState(I)V

    return-void
.end method

.method public updateLayout()V
    .locals 3

    iget-boolean v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mUpdatingLayout:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mUpdatingLayout:Z

    invoke-direct {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->updateContainerRect()V

    invoke-direct {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->layoutThumb()V

    invoke-direct {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->layoutTrack()V

    invoke-direct {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->updateOffsetAndRange()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mUpdatingLayout:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTempBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method
