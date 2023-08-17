.class Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$IndentParagraphChecker;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ParagraphChecker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndentParagraphChecker"
.end annotation


# instance fields
.field public indentLevel:Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ParagraphChecker;-><init>(II)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$IndentParagraphChecker;->indentLevel:Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;

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
    check-cast p1, Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$IndentParagraphChecker;->indentLevel:Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;->getIndentLevel()I

    move-result p1

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$IndentParagraphChecker;->indentLevel:Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;->getIndentLevel()I

    move-result p1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$IndentParagraphChecker;->indentLevel:Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;->setValue(I)V

    iput-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ParagraphChecker;->enable:Z

    :cond_2
    return v2
.end method

.method public getResult()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$IndentParagraphChecker;->indentLevel:Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method
