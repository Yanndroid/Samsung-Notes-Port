.class public Lcom/samsung/android/support/senl/nt/app/main/common/hashtag/HashTagListLayout;
.super Lcom/google/android/flexbox/FlexboxLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/common/hashtag/HashTagListLayout$Contract;
    }
.end annotation


# instance fields
.field private mContract:Lcom/samsung/android/support/senl/nt/app/main/common/hashtag/HashTagListLayout$Contract;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/hashtag/HashTagListLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/hashtag/HashTagListLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/flexbox/FlexboxLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/hashtag/HashTagListLayout;->init()V

    return-void
.end method

.method private addHashTagItem(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$layout;->hash_tag_flexbox_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$id;->tag_item_text:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/ContentUtils;->convertTagText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {p1, v3, v4}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/hashtag/HashTagListLayout;->mContract:Lcom/samsung/android/support/senl/nt/app/main/common/hashtag/HashTagListLayout$Contract;

    if-eqz p1, :cond_0

    invoke-interface {p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/hashtag/HashTagListLayout$Contract;->isSelectedTag(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayout;->setFlexWrap(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayout;->setJustifyContent(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayout;->setFlexDirection(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/hashtag/HashTagListLayout;->mContract:Lcom/samsung/android/support/senl/nt/app/main/common/hashtag/HashTagListLayout$Contract;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/hashtag/HashTagListLayout$Contract;->onTagSelected(Ljava/lang/String;)V

    return-void
.end method

.method public reloadTags(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/hashtag/HashTagListLayout;->addHashTagItem(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setContract(Lcom/samsung/android/support/senl/nt/app/main/common/hashtag/HashTagListLayout$Contract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/hashtag/HashTagListLayout;->mContract:Lcom/samsung/android/support/senl/nt/app/main/common/hashtag/HashTagListLayout$Contract;

    return-void
.end method
