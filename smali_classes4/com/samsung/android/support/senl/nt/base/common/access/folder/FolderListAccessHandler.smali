.class public Lcom/samsung/android/support/senl/nt/base/common/access/folder/FolderListAccessHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static FOLDER_LIST_CLASS:Ljava/lang/Class; = null

.field private static FOLDER_PICKER_DIALOG_CLASS:Ljava/lang/Class; = null

.field private static final TAG:Ljava/lang/String; = "FolderListAccessHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFolderListClass()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/folder/FolderListAccessHandler;->FOLDER_LIST_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public static getFolderPickerDialogClass()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/folder/FolderListAccessHandler;->FOLDER_PICKER_DIALOG_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public static setFolderListClass(Ljava/lang/Class;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/folder/FolderListAccessHandler;->FOLDER_LIST_CLASS:Ljava/lang/Class;

    const-string v1, "FolderListAccessHandler"

    if-nez v0, :cond_0

    sput-object p0, Lcom/samsung/android/support/senl/nt/base/common/access/folder/FolderListAccessHandler;->FOLDER_LIST_CLASS:Ljava/lang/Class;

    const-string p0, "setFolderListClass."

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "setFolderListClass, twice access! only first trial is accepted"

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setFolderPickerDialogClass(Ljava/lang/Class;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/folder/FolderListAccessHandler;->FOLDER_PICKER_DIALOG_CLASS:Ljava/lang/Class;

    const-string v1, "FolderListAccessHandler"

    if-nez v0, :cond_0

    sput-object p0, Lcom/samsung/android/support/senl/nt/base/common/access/folder/FolderListAccessHandler;->FOLDER_PICKER_DIALOG_CLASS:Ljava/lang/Class;

    const-string p0, "setFolderPickerDialogClass."

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "setFolderPickerDialogClass, twice access! only first trial is accepted"

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
