.class public Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;
.super Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BoolVar"
.end annotation


# instance fields
.field private value:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;-><init>(Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;->value:Z

    return-void
.end method


# virtual methods
.method public compare(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;->value:Z

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

    instance-of v0, p1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;

    iget-boolean v0, p1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;->value:Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;->compare(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;->value:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iget-boolean p1, p1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;->value:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;->makeUnequalValueStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "different value"

    return-object p1
.end method

.method public getValue()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;->value:Z

    return v0
.end method
