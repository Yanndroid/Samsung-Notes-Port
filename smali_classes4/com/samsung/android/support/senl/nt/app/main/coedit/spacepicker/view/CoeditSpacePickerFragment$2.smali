.class Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;

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

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo$CreateSpace;

    invoke-direct {p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo$CreateSpace;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;->b(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;)Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;->setResultCallback(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;)Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;->e(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;->c(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;)Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;->a(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;)Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;->launchSocialPicker(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;->g(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;I)V

    return-void
.end method
