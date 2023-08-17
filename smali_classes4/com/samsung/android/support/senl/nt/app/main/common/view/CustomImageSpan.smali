.class public Lcom/samsung/android/support/senl/nt/app/main/common/view/CustomImageSpan;
.super Landroid/text/style/ImageSpan;
.source "SourceFile"


# instance fields
.field private final mSize:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/CustomImageSpan;->mSize:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    invoke-virtual {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr p3, p7

    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr p7, p4

    add-int/2addr p3, p7

    div-int/lit8 p3, p3, 0x2

    float-to-int p4, p5

    iget p5, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/CustomImageSpan;->mSize:I

    div-int/lit8 p6, p5, 0x2

    sub-int p6, p3, p6

    add-int p7, p4, p5

    div-int/lit8 p5, p5, 0x2

    add-int/2addr p3, p5

    invoke-virtual {p2, p4, p6, p7, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/CustomImageSpan;->mSize:I

    return p1
.end method
