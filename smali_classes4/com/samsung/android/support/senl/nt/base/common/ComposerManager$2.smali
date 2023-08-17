.class Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IfStatement;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->getComposerToAddContent(I)Landroid/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;

.field public final synthetic val$callerTaskId:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$2;->this$0:Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$2;->val$callerTaskId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isMatched(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$2;->this$0:Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->a(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getTaskId()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$2;->val$callerTaskId:I

    if-eq v2, v3, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/AppTaskCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/AppTaskCompat;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/Activity;->getTaskId()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/AppTaskCompat;->isEqualTopActivity(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;->a(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;)Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposerResolver;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposerResolver;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposerResolver;->isCoeditNote()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method
