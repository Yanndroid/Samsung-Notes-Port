.class public interface abstract Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialog$OnFolderSelectedListener;
    }
.end annotation


# static fields
.field public static final FOLDER_PICKER_DIALOG:Ljava/lang/String; = "folder_picker_dialog"


# virtual methods
.method public abstract setAnchorViewId(I)V
.end method

.method public abstract setAnchorViewId(Landroidx/appcompat/app/AlertDialog;I)V
.end method

.method public abstract setFolderSelectedListener(Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialog$OnFolderSelectedListener;)V
.end method

.method public abstract setHighlightFolderUuid(Ljava/lang/String;)V
.end method

.method public abstract setPickerDialogData(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setPickerDialogData(Ljava/util/ArrayList;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation
.end method

.method public abstract setPickerDialogListener(Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialogResult;)V
.end method

.method public abstract show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
