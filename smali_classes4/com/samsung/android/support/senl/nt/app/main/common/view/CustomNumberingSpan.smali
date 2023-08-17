.class public Lcom/samsung/android/support/senl/nt/app/main/common/view/CustomNumberingSpan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;


# instance fields
.field private final mColor:I

.field private final mGapWidth:I

.field private final mIndex:Ljava/lang/String;

.field private final mLeadWidth:I


# direct methods
.method public constructor <init>(IILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/CustomNumberingSpan;->mGapWidth:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/CustomNumberingSpan;->mLeadWidth:I

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/CustomNumberingSpan;->mIndex:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/CustomNumberingSpan;->mColor:I

    return-void
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 0

    if-eqz p11, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object p5

    sget-object p7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget p7, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/CustomNumberingSpan;->mColor:I

    invoke-virtual {p2, p7}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p8, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/CustomNumberingSpan;->mIndex:Ljava/lang/String;

    invoke-virtual {p7, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p8, " "

    invoke-virtual {p7, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p2, p7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p7

    new-instance p8, Ljava/lang/StringBuilder;

    invoke-direct {p8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p9, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/CustomNumberingSpan;->mIndex:Ljava/lang/String;

    invoke-virtual {p8, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p9, "."

    invoke-virtual {p8, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p8

    iget p9, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/CustomNumberingSpan;->mLeadWidth:I

    add-int/2addr p9, p3

    int-to-float p3, p9

    const/high16 p9, 0x40000000    # 2.0f

    div-float/2addr p7, p9

    sub-float/2addr p3, p7

    int-to-float p4, p4

    mul-float/2addr p3, p4

    int-to-float p4, p6

    invoke-virtual {p1, p8, p3, p4, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 1

    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/CustomNumberingSpan;->mLeadWidth:I

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/CustomNumberingSpan;->mGapWidth:I

    add-int/2addr p1, v0

    return p1
.end method
