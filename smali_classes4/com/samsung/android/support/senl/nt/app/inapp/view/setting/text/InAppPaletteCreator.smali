.class public abstract Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator$OnItemActionListener;
    }
.end annotation


# static fields
.field public static final COLOR_PICKER_INDEX:I = -0x1

.field public static final DEFAULT_PALETTE_ITEM_COUNT:I = 0x8


# instance fields
.field public final mColorPaletteData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public mCurrentColor:Ljava/lang/Integer;

.field public mCurrentColorIndex:I

.field public mCurrentPaletteId:I

.field public final mItemActionListener:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator$OnItemActionListener;

.field public final mPaletteContainerViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/app/inapp/view/winset/palette/RoundedPaletteContainerView;",
            ">;"
        }
    .end annotation
.end field

.field public final mPickerSelector:Landroid/view/View;

.field public final mTitleColorBar:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/ImageView;Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator$OnItemActionListener;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator$OnItemActionListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mPaletteContainerViewList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mColorPaletteData:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mCurrentColor:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mPickerSelector:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mTitleColorBar:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mItemActionListener:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator$OnItemActionListener;

    return-void
.end method


# virtual methods
.method public getColorPaletteData()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mColorPaletteData:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentColor()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mCurrentColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPaletteContainerViewList()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/app/inapp/view/winset/palette/RoundedPaletteContainerView;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mPaletteContainerViewList:Ljava/util/List;

    return-object v0
.end method

.method public initPaletteContainerViewList(I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mPaletteContainerViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$dimen;->in_app_text_mode_palette_item_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$layout;->inapp_text_color_palette_container:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/app/inapp/view/winset/palette/RoundedPaletteContainerView;

    const/16 v3, 0x8

    const v4, 0x3f90a3d7    # 1.13f

    invoke-virtual {v2, v3, v0, v0, v4}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;->setPaletteItemInfo(IIIF)V

    new-instance v3, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator$1;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator$1;-><init>(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;I)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;->setPaletteViewContract(Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView$PaletteViewContract;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mPaletteContainerViewList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract setSelectedColor(II)V
.end method

.method public abstract updateColor(I)V
.end method

.method public updatePickerSelection(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mPickerSelector:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
