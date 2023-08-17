.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat$FolderStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->initVerticalHalfOpened()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;

.field public final synthetic val$foldDirection:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$1;->val$foldDirection:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;Z)V

    return-void
.end method

.method public onSuccess(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$1;->val$foldDirection:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;Z)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;

    const/4 v0, 0x0

    goto :goto_0
.end method
