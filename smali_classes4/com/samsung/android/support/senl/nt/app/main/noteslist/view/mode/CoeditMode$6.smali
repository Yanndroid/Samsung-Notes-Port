.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditDialogDismiss()V
    .locals 0

    return-void
.end method

.method public onEditDialogResult(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo$CreateSpace;

    invoke-direct {p1, p3}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo$CreateSpace;-><init>(Ljava/lang/String;)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$6$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$6$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$6;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;->setActivityFinishedListener(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo$ActivityFinishedListener;)Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$6$2;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$6$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$6;Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;->setResultCallback(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;)Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;

    iget-object p2, p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;->mSessionConnector:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;->launchSocialPicker(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;)V

    return-void
.end method
