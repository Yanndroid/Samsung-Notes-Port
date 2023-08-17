.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputBuilder"
.end annotation


# instance fields
.field private inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputValues;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputValues;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputValues;-><init>(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputBuilder;->inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputValues;

    return-void
.end method


# virtual methods
.method public done()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputValues;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputBuilder;->inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputValues;

    return-object v0
.end method

.method public setCharSequence(Ljava/lang/CharSequence;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputBuilder;->inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputValues;

    iput-object p1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputValues;->charSequence:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setClearSpace(Z)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputBuilder;->inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputValues;

    iput-boolean p1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputValues;->clearSpace:Z

    return-object p0
.end method

.method public setConverter(Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$IObjectSpanConverter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputBuilder;->inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputValues;

    iput-object p1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputValues;->converter:Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$IObjectSpanConverter;

    return-object p0
.end method

.method public setTextSb(Ljava/lang/StringBuilder;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputBuilder;->inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputValues;

    iput-object p1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputValues;->textSb:Ljava/lang/StringBuilder;

    return-object p0
.end method
