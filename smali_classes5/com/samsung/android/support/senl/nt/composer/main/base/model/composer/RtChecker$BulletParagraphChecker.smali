.class Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$BulletParagraphChecker;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ParagraphChecker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BulletParagraphChecker"
.end annotation


# instance fields
.field public before:Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ParagraphChecker;-><init>(II)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$BulletParagraphChecker;->before:Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;

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

    check-cast p1, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;

    if-ne v0, v2, :cond_1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$BulletParagraphChecker;->before:Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$BulletParagraphChecker;->before:Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;->getBulletType()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;->getBulletType()I

    move-result v2

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$BulletParagraphChecker;->before:Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;

    return v1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ParagraphChecker;->enable:Z

    return p1
.end method

.method public getResult()I
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ParagraphChecker;->enable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$BulletParagraphChecker;->before:Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getEnd()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ParagraphChecker;->selectionPEnd:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$BulletParagraphChecker;->before:Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;->getBulletType()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
