.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$InputValues;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputValues"
.end annotation


# instance fields
.field public mDirection:I

.field public mIndent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;

.field public mIndentParagraphArray:[Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;

.field public mIsPlus:Z

.field public mParagraphIndex:[I

.field public mSpenObjectShape:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;[ILcom/samsung/android/sdk/pen/document/SpenObjectShape;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$InputValues;->mIndent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$InputValues;->mParagraphIndex:[I

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$InputValues;->mSpenObjectShape:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    iput-boolean p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$InputValues;->mIsPlus:Z

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$InputValues;->mDirection:I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$InputValues;->mIndent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;->getSpenIndentLevelParagraphs([ILcom/samsung/android/sdk/pen/document/SpenObjectShape;)[Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$InputValues;->mIndentParagraphArray:[Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;

    return-void
.end method
