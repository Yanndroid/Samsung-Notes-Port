.class public Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FLAG_EXCLUSIVE:I = 0x21


# instance fields
.field private mForegroundNormalColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private mForegroundPlayColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private mSearchBackgroundColorSpan:Landroid/text/style/BackgroundColorSpan;

.field private mSearchKeyword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    sget v1, Lcom/samsung/android/support/senl/nt/stt/R$color;->stt_play_normal_span:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;->mForegroundNormalColorSpan:Landroid/text/style/ForegroundColorSpan;

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    sget v1, Lcom/samsung/android/support/senl/nt/stt/R$color;->stt_played_span:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;->mForegroundPlayColorSpan:Landroid/text/style/ForegroundColorSpan;

    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    sget v1, Lcom/samsung/android/support/senl/nt/stt/R$color;->stt_search_highlight_color:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-direct {v0, p1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;->mSearchBackgroundColorSpan:Landroid/text/style/BackgroundColorSpan;

    return-void
.end method


# virtual methods
.method public getNormalPaintedString(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 4

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;->mForegroundNormalColorSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-static {p1}, Landroid/text/style/CharacterStyle;->wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object p1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x21

    invoke-virtual {v0, p1, v2, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;->updateSearchHighLight(Landroid/text/SpannableStringBuilder;)V

    return-object v0
.end method

.method public getPlayPaintedString(Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;
    .locals 3

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-ltz p2, :cond_0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    if-gt p2, p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;->mForegroundPlayColorSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-static {p1}, Landroid/text/style/CharacterStyle;->wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object p1

    const/4 v1, 0x0

    const/16 v2, 0x21

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;->updateSearchHighLight(Landroid/text/SpannableStringBuilder;)V

    :cond_0
    return-object v0
.end method

.method public setNormalPaintedString(Landroid/text/SpannableStringBuilder;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;->mForegroundNormalColorSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-static {v0}, Landroid/text/style/CharacterStyle;->wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;->updateSearchHighLight(Landroid/text/SpannableStringBuilder;)V

    :cond_0
    return-void
.end method

.method public setPlayPaintedString(Landroid/text/SpannableStringBuilder;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;->mForegroundPlayColorSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-static {v0}, Landroid/text/style/CharacterStyle;->wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;->updateSearchHighLight(Landroid/text/SpannableStringBuilder;)V

    :cond_0
    return-void
.end method

.method public setPlayPaintedString(Landroid/text/SpannableStringBuilder;I)V
    .locals 3

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-gt p2, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;->mForegroundPlayColorSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-static {v0}, Landroid/text/style/CharacterStyle;->wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x21

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;->updateSearchHighLight(Landroid/text/SpannableStringBuilder;)V

    :cond_0
    return-void
.end method

.method public setRecordPaintedString(Landroid/text/SpannableStringBuilder;I)V
    .locals 3

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-gt p2, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;->mForegroundPlayColorSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-static {v0}, Landroid/text/style/CharacterStyle;->wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/16 v2, 0x21

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;->updateSearchHighLight(Landroid/text/SpannableStringBuilder;)V

    :cond_0
    return-void
.end method

.method public setSearchKeyWord(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;->mSearchKeyword:Ljava/lang/String;

    return-void
.end method

.method public updateSearchHighLight(Landroid/text/SpannableStringBuilder;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-class v1, Landroid/text/style/CharacterStyle;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/CharacterStyle;

    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v5

    instance-of v5, v5, Landroid/text/style/BackgroundColorSpan;

    if-eqz v5, :cond_1

    invoke-virtual {p1, v4}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;->mSearchKeyword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    :goto_1
    const/4 v0, -0x1

    if-eq v2, v0, :cond_4

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;->mSearchKeyword:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;->mSearchBackgroundColorSpan:Landroid/text/style/BackgroundColorSpan;

    invoke-static {v0}, Landroid/text/style/CharacterStyle;->wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;->mSearchKeyword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    const/16 v3, 0x21

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/base/model/paint/PaintHelper;->mSearchKeyword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_1

    :cond_4
    return-void
.end method
