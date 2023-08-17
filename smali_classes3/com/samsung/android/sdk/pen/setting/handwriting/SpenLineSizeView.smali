.class public Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView$ActionListener;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final SUPPORT_PEN:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.FountainPen"

.field private static final TAG:Ljava/lang/String; = "SpenLineSizeView"

.field private static final UX_PEN_SIZE_STEP:I = 0x5

.field public static final VERTICAL:I = 0x1

.field private static final mSizeBoundary:[F

.field private static final mSizeLevel:[I


# instance fields
.field private mActionListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView$ActionListener;

.field private mCanvasSize:I

.field private mContext:Landroid/content/Context;

.field private mPenPreview:[Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

.field private mPenSizeLevelList:[I

.field private mPenSizeList:[F

.field private mPrevSelectedIndex:I

.field private mPreviewHelper:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;

.field private mPreviewManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;

.field private mPreviewWidth:I

.field private mSelectedIndex:I

.field private mSelectedPenName:Ljava/lang/String;

.field private mSizeButton:[Landroid/widget/FrameLayout;

.field private final mSizeClickListenter:Landroid/view/View$OnClickListener;

.field private mTotalLayout:Landroid/widget/LinearLayout;

.field private mViewRatio:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mSizeBoundary:[F

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mSizeLevel:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x41b40000    # 22.5f
        0x42160000    # 37.5f
        0x42520000    # 52.5f
    .end array-data

    :array_1
    .array-data 4
        0x5
        0xf
        0x1e
        0x2d
        0x3c
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mSelectedIndex:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPrevSelectedIndex:I

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView$2;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mSizeClickListenter:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->construct(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;)[Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPenPreview:[Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mSelectedIndex:I

    return p0
.end method

.method public static synthetic access$102(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mSelectedIndex:I

    return p1
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;)[Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mSizeButton:[Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView$ActionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mActionListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView$ActionListener;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;)[F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPenSizeList:[F

    return-object p0
.end method

.method public static synthetic access$600(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;)[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPenSizeLevelList:[I

    return-object p0
.end method

.method public static synthetic access$700(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->updateSelector(I)V

    return-void
.end method

.method public static synthetic access$800(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;Landroid/view/View;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->updateSelectDescription(Landroid/view/View;IZ)V

    return-void
.end method

.method private adjustSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mTotalLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->setChildSize(Landroid/widget/RelativeLayout$LayoutParams;I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mTotalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private construct(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "SpenLineSizeView"

    const-string v1, "construct()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPreviewHelper:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;

    const/4 p1, 0x5

    new-array v1, p1, [F

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPenSizeList:[F

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPenSizeLevelList:[I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenCanvasUtil;->getDeviceCanvasSize(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mCanvasSize:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "construct() canvasSize="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mCanvasSize:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPreviewManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mActionListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView$ActionListener;

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->initView(I)V

    return-void
.end method

.method private getLevelIndex(Ljava/lang/String;I)I
    .locals 3

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.FountainPen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    sget-object p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mSizeBoundary:[F

    array-length p1, p1

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mSizeBoundary:[F

    array-length v2, v1

    if-ge v0, v2, :cond_2

    int-to-float v2, p2

    aget v1, v1, v0

    cmpg-float v1, v2, v1

    if-gez v1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p1
.end method

.method private getRepresentativeLevel(Ljava/lang/String;I)I
    .locals 1

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.FountainPen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sget-object p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mSizeLevel:[I

    aget p1, p1, p2

    return p1
.end method

.method private static getSizeDp(Ljava/lang/String;IFF)F
    .locals 1

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.FountainPen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sub-float/2addr p3, p2

    sget-object p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mSizeLevel:[I

    aget p0, p0, p1

    int-to-float p0, p0

    const p1, 0x3c23d70a    # 0.01f

    mul-float/2addr p0, p1

    mul-float/2addr p3, p0

    add-float/2addr p2, p3

    return p2
.end method

.method private getSizePx(Ljava/lang/String;IFFI)F
    .locals 1

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.FountainPen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->getSizeDp(Ljava/lang/String;IFF)F

    move-result p1

    int-to-float p2, p5

    mul-float/2addr p1, p2

    const/high16 p2, 0x43200000    # 160.0f

    div-float/2addr p1, p2

    return p1
.end method

.method private initView(I)V
    .locals 11

    const-string v0, "SpenLineSizeView"

    const-string v1, "initView()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/samsung/android/spen/R$layout;->setting_pen_size_view_v53:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mTotalLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_common_title_ic_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPreviewWidth:I

    const/4 v0, 0x5

    new-array v1, v0, [Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mSizeButton:[Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mTotalLayout:Landroid/widget/LinearLayout;

    sget v4, Lcom/samsung/android/spen/R$id;->handwriting_size_button_1:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mSizeButton:[Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mTotalLayout:Landroid/widget/LinearLayout;

    sget v4, Lcom/samsung/android/spen/R$id;->handwriting_size_button_2:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const/4 v4, 0x1

    aput-object v3, v1, v4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mSizeButton:[Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mTotalLayout:Landroid/widget/LinearLayout;

    sget v5, Lcom/samsung/android/spen/R$id;->handwriting_size_button_3:I

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const/4 v5, 0x2

    aput-object v3, v1, v5

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mSizeButton:[Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mTotalLayout:Landroid/widget/LinearLayout;

    sget v6, Lcom/samsung/android/spen/R$id;->handwriting_size_button_4:I

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const/4 v6, 0x3

    aput-object v3, v1, v6

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mSizeButton:[Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mTotalLayout:Landroid/widget/LinearLayout;

    sget v7, Lcom/samsung/android/spen/R$id;->handwriting_size_button_5:I

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const/4 v7, 0x4

    aput-object v3, v1, v7

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mSizeButton:[Landroid/widget/FrameLayout;

    array-length v3, v1

    move v8, v2

    :goto_0
    if-ge v8, v3, :cond_0

    aget-object v9, v1, v8

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mSizeClickListenter:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v0, [Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPenPreview:[Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mTotalLayout:Landroid/widget/LinearLayout;

    sget v3, Lcom/samsung/android/spen/R$id;->handwriting_size_button_preview_1:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPenPreview:[Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mTotalLayout:Landroid/widget/LinearLayout;

    sget v3, Lcom/samsung/android/spen/R$id;->handwriting_size_button_preview_2:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    aput-object v1, v0, v4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPenPreview:[Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mTotalLayout:Landroid/widget/LinearLayout;

    sget v3, Lcom/samsung/android/spen/R$id;->handwriting_size_button_preview_3:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    aput-object v1, v0, v5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPenPreview:[Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mTotalLayout:Landroid/widget/LinearLayout;

    sget v3, Lcom/samsung/android/spen/R$id;->handwriting_size_button_preview_4:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    aput-object v1, v0, v6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPenPreview:[Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mTotalLayout:Landroid/widget/LinearLayout;

    sget v3, Lcom/samsung/android/spen/R$id;->handwriting_size_button_preview_5:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    aput-object v1, v0, v7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPenPreview:[Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    array-length v1, v0

    move v3, v2

    move v5, v3

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v6, v0, v3

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    add-int/2addr v5, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->setChildSize(Landroid/widget/RelativeLayout$LayoutParams;I)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mTotalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->setOrientation(I)V

    return-void
.end method

.method private setChildSize(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_som_size_view_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/samsung/android/spen/R$dimen;->setting_som_size_view_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lcom/samsung/android/spen/R$dimen;->setting_som_size_view_margin:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_1
    return-void
.end method

.method private setOrientation(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mTotalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->adjustSize(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mTotalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method private updateSelectDescription(Landroid/view/View;IZ)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez p3, :cond_0

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v2

    aput-object v0, p3, v1

    const-string p2, "%d %s"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v4, Lcom/samsung/android/spen/R$string;->pen_string_selected:I

    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    const-string p3, ""

    :goto_0
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p3, v4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v1

    aput-object v0, v4, v3

    const-string p2, "%s, %d %s"

    invoke-static {p2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateSelector(I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPrevSelectedIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mSizeButton:[Landroid/widget/FrameLayout;

    aget-object v0, v1, v0

    sget v1, Lcom/samsung/android/spen/R$drawable;->spen_round_ripple:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mSizeButton:[Landroid/widget/FrameLayout;

    aget-object v0, v0, p1

    sget v1, Lcom/samsung/android/spen/R$drawable;->spen_select_round_ripple:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPrevSelectedIndex:I

    return-void
.end method

.method private updateSize(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPreviewHelper:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;->getMaxSettingValue(Ljava/lang/String;)F

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPenSizeLevelList:[I

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->getRepresentativeLevel(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPenSizeList:[F

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPenSizeLevelList:[I

    aget v4, v4, v1

    invoke-static {v3, p1, v4}, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->convertSizeLevelToDpSize(Landroid/content/Context;Ljava/lang/String;I)F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->updateViewRatio(F)V

    return-void
.end method

.method private updateView(Z)V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPreviewManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;

    const-string v1, "SpenLineSizeView"

    if-nez v0, :cond_0

    const-string/jumbo p1, "updateView() Not ready PreviewManager."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPreviewHelper:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mSelectedPenName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;->getMinSettingValue(Ljava/lang/String;)F

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPreviewHelper:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mSelectedPenName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;->getMaxSettingValue(Ljava/lang/String;)F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v9, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    const/4 v3, 0x5

    if-ge v11, v3, :cond_4

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mSelectedPenName:Ljava/lang/String;

    move-object v3, p0

    move v5, v11

    move v6, v0

    move v7, v2

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->getSizePx(Ljava/lang/String;IFFI)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mSelectedPenName:Ljava/lang/String;

    const-string v5, "Marker"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/high16 v3, 0x40000000    # 2.0f

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPenSizeList:[F

    aget v5, v5, v11

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " sizeLevel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPenSizeLevelList:[I

    aget v5, v5, v11

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " previewSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " ratio="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mViewRatio:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPenPreview:[Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    aget-object v4, v4, v11

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPreviewManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->setPreviewManager(Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;)V

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPenPreview:[Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    aget-object v4, v4, v11

    iget v5, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mViewRatio:F

    mul-float/2addr v3, v5

    invoke-virtual {v4, v3}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->setStrokeSize(F)V

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mSelectedIndex:I

    if-ne v3, v11, :cond_3

    invoke-direct {p0, v11}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->updateSelector(I)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mSizeButton:[Landroid/widget/FrameLayout;

    aget-object v3, v3, v11

    add-int/lit8 v4, v11, 0x1

    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->updateSelectDescription(Landroid/view/View;IZ)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPenPreview:[Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    aget-object v3, v3, v11

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mSizeButton:[Landroid/widget/FrameLayout;

    aget-object v3, v3, v11

    add-int/lit8 v4, v11, 0x1

    invoke-direct {p0, v3, v4, v10}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->updateSelectDescription(Landroid/view/View;IZ)V

    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_4
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView$1;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateViewRatio(F)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateViewRatio() maxPenSizeDp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " maxPenSize="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SpenLineSizeView"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPenPreview:[Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    const/4 v2, 0x4

    aget-object v3, p1, v2

    if-eqz v3, :cond_2

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPreviewWidth:I

    :cond_0
    int-to-float v2, p1

    cmpl-float v3, v0, v2

    if-ltz v3, :cond_1

    div-float/2addr v2, v0

    goto :goto_0

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    iput v2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mViewRatio:F

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateViewRatio() vieWidth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " maxStrokeSize="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " viewRatio="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mViewRatio:F

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    const-string v0, "SpenLineSizeView"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPreviewHelper:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPreviewHelper:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPenPreview:[Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->close()V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPenPreview:[Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPenSizeList:[F

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPenSizeList:[F

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPenSizeLevelList:[I

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPenSizeLevelList:[I

    :cond_3
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setActionListener(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView$ActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mActionListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView$ActionListener;

    return-void
.end method

.method public setPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V
    .locals 6

    const-string v0, "SpenLineSizeView"

    const-string/jumbo v1, "setPenInfo()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v2, "com.samsung.android.sdk.pen.pen.preload.FountainPen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not support pen. ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    const/4 v2, 0x0

    if-ltz v1, :cond_2

    const/16 v3, 0x64

    if-le v1, v3, :cond_3

    :cond_2
    iput v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    :cond_3
    iget-object v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->getLevelIndex(Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mSelectedPenName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mSelectedIndex:I

    if-ne v1, v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPreviewManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;

    if-nez v3, :cond_5

    :cond_4
    const/4 v2, 0x1

    :cond_5
    iget-object v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mSelectedPenName:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mSelectedIndex:I

    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->updateSize(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPreviewManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->getPenName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    new-instance v1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mContext:Landroid/content/Context;

    iget-object v4, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPreviewHelper:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;

    invoke-direct {v1, v3, v4, v5}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPreviewManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPreviewManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;

    iget p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->setColor(I)V

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->updateView(Z)V

    if-eqz v2, :cond_8

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mActionListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView$ActionListener;

    if-eqz p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPenInfo() :: onSizeChanged="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPenSizeList:[F

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mSelectedIndex:I

    aget v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mActionListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView$ActionListener;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPenSizeList:[F

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mSelectedIndex:I

    aget v0, v0, v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->mPenSizeLevelList:[I

    aget v1, v2, v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView$ActionListener;->onSizeChanged(FI)V

    :cond_8
    return-void
.end method

.method public setSelectorColor(I)V
    .locals 0

    return-void
.end method
