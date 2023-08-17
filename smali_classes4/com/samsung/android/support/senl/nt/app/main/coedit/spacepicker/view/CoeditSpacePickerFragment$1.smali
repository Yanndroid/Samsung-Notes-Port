.class Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 2

    const-string v0, "CoeditSpacePickerFragment"

    const-string v1, "CoeditCreateResult# onFail#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;->g(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;I)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string p3, "CoeditSpacePickerFragment"

    const-string v0, "CoeditCreateResult# onSuccess#"

    invoke-static {p3, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;

    invoke-static {p3, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;->f(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
