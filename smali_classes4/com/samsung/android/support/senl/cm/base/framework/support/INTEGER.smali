.class public Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private value:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;->value:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;->value:I

    check-cast p1, Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;->intValue()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;->value:I

    return v0
.end method

.method public setValue(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;->value:I

    return-void
.end method
