.class public Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final COLLATOR:Ljava/text/Collator;

.field private static final MAX_LOOP_COUNT:I = 0x64

.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "NameComparator"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator;->COLLATOR:Ljava/text/Collator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static compareChar(CC)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator;->COLLATOR:Ljava/text/Collator;

    invoke-virtual {v0, p0, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private compareToIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator;->COLLATOR:Ljava/text/Collator;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator;->compareName(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compareName(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11

    const-string v0, "\\s+"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;

    invoke-direct {v3, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->findNumberIndex()V

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->findNumberIndex()V

    iget-boolean v5, v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mCharIsDigit:Z

    const/4 v6, 0x1

    const/4 v7, -0x1

    if-nez v5, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->isEnd()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iget-boolean v5, v3, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mCharIsDigit:Z

    if-nez v5, :cond_8

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->isEnd()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v5, v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mCharIsDigit:Z

    if-nez v5, :cond_9

    iget-boolean v5, v3, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mCharIsDigit:Z

    if-nez v5, :cond_9

    iget v5, v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mNumberIndexStart:I

    if-eq v5, v7, :cond_4

    iget v8, v3, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mNumberIndexStart:I

    if-eq v8, v7, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->updateNumber()V

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->updateNumber()V

    iget-wide v7, v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mNumber:D

    iget-wide v9, v3, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mNumber:D

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Double;->compare(DD)I

    move-result v5

    if-eqz v5, :cond_3

    return v5

    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->clearIndex()V

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->clearIndex()V

    goto :goto_0

    :cond_4
    if-eq v5, v7, :cond_5

    return v7

    :cond_5
    iget v5, v3, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mNumberIndexStart:I

    if-eq v5, v7, :cond_6

    return v6

    :cond_6
    :goto_0
    iget-char v5, v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mChar:C

    iget-char v7, v3, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mChar:C

    invoke-static {v5, v7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator;->compareChar(CC)I

    move-result v5

    if-eqz v5, :cond_7

    return v5

    :cond_7
    iget v5, v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mIndex:I

    add-int/2addr v5, v6

    iput v5, v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mIndex:I

    iget v5, v3, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mIndex:I

    add-int/2addr v5, v6

    iput v5, v3, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mIndex:I

    goto :goto_2

    :cond_8
    :goto_1
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->isEnd()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->isEnd()Z

    move-result v5

    if-eqz v5, :cond_9

    iget v5, v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mNumberIndexStart:I

    if-eq v5, v7, :cond_9

    iget v5, v3, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mNumberIndexStart:I

    if-eq v5, v7, :cond_9

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->compare(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;)I

    move-result p1

    return p1

    :cond_9
    :goto_2
    add-int/2addr v4, v6

    const/16 v5, 0x64

    if-ge v4, v5, :cond_a

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->isEnd()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->isEnd()Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_a
    if-lt v4, v5, :cond_c

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->isEnd()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->isEnd()Z

    move-result v4

    if-nez v4, :cond_c

    :cond_b
    sget-object v4, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal exit loop item1 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mLength:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mIndex:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal exit loop item2 : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mLength:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator$NameComparatorItem;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/NameComparator;->compareToIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
