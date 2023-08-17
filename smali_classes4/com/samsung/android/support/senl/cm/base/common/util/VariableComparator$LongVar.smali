.class public Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$LongVar;
.super Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LongVar"
.end annotation


# instance fields
.field private value:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;-><init>(Ljava/lang/String;)V

    iput-wide p2, p0, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$LongVar;->value:J

    return-void
.end method


# virtual methods
.method public compare(J)Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$LongVar;->value:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getComparisonResult(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Ljava/lang/String;
    .locals 3

    instance-of v0, p1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$LongVar;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$LongVar;

    iget-wide v0, p1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$LongVar;->value:J

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$LongVar;->compare(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$LongVar;->value:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$LongVar;->value:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;->makeUnequalValueStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "different value"

    return-object p1
.end method

.method public getValue()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$LongVar;->value:J

    return-wide v0
.end method
