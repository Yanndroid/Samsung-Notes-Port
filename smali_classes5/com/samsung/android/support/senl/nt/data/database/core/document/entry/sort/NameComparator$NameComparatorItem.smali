.class Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NameComparatorItem"
.end annotation


# instance fields
.field public mChar:C

.field public mCharIsDigit:Z

.field public mIndex:I

.field public mLength:I

.field public mName:Ljava/lang/String;

.field public mNumber:D

.field public mNumberIndexEnd:I

.field public mNumberIndexStart:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mNumberIndexStart:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mNumberIndexEnd:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mIndex:I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0xffff

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mLength:I

    return-void
.end method


# virtual methods
.method public clearIndex()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mNumberIndexEnd:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mNumberIndexStart:I

    return-void
.end method

.method public compare(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;)I
    .locals 7

    const-string v0, "compare, e : "

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mName:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mNumberIndexStart:I

    iget v3, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mLength:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mNumber:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v2, p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mName:Ljava/lang/String;

    iget v3, p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mNumberIndexStart:I

    iget v4, p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mLength:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :try_start_1
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mNumber:D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-wide v3, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mNumber:D

    iget-wide v5, p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mNumber:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    :cond_0
    return p1
.end method

.method public findNumberIndex()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mIndex:I

    iget v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mLength:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-char v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mChar:C

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mCharIsDigit:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mNumberIndexStart:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mIndex:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mNumberIndexStart:I

    :cond_1
    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mIndex:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mNumberIndexStart:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mIndex:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mNumberIndexEnd:I

    :cond_3
    :goto_1
    return-void
.end method

.method public isEnd()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mIndex:I

    iget v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mLength:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateNumber()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mName:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mNumberIndexStart:I

    iget v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mNumberIndexEnd:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mNumber:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNumber, e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
