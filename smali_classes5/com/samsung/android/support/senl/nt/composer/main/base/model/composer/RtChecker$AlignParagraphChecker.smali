.class Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$AlignParagraphChecker;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ParagraphChecker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlignParagraphChecker"
.end annotation


# instance fields
.field public before:Lcom/samsung/android/sdk/pen/document/textspan/SpenAlignmentParagraph;

.field private final defaultAlign:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ParagraphChecker;-><init>(II)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$AlignParagraphChecker;->before:Lcom/samsung/android/sdk/pen/document/textspan/SpenAlignmentParagraph;

    iput p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$AlignParagraphChecker;->defaultAlign:I

    return-void
.end method


# virtual methods
.method public checkParagraph(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;)I
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ParagraphChecker;->enable:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getStart()I

    move-result v0

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ParagraphChecker;->selectionPStart:I

    check-cast p1, Lcom/samsung/android/sdk/pen/document/textspan/SpenAlignmentParagraph;

    if-ne v0, v2, :cond_1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$AlignParagraphChecker;->before:Lcom/samsung/android/sdk/pen/document/textspan/SpenAlignmentParagraph;

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$AlignParagraphChecker;->before:Lcom/samsung/android/sdk/pen/document/textspan/SpenAlignmentParagraph;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenAlignmentParagraph;->getAlignment()I

    move-result v0

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$AlignParagraphChecker;->defaultAlign:I

    if-ne v0, v2, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$AlignParagraphChecker;->before:Lcom/samsung/android/sdk/pen/document/textspan/SpenAlignmentParagraph;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenAlignmentParagraph;->getAlignment()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenAlignmentParagraph;->getAlignment()I

    move-result v2

    if-eq v0, v2, :cond_4

    :cond_3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ParagraphChecker;->enable:Z

    return p1

    :cond_4
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$AlignParagraphChecker;->before:Lcom/samsung/android/sdk/pen/document/textspan/SpenAlignmentParagraph;

    return v1
.end method

.method public getResult()I
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ParagraphChecker;->enable:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$AlignParagraphChecker;->before:Lcom/samsung/android/sdk/pen/document/textspan/SpenAlignmentParagraph;

    if-nez v0, :cond_1

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$AlignParagraphChecker;->defaultAlign:I

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getEnd()I

    move-result v0

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ParagraphChecker;->selectionPEnd:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$AlignParagraphChecker;->before:Lcom/samsung/android/sdk/pen/document/textspan/SpenAlignmentParagraph;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenAlignmentParagraph;->getAlignment()I

    move-result v1

    :cond_2
    :goto_0
    return v1
.end method
