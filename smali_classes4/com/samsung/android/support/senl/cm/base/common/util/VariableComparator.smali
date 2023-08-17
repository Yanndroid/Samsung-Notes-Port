.class public Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$ComparisonVar;,
        Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$ObjectVar;,
        Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$RectVar;,
        Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$StringVar;,
        Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$DoubleVar;,
        Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$FloatVar;,
        Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$LongVar;,
        Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$IntVar;,
        Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$BoolVar;,
        Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;,
        Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;,
        Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Comparison;,
        Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Collector;
    }
.end annotation


# static fields
.field public static final RESULT_DIFFERENT_VAIABLE:Ljava/lang/String; = "different value"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Collector;Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Collector;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Collector;->collectVariables()Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object p0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Collector;->collectVariables()Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$List;

    move-result-object p1

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;

    invoke-virtual {v0, v2, p2}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;->isSame(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_0
    return v1
.end method
