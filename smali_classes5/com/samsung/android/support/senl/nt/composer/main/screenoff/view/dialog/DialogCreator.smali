.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/DialogCreator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogContract$IDialogCreator;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "DialogCreator"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/DialogCreator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSaveNoteDialogPresenter(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogContract$ISaveNoteDialogPresenter;)Landroid/app/Dialog;
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/DialogCreator;->TAG:Ljava/lang/String;

    const-string v1, "createSaveNoteDialogPresenter"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SaveNoteDialog;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SaveNoteDialog;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogContract$ISaveNoteDialogPresenter;)V

    return-object v0
.end method

.method public createSelectNoteDialogPresenter(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogContract$ISelectNoteDialogPresenter;)Landroid/app/Dialog;
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/DialogCreator;->TAG:Ljava/lang/String;

    const-string v1, "createSelectNoteDialogPresenter"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SelectNoteDialog;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SelectNoteDialog;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogContract$ISelectNoteDialogPresenter;)V

    return-object v0
.end method
