.class public Lcom/samsung/android/sdk/pen/text/SpenTextFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenTextFilter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsTextInputBlock:Z

.field private mLimit:I

.field private mTextLimitListener:Lcom/samsung/android/sdk/pen/text/SpenTextLimitListener;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/text/SpenTextFilter;->mIsTextInputBlock:Z

    iput p2, p0, Lcom/samsung/android/sdk/pen/text/SpenTextFilter;->mLimit:I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenTextFilter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/text/SpenTextFilter;->mView:Landroid/view/View;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenTextFilter;->mTextLimitListener:Lcom/samsung/android/sdk/pen/text/SpenTextLimitListener;

    return-void
.end method

.method private static native native_getFilterLength(Ljava/lang/String;I)I
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenTextFilter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenTextFilter;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget v1, p0, Lcom/samsung/android/sdk/pen/text/SpenTextFilter;->mLimit:I

    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_1
    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/sdk/pen/text/SpenTextFilter;->filterLength(ILjava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/text/SpenTextFilter;->mView:Landroid/view/View;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/text/SpenTextFilter;->mContext:Landroid/content/Context;

    const-string p3, "input_method"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/text/SpenTextFilter;->mView:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/text/SpenTextFilter;->mTextLimitListener:Lcom/samsung/android/sdk/pen/text/SpenTextLimitListener;

    if-eqz p2, :cond_3

    iget p3, p0, Lcom/samsung/android/sdk/pen/text/SpenTextFilter;->mLimit:I

    invoke-virtual {p2, p3}, Lcom/samsung/android/sdk/pen/text/SpenTextLimitListener;->onExceedTextLimit(I)V

    :cond_3
    iget-boolean p2, p0, Lcom/samsung/android/sdk/pen/text/SpenTextFilter;->mIsTextInputBlock:Z

    if-eqz p2, :cond_4

    const-string p1, "SpenTextFilter"

    const-string p2, "filter() - text input blocked."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p4, p5, p6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method public filterLength(ILjava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2

    invoke-interface {p5}, Landroid/text/Spanned;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gt v0, p1, :cond_0

    if-ne p3, p4, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p5}, Landroid/text/Spanned;->length()I

    move-result p5

    sub-int/2addr p7, p6

    sub-int/2addr p5, p7

    sub-int/2addr p1, p5

    if-gtz p1, :cond_1

    const-string p1, ""

    return-object p1

    :cond_1
    sub-int p5, p4, p3

    if-lt p1, p5, :cond_2

    return-object v1

    :cond_2
    invoke-interface {p2, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, p1}, Lcom/samsung/android/sdk/pen/text/SpenTextFilter;->native_getFilterLength(Ljava/lang/String;I)I

    move-result p1

    add-int/2addr p1, p3

    invoke-interface {p2, p3, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getLimitLength()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/text/SpenTextFilter;->mLimit:I

    return v0
.end method

.method public setLimitLength(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/text/SpenTextFilter;->mLimit:I

    return-void
.end method

.method public setTextInputBlock(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/text/SpenTextFilter;->mIsTextInputBlock:Z

    return-void
.end method

.method public setTextLimitListener(Lcom/samsung/android/sdk/pen/text/SpenTextLimitListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenTextFilter;->mTextLimitListener:Lcom/samsung/android/sdk/pen/text/SpenTextLimitListener;

    return-void
.end method
