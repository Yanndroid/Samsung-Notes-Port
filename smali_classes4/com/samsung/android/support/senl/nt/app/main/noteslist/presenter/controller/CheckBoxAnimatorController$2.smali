.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/CheckBoxAnimatorController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/CheckBoxAnimatorController;->setCheckBoxState(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/CheckBoxAnimatorController;

.field public final synthetic val$holderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/CheckBoxAnimatorController;Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/CheckBoxAnimatorController$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/CheckBoxAnimatorController;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/CheckBoxAnimatorController$2;->val$holderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/CheckBoxAnimatorController$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/CheckBoxAnimatorController;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/CheckBoxAnimatorController$2;->val$holderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/CheckBoxAnimatorController;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/CheckBoxAnimatorController;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/CheckBoxAnimatorController$CheckBoxAnimatorControllerListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/CheckBoxAnimatorController$CheckBoxAnimatorControllerListener;->getModeIndex()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isEditMode(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/CheckBoxAnimatorController;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/controller/CheckBoxAnimatorController;Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;IZ)V

    return-void
.end method
