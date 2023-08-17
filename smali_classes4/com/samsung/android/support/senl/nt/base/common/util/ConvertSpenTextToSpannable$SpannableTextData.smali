.class final Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpannableTextData"
.end annotation


# instance fields
.field private final mCarriageReturnCount:I

.field private mObjectSpanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

.field private final mSpenObjectShape:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

.field private mSpenTextParagraphList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;",
            ">;"
        }
    .end annotation
.end field

.field private mSpenTextSpanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mSplitStringIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;ILcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;)V
    .locals 3
    .param p1    # Lcom/samsung/android/sdk/pen/document/SpenObjectShape;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->mSplitStringIndex:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->mSpenObjectShape:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;->getSpanText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->mText:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;->createSpannableStringBuilder(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-string p2, "[\n]"

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->mCarriageReturnCount:I

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    array-length p3, p1

    move v0, p2

    :goto_0
    if-ge p2, p3, :cond_0

    aget-object v1, p1, p2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->mSplitStringIndex:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public adjustObjectSpanPosition(II)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->getObjectSpanList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->getTextIndex()I

    move-result v2

    if-ge p1, v2, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->getObject()Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->getTextIndex()I

    move-result v3

    add-int/2addr v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->set(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getCarriageReturnCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->mCarriageReturnCount:I

    return v0
.end method

.method public getObjectSpanList()Ljava/util/List;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->mObjectSpanList:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->mSpenObjectShape:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->findObjectSpan(II)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->mObjectSpanList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->mObjectSpanList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->mObjectSpanList:Ljava/util/List;

    return-object v0
.end method

.method public getSpannableStringBuilder()Landroid/text/SpannableStringBuilder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public getSpenTextSpanList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->mSpenTextSpanList:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->mSpenObjectShape:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->findTextSpan(II)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->mSpenTextSpanList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->mSpenTextSpanList:Ljava/util/List;

    return-object v0
.end method

.method public getSplitStringIndex()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->mSplitStringIndex:Ljava/util/List;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextParagraph()Ljava/util/List;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->mSpenTextParagraphList:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->mSpenObjectShape:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->getCarriageReturnCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->findTextParagraph(II)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->mSpenTextParagraphList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->mSpenTextParagraphList:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    return-object v0
.end method
