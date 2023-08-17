.class public Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private value:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;->value:Z

    return-void
.end method


# virtual methods
.method public booleanValue()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;->value:Z

    return v0
.end method

.method public compareTo(Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;->value:Z

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;->booleanValue()Z

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isFalse()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;->value:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isTrue()Z
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;->value:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setValue(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;->value:Z

    return-void
.end method
