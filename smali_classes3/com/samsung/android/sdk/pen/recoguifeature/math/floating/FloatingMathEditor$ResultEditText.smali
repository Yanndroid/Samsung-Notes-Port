.class public Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;
.super Landroid/widget/EditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultEditText"
.end annotation


# instance fields
.field private cursorIndex:I

.field private mContext:Landroid/content/Context;

.field private textWatcher:Landroid/text/TextWatcher;

.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

    invoke-direct {p0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;->cursorIndex:I

    new-instance p1, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText$1;-><init>(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;->textWatcher:Landroid/text/TextWatcher;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

    invoke-direct {p0, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;->cursorIndex:I

    new-instance p1, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText$1;-><init>(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;->textWatcher:Landroid/text/TextWatcher;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;->cursorIndex:I

    return p0
.end method

.method public static synthetic access$102(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;->cursorIndex:I

    return p1
.end method


# virtual methods
.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;->this$0:Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;->access$000(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText$2;-><init>(Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public resetCursor()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ResultEditText;->cursorIndex:I

    return-void
.end method
