.class public Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/DialogCreator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogContract;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFolderPickerDialog(Ljava/util/Map;ZLcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialogResult;)Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;Z",
            "Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialogResult;",
            ")",
            "Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialog;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;-><init>(Ljava/util/Map;Z)V

    invoke-virtual {v0, p3}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->setPickerDialogListener(Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialogResult;)V

    return-object v0
.end method
