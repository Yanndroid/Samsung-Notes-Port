.class public Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$RectVar;
.super Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RectVar"
.end annotation


# instance fields
.field private value:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/RectF;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$RectVar;->value:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public compare(Landroid/graphics/RectF;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$RectVar;->value:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getComparisonResult(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Ljava/lang/String;
    .locals 1

    instance-of v0, p1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$RectVar;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$RectVar;

    iget-object v0, p1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$RectVar;->value:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$RectVar;->compare(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$RectVar;->value:Landroid/graphics/RectF;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$RectVar;->value:Landroid/graphics/RectF;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;->makeUnequalValueStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "different value"

    return-object p1
.end method

.method public getValue()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$RectVar;->value:Landroid/graphics/RectF;

    return-object v0
.end method
