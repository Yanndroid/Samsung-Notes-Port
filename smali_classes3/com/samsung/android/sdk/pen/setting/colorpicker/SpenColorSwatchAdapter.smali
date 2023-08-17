.class Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenColorSwatchAdapter"


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItemResourceId:I

.field public mSelectedPosition:I

.field private mSelectedString:Ljava/lang/String;

.field private final mSwatchItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchItem;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter;->mSwatchItemList:Ljava/util/List;

    const/4 p2, -0x1

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter;->mSelectedPosition:I

    iput p3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter;->mItemResourceId:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/spen/R$string;->pen_string_selected:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter;->mSelectedString:Ljava/lang/String;

    return-void
.end method

.method private getContentDescription(IZ)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter;->getSwatchItem(I)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchItem;

    move-result-object p1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchItem;->getVoiceAssistant()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter;->mSelectedString:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchItem;->getVoiceAssistant()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getSelectorColor(I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter;->getSwatchItem(I)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchItem;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchItem;->getSelectorColor()I

    move-result p1

    return p1

    :cond_0
    const/high16 p1, -0x1000000

    return p1
.end method

.method private getSwatchItem(I)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchItem;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter;->mSwatchItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchItem;

    return-object p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter;->mSwatchItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter;->getSwatchItem(I)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchItem;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchItem;->getColor()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedPosition()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter;->mSelectedPosition:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter;->mItemResourceId:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    sget p3, Lcom/samsung/android/spen/R$id;->swatch_item:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchItemView;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter$ViewHolder;-><init>()V

    iput-object p3, v1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter$ViewHolder;->mItemView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchItemView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter$ViewHolder;

    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getView() position="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mSelectedPosition="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter;->mSelectedPosition:I

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "SpenColorSwatchAdapter"

    invoke-static {v2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, v1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter$ViewHolder;->mItemView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchItemView;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter;->getSelectorColor(I)I

    move-result v2

    invoke-virtual {p3, v2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchItemView;->setSelectorColor(I)V

    iget-object p3, v1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter$ViewHolder;->mItemView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchItemView;

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter;->mSelectedPosition:I

    const/4 v3, 0x1

    if-ne p1, v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    invoke-virtual {p3, v2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchItemView;->setSelected(Z)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_2

    iget-object p3, v1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter$ViewHolder;->mItemView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchItemView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    iget-object p3, v1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter$ViewHolder;->mItemView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchItemView;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter;->mSelectedPosition:I

    if-ne p1, v1, :cond_3

    move v0, v3

    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter;->getContentDescription(IZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public setSelectedPosition(I)V
    .locals 2

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter;->mSelectedPosition:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSelected() position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenColorSwatchAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
