.class Lcom/samsung/android/support/senl/nt/composer/main/nativecomposer/NativeComposerTriggerActivity$2;
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


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/nativecomposer/NativeComposerTriggerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/nativecomposer/NativeComposerTriggerActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/nativecomposer/NativeComposerTriggerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/nativecomposer/NativeComposerTriggerActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/nativecomposer/NativeComposerTriggerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
