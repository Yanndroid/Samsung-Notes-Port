.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;->onCanUseChanged(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;

.field public final synthetic val$canUse:Z

.field public final synthetic val$cause:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController$2;->val$canUse:Z

    iput p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController$2;->val$cause:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController$2;->val$canUse:Z

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController$2;->val$cause:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;->onCanUseChanged(ZI)V

    return-void
.end method
