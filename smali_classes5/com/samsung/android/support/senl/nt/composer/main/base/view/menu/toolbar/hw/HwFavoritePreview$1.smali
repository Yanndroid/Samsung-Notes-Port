.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview;

    const-string v1, "dismissPreviewThread"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwFavoritePreview;Ljava/lang/String;)V

    return-void
.end method
