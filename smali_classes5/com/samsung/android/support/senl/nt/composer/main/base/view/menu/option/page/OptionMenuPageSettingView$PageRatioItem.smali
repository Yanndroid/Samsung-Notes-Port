.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSettingView$PageRatioItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSettingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageRatioItem"
.end annotation


# instance fields
.field public mDrawableRes:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field public mStringRes:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field public mType:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSettingView$PageRatioItem;->mType:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSettingView$PageRatioItem;->mStringRes:I

    iput p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSettingView$PageRatioItem;->mDrawableRes:I

    return-void
.end method


# virtual methods
.method public getDrawableRes()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSettingView$PageRatioItem;->mDrawableRes:I

    return v0
.end method

.method public getStringRes()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSettingView$PageRatioItem;->mStringRes:I

    return v0
.end method

.method public getType()Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSettingView$PageRatioItem;->mType:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;

    return-object v0
.end method
