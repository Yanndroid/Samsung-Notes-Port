.class public Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/PdfWriterActivity;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/BaseComposerActivity;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/IPwInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/BaseComposerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public createFragment()Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/PwFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/PwFragment;-><init>()V

    return-object v0
.end method
