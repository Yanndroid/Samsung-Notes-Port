.class public Lcom/samsung/android/penup/internal/dialog/PostDialog;
.super Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/penup/internal/dialog/PostDialog$CollectionListAdapter;
    }
.end annotation


# static fields
.field private static final COLOR_TITLE_TEXT_VIEW:Ljava/lang/String; = "#85c8da"

.field private static final DP_ARTWORK_DESCRIPTION_EDIT_TEXT_RIGHT_MARGIN:I = 0x8

.field private static final DP_ARTWORK_DESCRIPTION_EDIT_TEXT_TOP_MARGIN:I = 0xf

.field private static final DP_ARTWORK_IMAGE_VIEW_HORIZONTAL_MARGIN:I = 0xc

.field private static final DP_ARTWORK_IMAGE_VIEW_MAX_HEIGHT:I = 0xaa

.field private static final DP_ARTWORK_IMAGE_VIEW_MAX_WIDTH:I = 0xfa

.field private static final DP_ARTWORK_IMAVE_VIEW_VERTICAL_MARGIN:I = 0x12

.field private static final DP_ARTWORK_TITLE_DESC_LINEAR_LAYOUT_HORIZONTAL_MARGIN:I = 0xc

.field private static final DP_ARTWORK_TITLE_EDIT_TEXT_TOP_MARGIN:I = 0x14

.field private static final DP_BUTTON_TEXT_SIZE:I = 0x12

.field private static final DP_COLLECTION_ITEM_TEXT_SIZE:I = 0xe

.field private static final DP_COLLECTION_LINEAR_LAYOUT_BOTTOM_MARGIN:I = 0x5

.field private static final DP_COLLECTION_LINEAR_LAYOUT_HORIZONTAL_MARGIN:I = 0xf

.field private static final DP_COLLECTION_LINEAR_LAYOUT_TOP_MARGIN:I = 0xa

.field private static final DP_COLLECTION_TEXT_VIEW_TEXT_SIZE:I = 0xe

.field private static final DP_TAG_DESCRIPTION_TEXT_VIEW_LEFT_MARGIN:I = 0x6

.field private static final DP_TAG_DESCRIPTION_TEXT_VIEW_TOP_MARGIN:I = 0xc

.field private static final DP_TITLE_TEXT_VIEW_HEIGHT:I = 0x32

.field private static final DP_TITLE_TEXT_VIEW_TEXT_SIZE:I = 0x14

.field private static final DP_WALLPAPER_TAG_DESCRIPTION_TEXT_VIEW_BOTTOM_MARGIN:I = 0x8

.field private static final DP_WALLPAPER_TAG_DESCRIPTION_TEXT_VIEW_DRAWABLE_PADDING:I = 0x7

.field private static final DP_WALLPAPER_TAG_DESCRIPTION_TEXT_VIEW_TEXT_SIZE:I = 0xc

.field private static final DP_WALLPAPER_TAG_DESCRIPTION_TEXT_VIEW_TOP_MARGIN:I = 0xf

.field private static final HASHTAG_PREFIX:Ljava/lang/String; = "#"

.field private static final MAX_COLLECTION_LIST:I = 0x64

.field private static final MAX_DESCRIPTION_LENGTH:I = 0x1f4

.field private static final MAX_TITLE_LENGTH:I = 0x2d


# instance fields
.field private btnTouchListener:Landroid/view/View$OnTouchListener;

.field private mArtworkDescriptionEditText:Landroid/widget/EditText;

.field private mArtworkImageView:Landroid/widget/ImageView;

.field private mArtworkTitleDescLinearLayout:Landroid/widget/LinearLayout;

.field private mArtworkTitleEditText:Landroid/widget/EditText;

.field private mBottomLinearLayout:Landroid/widget/LinearLayout;

.field private mButtonLinearLayout:Landroid/widget/LinearLayout;

.field private mCancelButton:Landroid/widget/Button;

.field private final mCollectionDialogCallback:Lcom/samsung/android/penup/internal/dialog/CollectionDialog$CollectionDialogCallback;

.field private mCollectionLinearLayout:Landroid/widget/LinearLayout;

.field private mCollectionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/penup/model/CollectionResource;",
            ">;"
        }
    .end annotation
.end field

.field private mCollectionListAdapter:Lcom/samsung/android/penup/internal/dialog/PostDialog$CollectionListAdapter;

.field private final mCollectionResourceListCallback:Lcom/samsung/android/penup/ResourceListCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/penup/ResourceListCallback<",
            "Lcom/samsung/android/penup/model/CollectionResource;",
            ">;"
        }
    .end annotation
.end field

.field private mCollectionSpinner:Landroid/widget/Spinner;

.field private mCurrentSpinnerPos:I

.field private mImageUri:Landroid/net/Uri;

.field private mIsPosted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMainLinearLayout:Landroid/widget/LinearLayout;

.field private mNeedDismissDialog:Z

.field private mResourceCallback:Lcom/samsung/android/penup/ResourceCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/penup/ResourceCallback<",
            "Lcom/samsung/android/penup/model/ArtworkResource;",
            ">;"
        }
    .end annotation
.end field

.field private mRootLinearLayout:Landroid/widget/LinearLayout;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSetAsDownloadableTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mIsPosted:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/samsung/android/penup/internal/dialog/PostDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/penup/internal/dialog/PostDialog$1;-><init>(Lcom/samsung/android/penup/internal/dialog/PostDialog;)V

    iput-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mCollectionResourceListCallback:Lcom/samsung/android/penup/ResourceListCallback;

    iput v1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mCurrentSpinnerPos:I

    new-instance v0, Lcom/samsung/android/penup/internal/dialog/PostDialog$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/penup/internal/dialog/PostDialog$2;-><init>(Lcom/samsung/android/penup/internal/dialog/PostDialog;)V

    iput-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mCollectionDialogCallback:Lcom/samsung/android/penup/internal/dialog/CollectionDialog$CollectionDialogCallback;

    new-instance v0, Lcom/samsung/android/penup/internal/dialog/PostDialog$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/penup/internal/dialog/PostDialog$3;-><init>(Lcom/samsung/android/penup/internal/dialog/PostDialog;)V

    iput-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->btnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mCollectionList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Lcom/samsung/android/penup/internal/dialog/CollectionDialog$CollectionDialogCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mCollectionDialogCallback:Lcom/samsung/android/penup/internal/dialog/CollectionDialog$CollectionDialogCallback;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mCancelButton:Landroid/widget/Button;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mArtworkTitleEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mImageUri:Landroid/net/Uri;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mIsPosted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Lcom/samsung/android/penup/ResourceListCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mCollectionResourceListCallback:Lcom/samsung/android/penup/ResourceListCallback;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/penup/internal/dialog/PostDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->showPostDialog()V

    return-void
.end method

.method public static synthetic access$400(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Lcom/samsung/android/penup/ResourceCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mResourceCallback:Lcom/samsung/android/penup/ResourceCallback;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Lcom/samsung/android/penup/internal/dialog/PostDialog$CollectionListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mCollectionListAdapter:Lcom/samsung/android/penup/internal/dialog/PostDialog$CollectionListAdapter;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mCollectionSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/samsung/android/penup/internal/dialog/PostDialog;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mCurrentSpinnerPos:I

    return p0
.end method

.method public static synthetic access$702(Lcom/samsung/android/penup/internal/dialog/PostDialog;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mCurrentSpinnerPos:I

    return p1
.end method

.method public static synthetic access$800(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mArtworkDescriptionEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mSetAsDownloadableTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method private getBitmapSize(Ljava/io/File;)Landroid/graphics/BitmapFactory$Options;
    .locals 2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getSampleSize(II)I
    .locals 1

    const/16 v0, 0x1f40

    if-gt p1, v0, :cond_7

    if-le p2, v0, :cond_0

    goto :goto_3

    :cond_0
    const/16 v0, 0xfa0

    if-gt p1, v0, :cond_6

    if-le p2, v0, :cond_1

    goto :goto_2

    :cond_1
    const/16 v0, 0x7d0

    if-gt p1, v0, :cond_5

    if-le p2, v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x3e8

    if-gt p1, v0, :cond_4

    if-le p2, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    goto :goto_4

    :cond_4
    :goto_0
    const/4 p1, 0x2

    goto :goto_4

    :cond_5
    :goto_1
    const/4 p1, 0x4

    goto :goto_4

    :cond_6
    :goto_2
    const/16 p1, 0x8

    goto :goto_4

    :cond_7
    :goto_3
    const/16 p1, 0x10

    :goto_4
    return p1
.end method

.method private initCollectionList()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mCollectionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Lcom/samsung/android/penup/model/CollectionResource;

    invoke-direct {v0}, Lcom/samsung/android/penup/model/CollectionResource;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/samsung/android/penup/R$string;->collection_list_add_collection_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/penup/model/CollectionResource;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mCollectionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private resizeBitmap(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    int-to-float p2, p3

    int-to-float p3, p4

    div-float p4, p2, p3

    const v0, 0x3fbc3c3c

    cmpl-float p4, p4, v0

    if-lez p4, :cond_0

    const/16 p4, 0xfa

    int-to-float v0, p4

    div-float/2addr v0, p2

    mul-float/2addr p3, v0

    float-to-int p2, p3

    goto :goto_0

    :cond_0
    const/16 p4, 0xaa

    int-to-float v0, p4

    div-float/2addr v0, p3

    mul-float/2addr p2, v0

    float-to-int p2, p2

    move v1, p4

    move p4, p2

    move p2, v1

    :goto_0
    invoke-virtual {p0, p4}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result p3

    invoke-virtual {p0, p2}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result p2

    const/4 p4, 0x1

    invoke-static {p1, p3, p2, p4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private setArtworkImage()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->getBitmapSize(Ljava/io/File;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->getSampleSize(II)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mArtworkImageView:Landroid/widget/ImageView;

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {p0, v0, v2, v4, v1}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->resizeBitmap(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private setArtworkImageView()V
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0xaa

    invoke-virtual {p0, v1}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mArtworkImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mMainLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mArtworkImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setArtworkTitleDescLinearLayout()V
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mArtworkTitleDescLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mArtworkTitleDescLinearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->setTitleEditText()V

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->setDescriptionLinearLayout()V

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->setTagDescriptionTextView()V

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->setSetAsDownloadableTextView()V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mMainLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mArtworkTitleDescLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setBottomLinearLayout()V
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mBottomLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mBottomLinearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mBottomLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->setHorizontalDividerImageView(Landroid/widget/LinearLayout;)V

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->setButtonLinearLayout()V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mRootLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mBottomLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setButtonLinearLayout()V
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mButtonLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mButtonLinearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->setCancelButton()V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mButtonLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->setVerticalDividerImageView(Landroid/widget/LinearLayout;)V

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->setPostButton()V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mBottomLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mButtonLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setCancelButton()V
    .locals 4

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mCancelButton:Landroid/widget/Button;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setGravity(I)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mCancelButton:Landroid/widget/Button;

    sget v2, Lcom/samsung/android/penup/R$string;->dialog_cancel:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mCancelButton:Landroid/widget/Button;

    const/16 v2, 0x12

    invoke-virtual {p0, v2}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/samsung/android/penup/R$color;->text:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/samsung/android/penup/R$color;->background:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mCancelButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->btnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/penup/internal/dialog/PostDialog$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/penup/internal/dialog/PostDialog$8;-><init>(Lcom/samsung/android/penup/internal/dialog/PostDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mButtonLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setCollectionLinearLayout()V
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mCollectionLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mCollectionLinearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->setCollectionTextView()V

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->setCollectionSpinner()V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mMainLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mCollectionLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setCollectionList()V
    .locals 2

    new-instance v0, Lcom/samsung/android/penup/internal/dialog/PostDialog$CollectionListAdapter;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/penup/internal/dialog/PostDialog$CollectionListAdapter;-><init>(Lcom/samsung/android/penup/internal/dialog/PostDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mCollectionListAdapter:Lcom/samsung/android/penup/internal/dialog/PostDialog$CollectionListAdapter;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mCollectionList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mCollectionSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mCollectionListAdapter:Lcom/samsung/android/penup/internal/dialog/PostDialog$CollectionListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mCollectionSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method private setCollectionSpinner()V
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v1, Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mCollectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mCollectionSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/samsung/android/penup/internal/dialog/PostDialog$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/penup/internal/dialog/PostDialog$7;-><init>(Lcom/samsung/android/penup/internal/dialog/PostDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mCollectionLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mCollectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setCollectionTextView()V
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sget v2, Lcom/samsung/android/penup/R$string;->post_artwork_collection_:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sget v2, Lcom/samsung/android/penup/R$color;->text:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x800013

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mCollectionLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setDescriptionEditText(Landroid/widget/LinearLayout;)V
    .locals 5

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v2, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mArtworkDescriptionEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mArtworkDescriptionEditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<i>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    sget v4, Lcom/samsung/android/penup/R$string;->post_artwork_edit_description:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</i>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mArtworkDescriptionEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    sget v3, Lcom/samsung/android/penup/R$color;->artwork_description_hint:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mArtworkDescriptionEditText:Landroid/widget/EditText;

    const-string v2, "disableEmoticonInput=true"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mArtworkDescriptionEditText:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x1f4

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mArtworkDescriptionEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/samsung/android/penup/R$color;->artwork_description:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mArtworkDescriptionEditText:Landroid/widget/EditText;

    sget v1, Lcom/samsung/android/penup/R$drawable;->edit_text:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mArtworkDescriptionEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setDescriptionLinearLayout()V
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x50

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-direct {p0, v1}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->setDescriptionEditText(Landroid/widget/LinearLayout;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->setTagButtonImageView(Landroid/widget/LinearLayout;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mArtworkTitleDescLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setMainLinearLayout()V
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mMainLinearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setPostButton()V
    .locals 4

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x11

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setGravity(I)V

    sget v0, Lcom/samsung/android/penup/R$string;->dialog_confirm:I

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(I)V

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sget v1, Lcom/samsung/android/penup/R$color;->text:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sget v1, Lcom/samsung/android/penup/R$color;->background:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->btnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/samsung/android/penup/internal/dialog/PostDialog$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/penup/internal/dialog/PostDialog$9;-><init>(Lcom/samsung/android/penup/internal/dialog/PostDialog;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mButtonLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setRootLinearLayout()V
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mRootLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mRootLinearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mRootLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/samsung/android/penup/R$color;->background:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method

.method private setScrollView()V
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v1, Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mRootLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setSetAsDownloadableTextView()V
    .locals 4

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mSetAsDownloadableTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mSetAsDownloadableTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/samsung/android/penup/R$string;->post_artwork_wallpaper:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mSetAsDownloadableTextView:Landroid/widget/TextView;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mSetAsDownloadableTextView:Landroid/widget/TextView;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mSetAsDownloadableTextView:Landroid/widget/TextView;

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mSetAsDownloadableTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget v3, Lcom/samsung/android/penup/R$color;->set_as_downloadable_selected:I

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mSetAsDownloadableTextView:Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/penup/R$drawable;->btn_post_download_default:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mSetAsDownloadableTextView:Landroid/widget/TextView;

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mSetAsDownloadableTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/android/penup/internal/dialog/PostDialog$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/penup/internal/dialog/PostDialog$6;-><init>(Lcom/samsung/android/penup/internal/dialog/PostDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mArtworkTitleDescLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mSetAsDownloadableTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setTagButtonImageView(Landroid/widget/LinearLayout;)V
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lcom/samsung/android/penup/R$drawable;->btn_tag_normal:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Lcom/samsung/android/penup/internal/dialog/PostDialog$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/penup/internal/dialog/PostDialog$5;-><init>(Lcom/samsung/android/penup/internal/dialog/PostDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setTagDescriptionTextView()V
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sget v2, Lcom/samsung/android/penup/R$string;->post_artwork_add_tags_in_your_description:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sget v2, Lcom/samsung/android/penup/R$color;->text:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x800003

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mArtworkTitleDescLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setTitleEditText()V
    .locals 4

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mArtworkTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mArtworkTitleEditText:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<i>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    sget v3, Lcom/samsung/android/penup/R$string;->post_artwork_edit_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</i>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mArtworkTitleEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/samsung/android/penup/R$color;->artwork_title_hint:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mArtworkTitleEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mArtworkTitleEditText:Landroid/widget/EditText;

    const-string v2, "disableEmoticonInput=true"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mArtworkTitleEditText:Landroid/widget/EditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x2d

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mArtworkTitleEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/samsung/android/penup/R$color;->artwork_title:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mArtworkTitleEditText:Landroid/widget/EditText;

    sget v1, Lcom/samsung/android/penup/R$drawable;->edit_text:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mArtworkTitleDescLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mArtworkTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setTitleTextView()V
    .locals 5

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x32

    invoke-virtual {p0, v1}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sget v4, Lcom/samsung/android/penup/R$string;->post_dialog_main_title:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v0, "#85c8da"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/16 v0, 0x13

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mRootLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private showPostDialog()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mArtworkTitleEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mArtworkDescriptionEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->setArtworkImage()V

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->setCollectionList()V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mPenupClient:Lcom/samsung/android/penup/PenupClient;

    invoke-virtual {v0}, Lcom/samsung/android/penup/PenupClient;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mProgressDialogHelper:Lcom/samsung/android/penup/internal/ProgressDialogHelper;

    invoke-virtual {v0}, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->dismissProgressDialog()V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mIsPosted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/penup/ResponseResult;

    const/16 v1, 0x1f40

    const-string v2, "The post dialog is canceled."

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/penup/ResponseResult;-><init>(ILjava/lang/String;)V

    new-instance v1, Lcom/samsung/android/penup/internal/request/RequestThread;

    iget-object v2, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mPenupClient:Lcom/samsung/android/penup/PenupClient;

    invoke-virtual {v2}, Lcom/samsung/android/penup/PenupClient;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/penup/internal/response/ResponseType;->ARTWORK:Lcom/samsung/android/penup/internal/response/ResponseType;

    iget-object v4, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mResourceCallback:Lcom/samsung/android/penup/ResourceCallback;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/samsung/android/penup/internal/request/RequestThread;-><init>(Landroid/content/Context;Lcom/samsung/android/penup/ResponseResult;Lcom/samsung/android/penup/internal/response/ResponseType;Lcom/samsung/android/penup/ResourceCallback;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mNeedDismissDialog:Z

    :goto_0
    return-void
.end method

.method public init(Lcom/samsung/android/penup/PenupClient;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->init(Lcom/samsung/android/penup/PenupClient;)V

    new-instance p1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mDialog:Landroid/app/Dialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mProgressDialogHelper:Lcom/samsung/android/penup/internal/ProgressDialogHelper;

    new-instance v0, Lcom/samsung/android/penup/internal/dialog/PostDialog$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/penup/internal/dialog/PostDialog$4;-><init>(Lcom/samsung/android/penup/internal/dialog/PostDialog;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->setProgressDialogListener(Lcom/samsung/android/penup/internal/ProgressDialogHelper$ProgressDialogListener;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mCollectionList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->setRootLinearLayout()V

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->setTitleTextView()V

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->setScrollView()V

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->setMainLinearLayout()V

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->setArtworkImageView()V

    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->setHorizontalDividerImageView(Landroid/widget/LinearLayout;)V

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->setArtworkTitleDescLinearLayout()V

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->setCollectionLinearLayout()V

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->setBottomLinearLayout()V

    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mRootLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public launchPostDialog(Landroid/net/Uri;Lcom/samsung/android/penup/ResourceCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/samsung/android/penup/ResourceCallback<",
            "Lcom/samsung/android/penup/model/ArtworkResource;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mIsPosted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mProgressDialogHelper:Lcom/samsung/android/penup/internal/ProgressDialogHelper;

    invoke-virtual {v0, v1}, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->showProgressDialog(Z)V

    iput-object p1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mImageUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mResourceCallback:Lcom/samsung/android/penup/ResourceCallback;

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->initCollectionList()V

    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mPenupClient:Lcom/samsung/android/penup/PenupClient;

    iget-object p2, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mCollectionResourceListCallback:Lcom/samsung/android/penup/ResourceListCallback;

    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2}, Lcom/samsung/android/penup/CollectionApi;->getMyCollections(Lcom/samsung/android/penup/PenupClient;ILjava/lang/String;Lcom/samsung/android/penup/ResourceListCallback;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    iget-boolean p1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog;->mNeedDismissDialog:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    invoke-virtual {p0}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->dismiss()V

    return-void
.end method
