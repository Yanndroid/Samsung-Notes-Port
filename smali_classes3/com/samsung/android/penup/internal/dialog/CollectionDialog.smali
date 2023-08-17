.class public Lcom/samsung/android/penup/internal/dialog/CollectionDialog;
.super Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/penup/internal/dialog/CollectionDialog$CollectionDialogCallback;
    }
.end annotation


# static fields
.field private static final COLOR_BACKGROUND:Ljava/lang/String; = "#ececec"

.field private static final COLOR_BUTTON_PRESSED:Ljava/lang/String; = "#000000"

.field private static final COLOR_BUTTON_TEXT_DISABLED:Ljava/lang/String; = "#aaaaaa"

.field private static final COLOR_BUTTON_TEXT_ENABLED:Ljava/lang/String; = "#3a3a3a"

.field private static final COLOR_COLLECTION_EDIT_TEXT_HINT:Ljava/lang/String; = "#6a6a6a"

.field private static final COLOR_TITLE_TEXT_VIEW:Ljava/lang/String; = "#85c8da"

.field private static final DP_BUTTON_TEXT_SIZE:I = 0x12

.field private static final DP_COLLECTION_EDIT_TEXT_HORIZONTAL_MARGIN:I = 0xa

.field private static final DP_COLLECTION_EDIT_TEXT_VERTICAL_MARGIN:I = 0x14

.field private static final DP_TITLE_TEXT_VIEW_HEIGHT:I = 0x32

.field private static final DP_TITLE_TEXT_VIEW_TEXT_SIZE:I = 0x14

.field private static final MAX_COLLECTION_LENGTH:I = 0x19

.field private static volatile sCollectionDialog:Lcom/samsung/android/penup/internal/dialog/CollectionDialog;


# instance fields
.field private mBottomLinearLayout:Landroid/widget/LinearLayout;

.field private mButtonLinearLayout:Landroid/widget/LinearLayout;

.field private final mButtonTouchListener:Landroid/view/View$OnTouchListener;

.field private mCallback:Lcom/samsung/android/penup/internal/dialog/CollectionDialog$CollectionDialogCallback;

.field private mCancelButton:Landroid/widget/Button;

.field private mCollectionEditText:Landroid/widget/EditText;

.field private mRootLinearLayout:Landroid/widget/LinearLayout;

.field private mScrollLinearLayout:Landroid/widget/LinearLayout;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSubmitButton:Landroid/widget/Button;

.field private final mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/penup/internal/dialog/CollectionDialog$1;-><init>(Lcom/samsung/android/penup/internal/dialog/CollectionDialog;)V

    iput-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mButtonTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/penup/internal/dialog/CollectionDialog$2;-><init>(Lcom/samsung/android/penup/internal/dialog/CollectionDialog;)V

    iput-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/penup/internal/dialog/CollectionDialog;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mSubmitButton:Landroid/widget/Button;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/penup/internal/dialog/CollectionDialog;)Lcom/samsung/android/penup/internal/dialog/CollectionDialog$CollectionDialogCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mCallback:Lcom/samsung/android/penup/internal/dialog/CollectionDialog$CollectionDialogCallback;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/penup/internal/dialog/CollectionDialog;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mCollectionEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/penup/internal/dialog/CollectionDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->hideSoftKeyboard()V

    return-void
.end method

.method private hideSoftKeyboard()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mCollectionEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

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

    iput-object v1, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mBottomLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mBottomLinearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mBottomLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->setHorizontalDividerImageView(Landroid/widget/LinearLayout;)V

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->setButtonLinearLayout()V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mScrollLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mBottomLinearLayout:Landroid/widget/LinearLayout;

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

    iput-object v1, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mButtonLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mButtonLinearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->setCancelButton()V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mButtonLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->setVerticalDividerImageView(Landroid/widget/LinearLayout;)V

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->setSubmitButton()V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mBottomLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mButtonLinearLayout:Landroid/widget/LinearLayout;

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

    iput-object v2, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mCancelButton:Landroid/widget/Button;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setGravity(I)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mCancelButton:Landroid/widget/Button;

    sget v2, Lcom/samsung/android/penup/R$string;->dialog_cancel:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mCancelButton:Landroid/widget/Button;

    const/16 v2, 0x12

    invoke-virtual {p0, v2}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mCancelButton:Landroid/widget/Button;

    const-string v1, "#3a3a3a"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mCancelButton:Landroid/widget/Button;

    const-string v1, "#ececec"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mCancelButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/penup/internal/dialog/CollectionDialog$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/penup/internal/dialog/CollectionDialog$5;-><init>(Lcom/samsung/android/penup/internal/dialog/CollectionDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mButtonLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setCollectionEditText()V
    .locals 5

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mCollectionEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mCollectionEditText:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<i>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    sget v3, Lcom/samsung/android/penup/R$string;->collection_list_add_collection_hint:I

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

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mCollectionEditText:Landroid/widget/EditText;

    const-string v1, "#6a6a6a"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mCollectionEditText:Landroid/widget/EditText;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mCollectionEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mCollectionEditText:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mCollectionEditText:Landroid/widget/EditText;

    const-string v2, "disableEmoticonInput=true"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mCollectionEditText:Landroid/widget/EditText;

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x19

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mCollectionEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mCollectionEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mScrollLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mCollectionEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

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

    iput-object v1, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mRootLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mRootLinearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mRootLinearLayout:Landroid/widget/LinearLayout;

    const-string v1, "#ececec"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method

.method private setScrollLinearLayout()V
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

    iput-object v1, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mScrollLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mScrollLinearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mScrollLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

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

    iput-object v1, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mRootLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setSubmitButton()V
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

    iput-object v2, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mSubmitButton:Landroid/widget/Button;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setGravity(I)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mSubmitButton:Landroid/widget/Button;

    sget v2, Lcom/samsung/android/penup/R$string;->dialog_submit:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mSubmitButton:Landroid/widget/Button;

    const/16 v2, 0x12

    invoke-virtual {p0, v2}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mSubmitButton:Landroid/widget/Button;

    const-string v2, "#aaaaaa"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mSubmitButton:Landroid/widget/Button;

    const-string v2, "#ececec"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mSubmitButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mSubmitButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mSubmitButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/penup/internal/dialog/CollectionDialog$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/penup/internal/dialog/CollectionDialog$6;-><init>(Lcom/samsung/android/penup/internal/dialog/CollectionDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mButtonLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mSubmitButton:Landroid/widget/Button;

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

    sget v4, Lcom/samsung/android/penup/R$string;->collection_list_add_collection_title:I

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

    invoke-virtual {v2, v1, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->convertDpToPx(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mRootLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public init(Lcom/samsung/android/penup/PenupClient;Lcom/samsung/android/penup/internal/dialog/CollectionDialog$CollectionDialogCallback;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->init(Lcom/samsung/android/penup/PenupClient;)V

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

    iput-object p2, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mCallback:Lcom/samsung/android/penup/internal/dialog/CollectionDialog$CollectionDialogCallback;

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->setRootLinearLayout()V

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->setTitleTextView()V

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->setScrollView()V

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->setScrollLinearLayout()V

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->setCollectionEditText()V

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->setBottomLinearLayout()V

    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mDialog:Landroid/app/Dialog;

    iget-object p2, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mRootLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/penup/internal/dialog/CollectionDialog$3;-><init>(Lcom/samsung/android/penup/internal/dialog/CollectionDialog;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setDialogSize()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v1, 0x1

    const/high16 v2, 0x43b40000    # 360.0f

    iget-object v3, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-le v0, v1, :cond_1

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    :cond_1
    int-to-double v3, v0

    const-wide v5, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v3, v5

    double-to-int v1, v3

    sub-int/2addr v0, v1

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public showDialog()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->mCollectionEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->setDialogSize()V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mPenupClient:Lcom/samsung/android/penup/PenupClient;

    invoke-virtual {v0}, Lcom/samsung/android/penup/PenupClient;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/penup/internal/dialog/CollectionDialog$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/penup/internal/dialog/CollectionDialog$4;-><init>(Lcom/samsung/android/penup/internal/dialog/CollectionDialog;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
