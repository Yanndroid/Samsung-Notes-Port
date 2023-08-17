.class public Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;
.super Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntVar"
.end annotation


# instance fields
.field private value:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;->value:I

    return-void
.end method


# virtual methods
.method public compare(I)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;->value:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getComparisonResult(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Ljava/lang/String;
    .locals 1

    instance-of v0, p1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;

    iget v0, p1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;->value:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;->compare(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;->value:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;->makeUnequalValueStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "different value"

    return-object p1
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;->value:I

    return v0
.end method
