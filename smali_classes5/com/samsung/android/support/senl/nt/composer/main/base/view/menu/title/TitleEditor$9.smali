.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;->updateTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor$9;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor$9;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getTitleView()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->setTitle()V

    return-void
.end method
