.class Lcom/samsung/android/support/senl/nt/composer/main/nativecomposer/NativeComposerTriggerActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/nativecomposer/NativeComposerTriggerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/nativecomposer/NativeComposerTriggerActivity;

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/nativecomposer/NativeComposerTriggerActivity;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/nativecomposer/NativeComposerTriggerActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/nativecomposer/NativeComposerTriggerActivity;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/nativecomposer/NativeComposerTriggerActivity$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/nativecomposer/NativeComposerTriggerActivity$1;->val$intent:Landroid/content/Intent;

    const-string v1, "app_need_to_check_keyguard"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/nativecomposer/NativeComposerTriggerActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/nativecomposer/NativeComposerTriggerActivity;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/nativecomposer/NativeComposerTriggerActivity$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
