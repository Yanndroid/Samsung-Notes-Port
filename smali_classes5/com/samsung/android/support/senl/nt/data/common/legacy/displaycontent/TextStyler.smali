.class public Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TextStyler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mEditable:Landroid/text/Editable;

.field private final mIsLastContent:Z


# direct methods
.method public constructor <init>(Landroid/text/Editable;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TextStyler;->mEditable:Landroid/text/Editable;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TextStyler;->mIsLastContent:Z

    return-void
.end method

.method private getEndIndex(I)I
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TextStyler;->mIsLastContent:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TextStyler;->mEditable:Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    return p1
.end method

.method private setBackgroundColor(III)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TextStyler;->mEditable:Landroid/text/Editable;

    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v1, p1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    const/16 p1, 0x21

    invoke-interface {v0, v1, p2, p3, p1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private setBold(II)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TextStyler;->mEditable:Landroid/text/Editable;

    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v2, 0x21

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private setForegroundColor(III)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TextStyler;->mEditable:Landroid/text/Editable;

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 p1, 0x21

    invoke-interface {v0, v1, p2, p3, p1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private setItalic(II)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TextStyler;->mEditable:Landroid/text/Editable;

    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v2, 0x21

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private setUnderLine(II)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TextStyler;->mEditable:Landroid/text/Editable;

    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/16 v2, 0x21

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method


# virtual methods
.method public setTextStyle(Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;II)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getType()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getForegroundColor()I

    move-result p1

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TextStyler;->getEndIndex(I)I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TextStyler;->setForegroundColor(III)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TextStyler;->setUnderLine(II)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TextStyler;->setItalic(II)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TextStyler;->setBold(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getBackgroundColor()I

    move-result p1

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TextStyler;->getEndIndex(I)I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TextStyler;->setBackgroundColor(III)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
