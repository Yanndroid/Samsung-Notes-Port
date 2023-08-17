.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputValues;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputValues"
.end annotation


# instance fields
.field public charSequence:Ljava/lang/CharSequence;

.field public clearSpace:Z

.field public converter:Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$IObjectSpanConverter;

.field public textBox:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

.field public textSb:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputValues;->textSb:Ljava/lang/StringBuilder;

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputValues;->charSequence:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputValues;->clearSpace:Z

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputValues;->converter:Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$IObjectSpanConverter;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputValues;->textBox:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    return-void
.end method
