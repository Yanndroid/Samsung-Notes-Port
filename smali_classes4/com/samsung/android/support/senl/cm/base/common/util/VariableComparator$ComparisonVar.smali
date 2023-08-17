.class public Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$ComparisonVar;
.super Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComparisonVar"
.end annotation


# instance fields
.field private value:Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Comparison;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Comparison;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$ComparisonVar;->value:Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Comparison;

    return-void
.end method


# virtual methods
.method public getComparisonResult(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Ljava/lang/String;
    .locals 1

    instance-of v0, p1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$ComparisonVar;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$ComparisonVar;

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$ComparisonVar;->value:Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Comparison;

    iget-object p1, p1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$ComparisonVar;->value:Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Comparison;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Comparison;->IsSame(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p1, "different value"

    return-object p1
.end method
