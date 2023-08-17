.class Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;


# static fields
.field public static final ALIGN_CENTER:I = 0x1

.field public static final ALIGN_SPREAD:I = 0x3

.field public static final ALIGN_START:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SpenPenListView"


# instance fields
.field private mAlignInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBetweenPens:I

.field private mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mOnItemClickListener:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList$OnItemClickListener;

.field private final mPenClickListener:Landroid/view/View$OnClickListener;

.field private mPenEndMargin:I

.field private mPenStartMargin:I

.field private mSelectedGuideId:I

.field private mSelectedIndex:I

.field private mSelectedTranslationValue:I

.field private mUnSelectedGuideId:I

.field private mUnSelectedTranslationValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView$1;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mPenClickListener:Landroid/view/View$OnClickListener;

    const-string p2, "SpenPenListView"

    const-string v0, "2. SpenPenListImpl()"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mContext:Landroid/content/Context;

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mSelectedIndex:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mPenStartMargin:I

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mPenEndMargin:I

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mBetweenPens:I

    sget p1, Lcom/samsung/android/spen/R$id;->pens_view_selected_guideline:I

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mSelectedGuideId:I

    sget p1, Lcom/samsung/android/spen/R$id;->pens_view_unselected_guideline:I

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mUnSelectedGuideId:I

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;)Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList$OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mOnItemClickListener:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList$OnItemClickListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mChildren:Ljava/util/List;

    return-object p0
.end method

.method private addChild(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mChildren:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mChildren:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getAlignInfo(I)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mAlignInfo:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt p1, v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    return p1
.end method

.method private selectPen(IZ)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectPen() index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mSelectedIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mSelectedIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPenListView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mSelectedIndex:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_0

    move v9, v1

    goto :goto_0

    :cond_0
    move v9, v2

    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-eqz v9, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->getPenView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v5, 0x0

    iget v8, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mSelectedIndex:I

    move-object v3, p0

    move-object v4, v0

    move v6, p2

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->updateSelected(Landroid/view/View;ZZZI)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->getPenView(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mSelectedIndex:I

    invoke-virtual {v4, v1}, Landroid/view/View;->setSelected(Z)V

    const/4 v5, 0x1

    move-object v3, p0

    move v6, p2

    move v7, v9

    move v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->updateSelected(Landroid/view/View;ZZZI)V

    :cond_2
    return-void
.end method

.method private updateChildList()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[BEFORE] updatechildList() mChild="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mChildren:Ljava/util/List;

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SpenPenListView"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenViewInterface;

    if-nez v5, :cond_1

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->addChild(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mChildren:Ljava/util/List;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mOnItemClickListener:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList$OnItemClickListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mChildren:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mChildren:Ljava/util/List;

    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mSelectedIndex:I

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mAlignInfo:Ljava/util/Map;

    return-void
.end method

.method public getPenAnimator(Landroid/view/View;Z)Landroid/animation/Animator;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "SpenPenListView"

    const-string/jumbo p2, "updateSelected child is null"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 p2, -0x1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mUnSelectedTranslationValue:I

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mSelectedTranslationValue:I

    sub-int/2addr v1, v2

    mul-int/2addr p2, v1

    const/4 v1, 0x1

    new-array v1, v1, [F

    int-to-float p2, p2

    aput p2, v1, v0

    const-string/jumbo p2, "translationY"

    invoke-static {p1, p2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 p2, 0x3

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method public getPenCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mChildren:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPenView(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mChildren:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSelectPenIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mSelectedIndex:I

    return v0
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3. onFinishInflate() childCont="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPenListView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mChildren:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->updateChildList()V

    :cond_0
    return-void
.end method

.method public selectPen(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mChildren:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->selectPen(IZ)V

    :cond_0
    return-void
.end method

.method public setAlignInfo(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mAlignInfo:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mAlignInfo:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mAlignInfo:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setOnItemClickListener(Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList$OnItemClickListener;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mOnItemClickListener:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList$OnItemClickListener;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mPenClickListener:Landroid/view/View$OnClickListener;

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setPenList(II)V
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    new-array v9, p1, [I

    const/4 v10, 0x0

    move v1, v10

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v0, p2, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setId(I)V

    aput v2, v9, v1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->addChild(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {p2}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    invoke-virtual {p2, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mUnSelectedGuideId:I

    invoke-virtual {p2, v0, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->create(II)V

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mSelectedGuideId:I

    invoke-virtual {p2, v0, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->create(II)V

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mUnSelectedGuideId:I

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mUnSelectedTranslationValue:I

    invoke-virtual {p2, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelineBegin(II)V

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mSelectedGuideId:I

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mSelectedTranslationValue:I

    invoke-virtual {p2, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelineBegin(II)V

    sget v2, Lcom/samsung/android/spen/R$id;->pens_view_list_start_guideline:I

    const/4 v0, 0x1

    invoke-virtual {p2, v2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->create(II)V

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mPenStartMargin:I

    invoke-virtual {p2, v2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelineBegin(II)V

    sget v4, Lcom/samsung/android/spen/R$id;->pens_view_list_end_guideline:I

    invoke-virtual {p2, v4, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->create(II)V

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mPenEndMargin:I

    invoke-virtual {p2, v4, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelineEnd(II)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->getAlignInfo(I)I

    move-result v11

    const/4 v1, 0x2

    const/4 v12, 0x3

    if-ne v11, v1, :cond_3

    move v1, v10

    :goto_1
    if-ge v1, p1, :cond_6

    if-eqz v1, :cond_1

    aget v3, v9, v1

    const/4 v4, 0x6

    add-int/lit8 v2, v1, -0x1

    aget v5, v9, v2

    const/4 v6, 0x7

    goto :goto_2

    :cond_1
    aget v3, v9, v1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x6

    :goto_2
    const/4 v7, 0x0

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    add-int/lit8 v2, p1, -0x1

    if-eq v1, v2, :cond_2

    aget v3, v9, v1

    const/4 v4, 0x7

    add-int/lit8 v2, v1, 0x1

    aget v5, v9, v2

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-le p1, v0, :cond_5

    const/4 v3, 0x6

    const/4 v5, 0x7

    const/4 v7, 0x0

    if-ne v11, v12, :cond_4

    move v8, v0

    goto :goto_3

    :cond_4
    move v8, v1

    :goto_3
    move-object v1, p2

    move-object v6, v9

    invoke-virtual/range {v1 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->createHorizontalChainRtl(IIII[I[FI)V

    goto :goto_4

    :cond_5
    aget v3, v9, v10

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    aget v3, v9, v10

    const/4 v4, 0x7

    const/4 v6, 0x7

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    :cond_6
    :goto_4
    if-ge v10, p1, :cond_7

    aget v1, v9, v10

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mUnSelectedGuideId:I

    invoke-virtual {p2, v1, v12, v2, v12}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    if-ne v11, v0, :cond_8

    :goto_5
    if-ge v0, p1, :cond_8

    aget p2, v9, v0

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mBetweenPens:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    return-void
.end method

.method public setPenMargin(III)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mPenStartMargin:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mPenEndMargin:I

    iput p3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mBetweenPens:I

    return-void
.end method

.method public setSelectedGuideInfo(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mSelectedTranslationValue:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mUnSelectedTranslationValue:I

    return-void
.end method

.method public unSelectPen(I)V
    .locals 8

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mSelectedIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mSelectedIndex:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->getPenView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, v0

    move v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->updateSelected(Landroid/view/View;ZZZI)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mSelectedIndex:I

    :cond_0
    return-void
.end method

.method public updateSelected(Landroid/view/View;ZZZI)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "SpenPenListView"

    const-string/jumbo p2, "updateSelected child is null"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p4, 0x3

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->getPenAnimator(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_3

    const-wide/16 p2, 0xc8

    invoke-virtual {p1, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-static {p4}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_1

    :cond_1
    new-instance p3, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {p3}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    invoke-virtual {p3, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mSelectedGuideId:I

    goto :goto_0

    :cond_2
    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->mUnSelectedGuideId:I

    :goto_0
    invoke-virtual {p3, p1, p4, p2, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {p3, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_3
    :goto_1
    return-void
.end method
