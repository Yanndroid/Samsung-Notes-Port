.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextBoxData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDefaultAlign:I

.field private mDefaultFontColor:I

.field private mDefaultFontSize:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextBoxData;->mDefaultFontSize:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextBoxData;->mDefaultAlign:I

    iput p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextBoxData;->mDefaultFontColor:I

    return-void
.end method


# virtual methods
.method public getDefaultAlign()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextBoxData;->mDefaultAlign:I

    return v0
.end method

.method public getDefaultFontColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextBoxData;->mDefaultFontColor:I

    return v0
.end method

.method public getDefaultFontSize()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextBoxData;->mDefaultFontSize:I

    return v0
.end method
