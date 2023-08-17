.class final Lcom/samsung/android/spr/drawable/SprDrawable$1;
.super Lcom/samsung/android/spr/drawable/SprDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/spr/drawable/SprDrawable;->getErrorDrawable(Ljava/lang/String;)Lcom/samsung/android/spr/drawable/SprDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/spr/drawable/document/SprDocument;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/spr/drawable/SprDrawable;-><init>(Lcom/samsung/android/spr/drawable/document/SprDocument;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/samsung/android/spr/drawable/SprDrawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, -0x1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget-object v1, v1, Lcom/samsung/android/spr/drawable/document/SprDocument;->mName:Ljava/lang/String;

    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v4, 0x42200000    # 40.0f

    invoke-virtual {p1, v1, v2, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method
