.class public final synthetic Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSDocMode;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSDocMode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/a;->a:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSDocMode;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/a;->a:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSDocMode;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSDocMode;->requestImportListRunner()V

    return-void
.end method
