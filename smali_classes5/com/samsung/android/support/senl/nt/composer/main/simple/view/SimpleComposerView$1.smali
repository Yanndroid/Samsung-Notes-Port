.class Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->iniSpenDvfsInterface(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->a(Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;)Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;->acquire()Z

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->a(Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;)Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;->release()Z

    return-void
.end method
