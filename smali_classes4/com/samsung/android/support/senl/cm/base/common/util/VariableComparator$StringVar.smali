.class public Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$StringVar;
.super Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringVar"
.end annotation


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$StringVar;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$StringVar;->value:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public getComparisonResult(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Ljava/lang/String;
    .locals 1

    instance-of v0, p1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$StringVar;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$StringVar;

    iget-object v0, p1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$StringVar;->value:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$StringVar;->compare(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$StringVar;->value:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$StringVar;->value:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;->makeUnequalValueStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "different value"

    return-object p1
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$StringVar;->value:Ljava/lang/String;

    return-object v0
.end method
