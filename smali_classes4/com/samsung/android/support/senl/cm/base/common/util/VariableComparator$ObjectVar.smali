.class public Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$ObjectVar;
.super Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObjectVar"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;"
    }
.end annotation


# instance fields
.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TE;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$ObjectVar;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$ObjectVar;->value:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getComparisonResult(Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$Variable;)Ljava/lang/String;
    .locals 1

    instance-of v0, p1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$ObjectVar;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$ObjectVar;

    iget-object p1, p1, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$ObjectVar;->value:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$ObjectVar;->compare(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p1, "different value"

    return-object p1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/common/util/VariableComparator$ObjectVar;->value:Ljava/lang/Object;

    return-object v0
.end method
