.class abstract Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsIntegerSpan;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsSpan;
.source "SourceFile"


# instance fields
.field public value:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsSpan;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsIntegerSpan;->value:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsIntegerSpan;->value:I

    return v0
.end method

.method public setValue(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsIntegerSpan;->value:I

    return-void
.end method
