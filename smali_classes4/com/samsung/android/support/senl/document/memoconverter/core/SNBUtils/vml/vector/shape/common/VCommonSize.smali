.class public Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonSize;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mHeight:F

.field private mWidth:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonSize;->mWidth:F

    iput p2, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonSize;->mHeight:F

    return-void
.end method


# virtual methods
.method public getHeight()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonSize;->mHeight:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonSize;->mWidth:F

    return v0
.end method

.method public setHeight(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonSize;->mHeight:F

    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, ".*[,]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object v0, p1, v2

    invoke-static {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilString;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonSize;->setWidth(F)V

    aget-object p1, p1, v1

    :goto_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilString;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonSize;->setHeight(F)V

    goto :goto_1

    :cond_1
    const-string v0, ".*[ ]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object v0, p1, v2

    invoke-static {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilString;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonSize;->setWidth(F)V

    aget-object p1, p1, v1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public setWidth(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonSize;->mWidth:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size [mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonSize;->mWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonSize;->mHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
