.class public Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$FloatVar;
.super Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FloatVar"
.end annotation


# instance fields
.field private value:F


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$FloatVar;->value:F

    return-void
.end method


# virtual methods
.method public compare(F)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$FloatVar;->value:F

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/DetourUtils;->equalFloatValues(FF)Z

    move-result p1

    return p1
.end method

.method public getComparisonResult(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Ljava/lang/String;
    .locals 1

    instance-of v0, p1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$FloatVar;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$FloatVar;

    iget v0, p1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$FloatVar;->value:F

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$FloatVar;->compare(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$FloatVar;->value:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$FloatVar;->value:F

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;->makeUnequalValueStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "different value"

    return-object p1
.end method

.method public getValue()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$FloatVar;->value:F

    return v0
.end method
