.class abstract Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsBooleanSpan;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsSpan;
.source "SourceFile"


# instance fields
.field public value:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsSpan;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsBooleanSpan;->value:Z

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getValue()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsBooleanSpan;->value:Z

    return v0
.end method

.method public setValue(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsBooleanSpan;->value:Z

    return-void
.end method

.method public toggleValue()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsBooleanSpan;->value:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsBooleanSpan;->value:Z

    return-void
.end method
