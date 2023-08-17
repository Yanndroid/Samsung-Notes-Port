.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$ItemPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ItemPresenter"
.end annotation


# virtual methods
.method public abstract getAddedTemplatesFolder()Ljava/io/File;
.end method

.method public abstract getDefaultPdfTemplatesFolder()Ljava/io/File;
.end method

.method public abstract loadItemData()V
.end method

.method public abstract onCancelDelete()Z
.end method

.method public abstract onOpenTemplateEditor(Ljava/lang/String;II)V
.end method

.method public abstract updateAllItems()V
.end method
