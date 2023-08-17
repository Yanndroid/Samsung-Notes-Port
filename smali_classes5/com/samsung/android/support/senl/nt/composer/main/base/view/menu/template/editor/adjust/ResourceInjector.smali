.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/ResourceInjector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/IResourceInjector;


# instance fields
.field private mBorderThickness:I

.field private mInsideBorderPaint:Landroid/graphics/Paint;

.field private mTrimAreaPaint:Landroid/graphics/Paint;

.field private mTrimAreaPaintInMoving:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$color;->primary:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$color;->template_editor_trim_area_transparency_70:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$color;->template_editor_trim_area_transparency_40:I

    invoke-virtual {p1, v3, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->template_editor_border_thickness:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/ResourceInjector;->mBorderThickness:I

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/ResourceInjector;->createBorderPaint(I)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/ResourceInjector;->mInsideBorderPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/ResourceInjector;->createTrimAreaPaint(I)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/ResourceInjector;->mTrimAreaPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/ResourceInjector;->createTrimAreaPaint(I)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/ResourceInjector;->mTrimAreaPaintInMoving:Landroid/graphics/Paint;

    return-void
.end method

.method private createBorderPaint(I)Landroid/graphics/Paint;
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/ResourceInjector;->mBorderThickness:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method

.method public static createTrimAreaPaint(I)Landroid/graphics/Paint;
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method


# virtual methods
.method public getBorderThickness()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/ResourceInjector;->mBorderThickness:I

    return v0
.end method

.method public getInsideBorderPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/ResourceInjector;->mInsideBorderPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTrimAreaPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/ResourceInjector;->mTrimAreaPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTrimAreaPaintInMoving()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/ResourceInjector;->mTrimAreaPaintInMoving:Landroid/graphics/Paint;

    return-object v0
.end method
