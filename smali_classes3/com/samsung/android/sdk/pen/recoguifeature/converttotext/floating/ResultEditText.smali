.class public Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;
.super Landroid/widget/EditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$TextChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ResultEditText"


# instance fields
.field private mBeforeCursorIndex:I

.field private mBeforeText:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCursorIndex:I

.field private mIsBlock:Z

.field private mTextChangedListener:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$TextChangedListener;

.field private textWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->mCursorIndex:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->mBeforeText:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->mBeforeCursorIndex:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->mIsBlock:Z

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->mTextChangedListener:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$TextChangedListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$1;-><init>(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->textWatcher:Landroid/text/TextWatcher;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->mCursorIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->mBeforeText:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->mBeforeCursorIndex:I

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->mIsBlock:Z

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->mTextChangedListener:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$TextChangedListener;

    new-instance p2, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$1;-><init>(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->textWatcher:Landroid/text/TextWatcher;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->mBeforeText:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->mBeforeText:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->mBeforeCursorIndex:I

    return p0
.end method

.method public static synthetic access$102(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->mBeforeCursorIndex:I

    return p1
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->mCursorIndex:I

    return p0
.end method

.method public static synthetic access$202(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->mCursorIndex:I

    return p1
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;)Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$TextChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->mTextChangedListener:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$TextChangedListener;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->mIsBlock:Z

    return p1
.end method


# virtual methods
.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->mIsBlock:Z

    if-eqz v0, :cond_0

    const-string p1, "ResultEditText"

    const-string v0, "ResultEditText::dispatchKeyEventPreIme blocked!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public getCursorIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->mCursorIndex:I

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    const-string v0, "ResultEditText"

    const-string v1, "ResultEditText::onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public setCursorIndex(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->mCursorIndex:I

    return-void
.end method

.method public setTextChangedListener(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$TextChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText;->mTextChangedListener:Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/floating/ResultEditText$TextChangedListener;

    return-void
.end method
